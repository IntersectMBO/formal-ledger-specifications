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
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
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
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Epoch
d_Epoch_152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_152 = erased
-- _.GovActionID
d_GovActionID_160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_160 = erased
-- _.GovActionState
d_GovActionState_162 a0 = ()
-- _.GovProposal
d_GovProposal_166 a0 = ()
-- _.GovVote
d_GovVote_170 a0 = ()
-- _.Tx
d_Tx_370 a0 = ()
-- _.epoch
d_epoch_440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_440 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
-- _.GovActionState.action
d_action_680 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_680 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_682 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_expiresIn_682 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_818 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_684 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_prevAction_684 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_822 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_686 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_686 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v0)
-- _.GovActionState.votes
d_votes_688 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_688 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_814 (coe v0)
-- _.GovProposal.action
d_action_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_720 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_790 (coe v0)
-- _.GovProposal.anchor
d_anchor_722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_722 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_800 (coe v0)
-- _.GovProposal.deposit
d_deposit_724 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> Integer
d_deposit_724 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_796 (coe v0)
-- _.GovProposal.policy
d_policy_726 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Maybe AgdaAny
d_policy_726 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_794 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_728 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> AgdaAny
d_prevAction_728 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_792 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_730 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_730 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_798 (coe v0)
-- _.GovVote.anchor
d_anchor_742 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_742 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- _.GovVote.gid
d_gid_744 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_744 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_768 (coe v0)
-- _.GovVote.vote
d_vote_746 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
d_vote_746 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_772 (coe v0)
-- _.GovVote.voter
d_voter_748 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_748 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_770 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_772 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_776 a0 = ()
-- _.Tx.body
d_body_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_body_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0)
-- _.Tx.isValid
d_isValid_1404 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Bool
d_isValid_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v0)
-- _.Tx.txAD
d_txAD_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Maybe AgdaAny
d_txAD_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2686 (coe v0)
-- _.Tx.wits
d_wits_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650
d_wits_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v0)
-- _.CertEnv
d_CertEnv_1526 a0 = ()
-- _.DCert
d_DCert_1532 a0 = ()
-- _.DepositPurpose
d_DepositPurpose_1550 a0 = ()
-- _.Deposits
d_Deposits_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Deposits_1552 = erased
-- _.certDeposit
d_certDeposit_1592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1592 ~v0 = du_certDeposit_1592
du_certDeposit_1592 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1592 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100 v0
-- _.certRefund
d_certRefund_1594 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
d_certRefund_1594 ~v0 = du_certRefund_1594
du_certRefund_1594 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
du_certRefund_1594
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1110
-- _.CertEnv.epoch
d_epoch_1662 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_888 -> AgdaAny
d_epoch_1662 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_898 (coe v0)
-- _.CertEnv.pp
d_pp_1664 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_1664 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_900 (coe v0)
-- _.CertEnv.votes
d_votes_1666 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_votes_1666 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_902 (coe v0)
-- _.CertEnv.wdrls
d_wdrls_1668 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1668 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_904 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2030 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.EpochState
d_EpochState_2038 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.EpochState.acnt
d_acnt_2096 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2296 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_acnt_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2308 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.EpochState.es
d_es_2098 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2296 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_es_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2314 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.EpochState.fut
d_fut_2100 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2296 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006
d_fut_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2316 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.EpochState.ls
d_ls_2102 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2296 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158
d_ls_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2312 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.EpochState.ss
d_ss_2104 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2296 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276
d_ss_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2310 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-CERT
d_Computational'45'CERT_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2144 v0 ~v1
  = du_Computational'45'CERT_2144 v0
du_Computational'45'CERT_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'CERT_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1422
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-CERTBASE
d_Computational'45'CERTBASE_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2146 v0 ~v1
  = du_Computational'45'CERTBASE_2146 v0
du_Computational'45'CERTBASE_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'CERTBASE_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_1812
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__2168 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv
d_GovEnv_2178 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.GovState
d_GovState_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 -> ()
d_GovState_2180 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.enactState
d_enactState_2246 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1024 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1044
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.epoch
d_epoch_2248 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1024 -> AgdaAny
d_epoch_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1038 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.pparams
d_pparams_2250 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1024 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1040 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.ppolicy
d_ppolicy_2252 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1024 ->
  Maybe AgdaAny
d_ppolicy_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_1042 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.txid
d_txid_2254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1024 -> AgdaAny
d_txid_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_1036 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-GOV'
d_Computational'45'GOV''_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV''_2268 v0 ~v1
  = du_Computational'45'GOV''_2268 v0
du_Computational'45'GOV''_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'GOV''_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties.d_Computational'45'GOV''_1352
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2670] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2274 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2276 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv
d_LEnv_2282 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LState
d_LState_2284 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.txgov
d_txgov_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2286 ~v0 ~v1 = du_txgov_2286
du_txgov_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2286
  = coe MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du_txgov_2174
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.enactState
d_enactState_2300 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_enactState_2152
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.pparams
d_pparams_2302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2150
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.ppolicy
d_ppolicy_2304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  Maybe AgdaAny
d_ppolicy_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_ppolicy_2148
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.slot
d_slot_2306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  AgdaAny
d_slot_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2146 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.treasury
d_treasury_2308 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  Integer
d_treasury_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_treasury_2154
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.certState
d_certState_2312 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084
d_certState_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2170
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.govSt
d_govSt_2314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.utxoSt
d_utxoSt_2316 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1978
d_utxoSt_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv
d_UTxOEnv_2466 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.updateCertDeposits
d_updateCertDeposits_2514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2514 v0 ~v1 = du_updateCertDeposits_2514 v0
du_updateCertDeposits_2514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2514 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
      (coe v0) v2 v3
-- Ledger.Conway.Conformance.Ledger.Properties._.updateProposalDeposits
d_updateProposalDeposits_2520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2520 v0 ~v1
  = du_updateProposalDeposits_2520 v0
du_updateProposalDeposits_2520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.pparams
d_pparams_2556 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1964 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1974 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.slot
d_slot_2558 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1964 ->
  AgdaAny
d_slot_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_slot_1972 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.treasury
d_treasury_2560 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1964 ->
  Integer
d_treasury_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_treasury_1976
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2594 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties.Computational-LEDGER
d_Computational'45'LEDGER_2660 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_2660 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2792 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Ledger.Properties._.computeUtxow
d_computeUtxow_2686 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeUtxow_2686 ~v0 ~v1 ~v2 v3 = du_computeUtxow_2686 v3
du_computeUtxow_2686 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeUtxow_2686 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.computeCerts
d_computeCerts_2688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeCerts_2688 ~v0 ~v1 ~v2 v3 = du_computeCerts_2688 v3
du_computeCerts_2688 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeCerts_2688 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.computeGov
d_computeGov_2690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1024 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeGov_2690 ~v0 ~v1 ~v2 v3 = du_computeGov_2690 v3
du_computeGov_2690 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1024 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeGov_2690 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.utxoΓ
d_utxoΓ_2770 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1964
d_utxoΓ_2770 ~v0 ~v1 v2 ~v3 ~v4 = du_utxoΓ_2770 v2
du_utxoΓ_2770 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1964
du_utxoΓ_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_UTxOEnv'46'constructor_10057
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2146 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2150
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_treasury_2154
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.certΓ
d_certΓ_2786 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888
d_certΓ_2786 v0 ~v1 v2 ~v3 v4 = du_certΓ_2786 v0 v2 v4
du_certΓ_2786 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888
du_certΓ_2786 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580'_906
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
         (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2146
            (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2150
         (coe v1))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txvote_2626
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.govΓ
d_govΓ_2788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1024
d_govΓ_2788 v0 ~v1 v2 ~v3 v4 = du_govΓ_2788 v0 v2 v4
du_govΓ_2788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1024
du_govΓ_2788 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1046
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txid_2642
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
         (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2146
            (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2150
         (coe v1))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_ppolicy_2148
         (coe v1))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_enactState_2152
         (coe v1))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.computeProof
d_computeProof_2792 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2792 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3082
              (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v4))
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
                                 du_computeUtxow_2686
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_1730
                                    (coe v0) (coe v1))
                                 (coe du_utxoΓ_2770 (coe v2))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
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
                                             du_computeCerts_2688
                                             (coe
                                                MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_1812
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1422
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                                             (coe du_certΓ_2786 (coe v0) (coe v2) (coe v4))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2170
                                                (coe v3))
                                             (MAlonzo.Code.Ledger.Transaction.d_txcerts_2622
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2680
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
                                                         du_computeGov_2690
                                                         (coe
                                                            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1100
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties.d_Computational'45'GOV''_1352
                                                               (coe v0))
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                                                         (coe
                                                            du_govΓ_2788 (coe v0) (coe v2) (coe v4))
                                                         (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168
                                                            (coe v3))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du_txgov_2174
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                               (coe v4))))
                                                      (\ v15 ->
                                                         case coe v15 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                             -> coe
                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2172
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1996
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1988
                                                                              (coe v10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1990
                                                                              (coe v10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateDeposits_1912
                                                                              (coe v0)
                                                                              (let v18
                                                                                     = coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_6717
                                                                                         (coe v3)
                                                                                         (coe v4)
                                                                                         (coe v2)
                                                                                         (coe v10)
                                                                                         (coe v13)
                                                                                         (coe
                                                                                            v16) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2150
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45'Γ_6707
                                                                                       (coe v18))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                                                 (coe v10)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1994
                                                                              (coe v10)))
                                                                        (coe v16) (coe v13))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LEDGER'45'V_2322
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
                             du_computeUtxow_2686
                             (MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_1730
                                (coe v0) (coe v1))
                             (coe du_utxoΓ_2770 (coe v2))
                             (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
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
                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2172
                                            (coe v9)
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_7137
                                                       (coe v3) (coe v4) (coe v2) (coe v9) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45's_7127
                                                     (coe v11))))
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_7137
                                                       (coe v3) (coe v4) (coe v2) (coe v9) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2170
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45's_7127
                                                     (coe v11)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LEDGER'45'I_2402
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                               (coe v10))))
                               _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.completeness
d_completeness_2826 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__2240 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2826 = erased
-- Ledger.Conway.Conformance.Ledger.Properties.Computational-LEDGERS
d_Computational'45'LEDGERS_2996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGERS_2996 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'LEDGER_2660 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
-- Ledger.Conway.Conformance.Ledger.Properties.HasCoin-LState
d_HasCoin'45'LState_2998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'LState_2998 v0 ~v1 = du_HasCoin'45'LState_2998 v0
du_HasCoin'45'LState_2998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'LState_2998 v0
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
                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_cbalance_2116
                       (coe v0)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1988
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                             (coe v1))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1994
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                          (coe v1))))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1990
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                       (coe v1))))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                 (let v2
                        = MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0) in
                  coe
                    (coe
                       MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848 (coe v2)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                 (coe (\ v2 -> v2))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                       (coe v1))))))
-- Ledger.Conway.Conformance.Ledger.Properties._.FreshTx
d_FreshTx_3016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 -> ()
d_FreshTx_3016 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.FreshTxs
d_FreshTxs_3026 a0 a1 a2 a3 a4 = ()
data T_FreshTxs_3026
  = C_'91''93''45'Fresh_3028 |
    C_'8759''45'Fresh_3030 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__2240
                           T_FreshTxs_3026
-- Ledger.Conway.Conformance.Ledger.Properties.dpMap
d_dpMap_3032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
d_dpMap_3032 ~v0 ~v1 = du_dpMap_3032
du_dpMap_3032 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
du_dpMap_3032
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
      () erased
      (\ v0 ->
         coe
           MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
-- Ledger.Conway.Conformance.Ledger.Properties.isGADeposit
d_isGADeposit_3034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 -> ()
d_isGADeposit_3034 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.isGADepositᵇ
d_isGADeposit'7495'_3042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 -> Bool
d_isGADeposit'7495'_3042 ~v0 ~v1 ~v2 v3
  = du_isGADeposit'7495'_3042 v3
du_isGADeposit'7495'_3042 ::
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 -> Bool
du_isGADeposit'7495'_3042 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844 v2
           -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         _ -> coe v1)
-- Ledger.Conway.Conformance.Ledger.Properties.govDepsMatch
d_govDepsMatch_3044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 -> ()
d_govDepsMatch_3044 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.≡ᵉ.isPartialEquivalence
d_isPartialEquivalence_3068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3068 ~v0 ~v1 ~v2 ~v3
  = du_isPartialEquivalence_3068
du_isPartialEquivalence_3068 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3068
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282)
-- Ledger.Conway.Conformance.Ledger.Properties._.≡ᵉ.refl
d_refl_3070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refl_3070 ~v0 ~v1 ~v2 ~v3 ~v4 = du_refl_3070
du_refl_3070 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refl_3070
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v0 v1 -> v1))
      (coe (\ v0 v1 -> v1))
-- Ledger.Conway.Conformance.Ledger.Properties._.≡ᵉ.reflexive
d_reflexive_3072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836] ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reflexive_3072 ~v0 ~v1 ~v2 ~v3 = du_reflexive_3072
du_reflexive_3072 ::
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836] ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reflexive_3072 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282)
      v0
-- Ledger.Conway.Conformance.Ledger.Properties._.≡ᵉ.sym
d_sym_3074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836] ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sym_3074 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_3074 v6
du_sym_3074 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sym_3074 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.≡ᵉ.trans
d_trans_3076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836] ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836] ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_trans_3076 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_trans_3076 v7 v8
du_trans_3076 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_trans_3076 v0 v1
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
d_filterGA_3086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterGA_3086 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_filterGA_3086 v4 v5
du_filterGA_3086 ::
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterGA_3086 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v2 v3 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'filter_426
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                       (coe
                          MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                       (coe
                          MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1))))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
                       (coe
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                               (coe du_isGADeposit'7495'_3042 (coe v4))
                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                    (coe v2))
                 v3)))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'filter_426
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                    (MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    erased
                    (coe
                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1))))
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
                    (coe
                       (\ v4 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                            (coe du_isGADeposit'7495'_3042 (coe v4))
                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                 (coe v2))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v3))))
-- Ledger.Conway.Conformance.Ledger.Properties._._.ξ
d_ξ_3112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ξ_3112 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.isValid
d_isValid_3124 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 -> Bool
d_isValid_3124 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_isValid_3124 v3
du_isValid_3124 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Bool
du_isValid_3124 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.body
d_body_3128 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_body_3128 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_body_3128 v3
du_body_3128 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
du_body_3128 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.txid
d_txid_3156 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  AgdaAny
d_txid_3156 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_txid_3156 v3
du_txid_3156 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> AgdaAny
du_txid_3156 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2642
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.enactState
d_enactState_3176 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_3176 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_enactState_3176 v4
du_enactState_3176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_3176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_enactState_2152
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.pparams
d_pparams_3178 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_3178 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3178 v4
du_pparams_3178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_3178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2150
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.ppolicy
d_ppolicy_3180 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  Maybe AgdaAny
d_ppolicy_3180 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ppolicy_3180 v4
du_ppolicy_3180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  Maybe AgdaAny
du_ppolicy_3180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_ppolicy_2148
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.slot
d_slot_3182 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  AgdaAny
d_slot_3182 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_slot_3182 v4
du_slot_3182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  AgdaAny
du_slot_3182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2146 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS.utxoDeps
d_utxoDeps_3190 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxoDeps_3190 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_utxoDeps_3190 v5
du_utxoDeps_3190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxoDeps_3190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS.mkAction
d_mkAction_3192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkAction_3192 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8
  = du_mkAction_3192 v0 v4 v5 v7 v8
du_mkAction_3192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkAction_3192 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_mkGovStatePair_1150
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
         (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
         (MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2150
               (coe v2)))
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
            (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
            (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2146
               (coe v2))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txid_2642
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
         (coe v4))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_798 (coe v3))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_790 (coe v3))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_792 (coe v3))
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS.propUpdate
d_propUpdate_3212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_propUpdate_3212 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8 v9
  = du_propUpdate_3212 v0 v4 v5 v7 v8 v9
du_propUpdate_3212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_propUpdate_3212 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1112
      (coe v3)
      (coe du_mkAction_3192 (coe v0) (coe v1) (coe v2) (coe v4) (coe v5))
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS.voteUpdate
d_voteUpdate_3220 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_voteUpdate_3220 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_voteUpdate_3220 v0 v7 v8
du_voteUpdate_3220 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_voteUpdate_3220 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_addVote_1126 (coe v0)
      (coe v1)
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_768 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_772 (coe v2))
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS.updateGovStates
d_updateGovStates_3240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_updateGovStates_3240 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8 v9
  = du_updateGovStates_3240 v0 v4 v5 v7 v8 v9
du_updateGovStates_3240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_updateGovStates_3240 v0 v1 v2 v3 v4 v5
  = case coe v3 of
      [] -> coe v5
      (:) v6 v7
        -> case coe v6 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
               -> coe
                    du_updateGovStates_3240 (coe v0) (coe v1) (coe v2) (coe v7)
                    (coe addInt (coe (1 :: Integer)) (coe v4))
                    (coe du_voteUpdate_3220 (coe v0) (coe v5) (coe v8))
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
               -> coe
                    du_updateGovStates_3240 (coe v0) (coe v1) (coe v2) (coe v7)
                    (coe addInt (coe (1 :: Integer)) (coe v4))
                    (coe
                       du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v5) (coe v8)
                       (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS.STS→GovSt≡
d_STS'8594'GovSt'8801'_3262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__2240 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_STS'8594'GovSt'8801'_3262 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.STS→updateGovSt≡
d_STS'8594'updateGovSt'8801'_3278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''7522''42'''__88 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_STS'8594'updateGovSt'8801'_3278 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.txid
d_txid_3344 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  AgdaAny
d_txid_3344 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_txid_3344 v3
du_txid_3344 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> AgdaAny
du_txid_3344 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2642
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.pparams
d_pparams_3366 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_3366 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3366 v4
du_pparams_3366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_3366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2150
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.govSt
d_govSt_3378 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3378 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_govSt_3378 v5
du_govSt_3378 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_3378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.STS→GovSt≡
d_STS'8594'GovSt'8801'_3382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__2240 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_STS'8594'GovSt'8801'_3382 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.mkAction
d_mkAction_3384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkAction_3384 v0 ~v1 ~v2 ~v3 v4 v5 ~v6
  = du_mkAction_3384 v0 v4 v5
du_mkAction_3384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkAction_3384 v0 v1 v2
  = coe du_mkAction_3192 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.propUpdate
d_propUpdate_3386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_propUpdate_3386 v0 ~v1 ~v2 ~v3 v4 v5 ~v6
  = du_propUpdate_3386 v0 v4 v5
du_propUpdate_3386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_propUpdate_3386 v0 v1 v2
  = coe du_propUpdate_3212 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.updateGovStates
d_updateGovStates_3388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_updateGovStates_3388 v0 ~v1 ~v2 ~v3 v4 v5 ~v6
  = du_updateGovStates_3388 v0 v4 v5
du_updateGovStates_3388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_updateGovStates_3388 v0 v1 v2
  = coe du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.utxoDeps
d_utxoDeps_3390 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxoDeps_3390 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_utxoDeps_3390 v5
du_utxoDeps_3390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxoDeps_3390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.voteUpdate
d_voteUpdate_3392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_voteUpdate_3392 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_voteUpdate_3392 v0
du_voteUpdate_3392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_voteUpdate_3392 v0 = coe du_voteUpdate_3220 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.noGACerts
d_noGACerts_3438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_noGACerts_3438 v0 ~v1 v2 v3 ~v4 v5 ~v6 v7 v8
  = du_noGACerts_3438 v0 v2 v3 v5 v7 v8
du_noGACerts_3438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_noGACerts_3438 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      []
        -> coe
             MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_610
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1470
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
             (coe
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
                (coe
                   (\ v6 ->
                      coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                        (coe du_isGADeposit'7495'_3042 (coe v6))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
             (coe
                MAlonzo.Code.Class.IsSet.du_dom_548
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                   (coe v0) (coe v4) (coe v5)))
             (coe
                MAlonzo.Code.Class.IsSet.du_dom_548
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
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
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                (\ v8 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                     (coe du_isGADeposit'7495'_3042 (coe v8))
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                (coe
                   MAlonzo.Code.Class.IsSet.du_dom_548
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                      (coe v0) (coe v4) (coe v5))))
             (coe
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                (\ v8 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                     (coe du_isGADeposit'7495'_3042 (coe v8))
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                (coe
                   MAlonzo.Code.Class.IsSet.du_dom_548
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v5)))
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
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                   (\ v8 ->
                      coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                        (coe du_isGADeposit'7495'_3042 (coe v8))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                   (coe
                      MAlonzo.Code.Class.IsSet.du_dom_548
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                         (coe v0) (coe v4) (coe v5))))
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                   (\ v8 ->
                      coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                        (coe du_isGADeposit'7495'_3042 (coe v8))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                   (coe
                      MAlonzo.Code.Class.IsSet.du_dom_548
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         (coe
                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                            (coe v0) (coe v7) (coe v5))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                            (coe v6)))))
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                   (\ v8 ->
                      coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                        (coe du_isGADeposit'7495'_3042 (coe v8))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                   (coe
                      MAlonzo.Code.Class.IsSet.du_dom_548
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v5)))
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
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                      (\ v8 ->
                         coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                           (coe du_isGADeposit'7495'_3042 (coe v8))
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                      (coe
                         MAlonzo.Code.Class.IsSet.du_dom_548
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                            (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                               (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                               (coe v0) (coe v7) (coe v5))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                               (coe v6)))))
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                      (\ v8 ->
                         coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                           (coe du_isGADeposit'7495'_3042 (coe v8))
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.Class.IsSet.du_dom_548
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                               (coe v0) (coe v7) (coe v5)))
                         (coe
                            MAlonzo.Code.Class.IsSet.du_dom_548
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                               (coe v6)))))
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                      (\ v8 ->
                         coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                           (coe du_isGADeposit'7495'_3042 (coe v8))
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                      (coe
                         MAlonzo.Code.Class.IsSet.du_dom_548
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v5)))
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
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                         (\ v8 ->
                            coe
                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                              (coe du_isGADeposit'7495'_3042 (coe v8))
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__680
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Class.IsSet.du_dom_548
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                                  (coe v0) (coe v7) (coe v5)))
                            (coe
                               MAlonzo.Code.Class.IsSet.du_dom_548
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                                  (coe v6)))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                            (\ v8 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                 (coe du_isGADeposit'7495'_3042 (coe v8))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Class.IsSet.du_dom_548
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                                  (coe v0) (coe v7) (coe v5))))
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                            (\ v8 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                 (coe du_isGADeposit'7495'_3042 (coe v8))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Class.IsSet.du_dom_548
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                                  (coe v6)))))
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                         (\ v8 ->
                            coe
                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                              (coe du_isGADeposit'7495'_3042 (coe v8))
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                         (coe
                            MAlonzo.Code.Class.IsSet.du_dom_548
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v5)))
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
                            MAlonzo.Code.Axiom.Set.du__'8746'__680
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3042 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                                     (coe v0) (coe v7) (coe v5))))
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                    (coe du_isGADeposit'7495'_3042 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                                     (coe v6)))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__680
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3042 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v5)))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'8709'_442
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                            (\ v8 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                 (coe du_isGADeposit'7495'_3042 (coe v8))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Class.IsSet.du_dom_548
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v5)))
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
                               MAlonzo.Code.Axiom.Set.du__'8746'__680
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                                  (\ v8 ->
                                     coe
                                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                       (coe du_isGADeposit'7495'_3042 (coe v8))
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                  (coe
                                     MAlonzo.Code.Class.IsSet.du_dom_548
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v5)))
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'8709'_442
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3042 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v5)))
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3042 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v5)))
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
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                                     (\ v9 ->
                                        coe
                                          MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                          (coe du_isGADeposit'7495'_3042 (coe v9))
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                     (coe
                                        MAlonzo.Code.Class.IsSet.du_dom_548
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                        (coe v5)))))
                            (coe
                               MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'691'_806
                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                                  (\ v8 ->
                                     coe
                                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                       (coe du_isGADeposit'7495'_3042 (coe v8))
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                  (coe
                                     MAlonzo.Code.Class.IsSet.du_dom_548
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v5)))))
                         (coe
                            MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_742
                            (MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3042 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                                     (coe v0) (coe v7) (coe v5))))
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3042 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v5)))
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                    (coe du_isGADeposit'7495'_3042 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_548
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                                     (coe v6))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'8709'_442
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                            (coe
                               du_noGACerts_3438 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7)
                               (coe v5))
                            (coe
                               v1
                               (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2150
                                  (coe v3))
                               v6)))
                      (coe
                         MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8746'_654
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
                            (coe
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3042 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                         (coe
                            MAlonzo.Code.Class.IsSet.du_dom_548
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                               (coe v0) (coe v7) (coe v5)))
                         (coe
                            MAlonzo.Code.Class.IsSet.du_dom_548
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                               (coe v6)))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_610
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
                         (coe
                            (\ v8 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                 (coe du_isGADeposit'7495'_3042 (coe v8))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                      (let v8
                             = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                            (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v8))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                  (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                        (coe v0)))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                                           (coe v0) (coe v7) (coe v5)))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                                           (coe v0) (coe v7) (coe v5))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                                           (coe v6)))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                                           (coe v6))))))))
                      (let v8
                             = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__680
                            (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v8))
                            (let v9
                                   = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                             coe
                               (coe
                                  MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                  (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v9))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                                              (coe v0) (coe v7) (coe v5)))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                                              (coe v0) (coe v7) (coe v5)))))))
                            (let v9
                                   = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                             coe
                               (coe
                                  MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                  (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v9))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                                              (coe v6)))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                                              (coe v6)))))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_570
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                         (coe
                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                         (coe
                            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                                  (coe v0) (coe v7) (coe v5)))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                                  (coe v0) (coe v7) (coe v5))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                                  (coe v6)))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                                  (coe v6)))))))
                (coe
                   v2 v6
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                      (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1876
                         (coe v0) (coe v7) (coe v5))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                         (coe v6)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.dpMap∘voteUpdate≡dpMap
d_dpMap'8728'voteUpdate'8801'dpMap_3452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dpMap'8728'voteUpdate'8801'dpMap_3452 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.props-dpMap-votes-invar
d_props'45'dpMap'45'votes'45'invar_3474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758] ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_props'45'dpMap'45'votes'45'invar_3474 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7
                                        v8 v9 v10
  = du_props'45'dpMap'45'votes'45'invar_3474 v0 v4 v5 v7 v8 v9 v10
du_props'45'dpMap'45'votes'45'invar_3474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758] ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_props'45'dpMap'45'votes'45'invar_3474 v0 v1 v2 v3 v4 v5 v6
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
             (coe
                MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282)
             (coe
                MAlonzo.Code.Axiom.Set.du_fromList_428
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   du_dpMap_3032
                   (coe
                      du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
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
                       MAlonzo.Code.Axiom.Set.du_fromList_428
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          du_dpMap_3032
                          (coe
                             du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                             (coe
                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                                () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38) v3)
                             (coe v5) (coe v6))))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_428
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe du_dpMap_3032 v6))
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
                          MAlonzo.Code.Axiom.Set.du_fromList_428
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             du_dpMap_3032
                             (coe
                                du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                (coe
                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                   erased () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
                                   v3)
                                (coe v5) (coe v6))))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_fromList_428
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             du_dpMap_3032
                             (coe
                                du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                (coe
                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                   erased () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                                   v4)
                                (coe addInt (coe (1 :: Integer)) (coe v5))
                                (coe du_voteUpdate_3220 (coe v0) (coe v6) (coe v7)))))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_fromList_428
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe du_dpMap_3032 v6))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                          (\ v9 v10 v11 v12 v13 -> v13)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_fromList_428
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                du_dpMap_3032
                                (coe
                                   du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                   (coe
                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                      erased () erased
                                      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v4)
                                   (coe addInt (coe (1 :: Integer)) (coe v5))
                                   (coe du_voteUpdate_3220 (coe v0) (coe v6) (coe v7)))))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_fromList_428
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe du_dpMap_3032 v6))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_fromList_428
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe du_dpMap_3032 v6))
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
                                   MAlonzo.Code.Axiom.Set.du_fromList_428
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe du_dpMap_3032 v6))))
                          erased)
                       (coe
                          du_props'45'dpMap'45'votes'45'invar_3474 (coe v0) (coe v1) (coe v2)
                          (coe v8) (coe v4) (coe addInt (coe (1 :: Integer)) (coe v5))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_map_22
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_modifyVotes_1140
                                (coe v0)
                                (coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_768 (coe v7))
                                (coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v7))
                                (coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_772 (coe v7)))
                             (coe v6))))
             (:) v9 v10
               -> coe
                    du_props'45'dpMap'45'votes'45'invar_3474 (coe v0) (coe v1) (coe v2)
                    (coe v3) (coe v10) (coe addInt (coe (1 :: Integer)) (coe v5))
                    (coe
                       du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v6) (coe v9)
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.dpMap-update-∪
d_dpMap'45'update'45''8746'_3510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dpMap'45'update'45''8746'_3510 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8 v9
  = du_dpMap'45'update'45''8746'_3510 v0 v4 v5 v7 v8 v9
du_dpMap'45'update'45''8746'_3510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dpMap'45'update'45''8746'_3510 v0 v1 v2 v3 v4 v5
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'737'_802
             (MAlonzo.Code.Axiom.Set.d_th_1470
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
             (coe
                MAlonzo.Code.Axiom.Set.du_fromList_428
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   du_dpMap_3032
                   (coe
                      MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                      (coe
                         du_mkAction_3192 (coe v0) (coe v1) (coe v2) (coe v4) (coe v5)))))
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_govActionPriority_1078
                                    (coe
                                       MAlonzo.Code.Ledger.GovernanceActions.d_action_820
                                       (coe v9))))
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2758)
                            (coe
                               MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
                               (coe
                                  MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_govActionPriority_1078
                                     (coe
                                        MAlonzo.Code.Ledger.GovernanceActions.d_action_820
                                        (coe v9)))
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_govActionPriority_1078
                                     (coe
                                        MAlonzo.Code.Ledger.GovernanceActions.d_action_820
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe
                                              du_mkAction_3192 (coe v0) (coe v1) (coe v2) (coe v4)
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
                                           MAlonzo.Code.Axiom.Set.du__'8746'__680
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_fromList_428
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe du_dpMap_3032 v3))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              erased
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                          (coe v1)))
                                                    (coe v5)))))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_fromList_428
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                           (coe
                                              du_dpMap_3032
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe v6)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1112
                                                    (coe v7)
                                                    (coe
                                                       du_mkAction_3192 (coe v0) (coe v1) (coe v2)
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
                                              MAlonzo.Code.Axiom.Set.du__'8746'__680
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_428
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe du_dpMap_3032 v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                             (coe v1)))
                                                       (coe v5)))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du__'8746'__680
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                       (coe v8)))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_428
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe du_dpMap_3032 v7)))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                             (coe v1)))
                                                       (coe v5)))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_fromList_428
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 du_dpMap_3032
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1112
                                                       (coe v7)
                                                       (coe
                                                          du_mkAction_3192 (coe v0) (coe v1)
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
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                          (coe v8)))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_fromList_428
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe du_dpMap_3032 v7)))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                                (coe v1)))
                                                          (coe v5)))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                       (coe v8)))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_fromList_428
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe du_dpMap_3032 v7))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                                   (coe v1)))
                                                             (coe v5))))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_428
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    du_dpMap_3032
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1112
                                                          (coe v7)
                                                          (coe
                                                             du_mkAction_3192 (coe v0) (coe v1)
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
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                          (coe v8)))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_fromList_428
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          (coe du_dpMap_3032 v7))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                          (MAlonzo.Code.Axiom.Set.d_th_1470
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                                      (coe v1)))
                                                                (coe v5))))))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                          (coe v8)))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_fromList_428
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          du_dpMap_3032
                                                          (coe
                                                             du_propUpdate_3212 (coe v0) (coe v1)
                                                             (coe v2) (coe v7) (coe v4) (coe v5)))))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_428
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe
                                                       du_dpMap_3032
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                          (coe v6)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1112
                                                             (coe v7)
                                                             (coe
                                                                du_mkAction_3192 (coe v0) (coe v1)
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
                                                       MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                          (MAlonzo.Code.Axiom.Set.d_th_1470
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                             (coe v8)))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_fromList_428
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          (coe
                                                             du_dpMap_3032
                                                             (coe
                                                                du_propUpdate_3212 (coe v0) (coe v1)
                                                                (coe v2) (coe v7) (coe v4)
                                                                (coe v5)))))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_fromList_428
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          du_dpMap_3032
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                             (coe v6)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1112
                                                                (coe v7)
                                                                (coe
                                                                   du_mkAction_3192 (coe v0)
                                                                   (coe v1) (coe v2) (coe v4)
                                                                   (coe v5))))))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_fromList_428
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          du_dpMap_3032
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                             (coe v6)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1112
                                                                (coe v7)
                                                                (coe
                                                                   du_mkAction_3192 (coe v0)
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
                                                             MAlonzo.Code.Axiom.Set.du_fromList_428
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                du_dpMap_3032
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                   (coe v6)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1112
                                                                      (coe v7)
                                                                      (coe
                                                                         du_mkAction_3192 (coe v0)
                                                                         (coe v1) (coe v2) (coe v4)
                                                                         (coe v5))))))))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Properties.du_fromList'45''8746''45'singleton_828
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                          (coe v8))
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du_map_22
                                                          (coe
                                                             (\ v13 ->
                                                                coe
                                                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v13))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1112
                                                             (coe v7)
                                                             (coe
                                                                du_mkAction_3192 (coe v0) (coe v1)
                                                                (coe v2) (coe v4) (coe v5))))))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_742
                                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                          (coe v8)))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                          (coe v8)))
                                                    (let v13
                                                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                             (coe v13))
                                                          (let v14
                                                                 = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                                   (coe v14))
                                                                (coe du_dpMap_3032 v7)))
                                                          (coe
                                                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                             (coe
                                                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                                         (coe v1)))
                                                                   (coe v5))))))
                                                    (let v13
                                                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_fromList_428
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                             (coe v13))
                                                          (coe
                                                             du_dpMap_3032
                                                             (coe
                                                                du_propUpdate_3212 (coe v0) (coe v1)
                                                                (coe v2) (coe v7) (coe v4)
                                                                (coe v5)))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe (\ v13 v14 -> v14))
                                                       (coe (\ v13 v14 -> v14)))
                                                    (coe
                                                       du_dpMap'45'update'45''8746'_3510 (coe v0)
                                                       (coe v1) (coe v2) (coe v7) (coe v4)
                                                       (coe v5))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'assoc_820
                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                       (coe v8)))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_428
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe du_dpMap_3032 v7))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                                (coe v1)))
                                                          (coe v5))))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_742
                                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (let v13
                                                     = MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_428 (coe v13)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe
                                                          MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                          (coe v8))
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du_map_22
                                                          (coe
                                                             (\ v14 ->
                                                                coe
                                                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v14))))
                                                          (coe v7)))))
                                              (let v13
                                                     = MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v13)
                                                    (let v14
                                                           = MAlonzo.Code.Axiom.Set.d_th_1470
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                          v14 erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                             (coe v8))))
                                                    (let v14
                                                           = MAlonzo.Code.Axiom.Set.d_th_1470
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_fromList_428
                                                          (coe v14)
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_map_22
                                                             (coe
                                                                (\ v15 ->
                                                                   coe
                                                                     MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v15))))
                                                             (coe v7))))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                             (coe v1)))
                                                       (coe v5))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                             (coe v1)))
                                                       (coe v5))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Properties.du_fromList'45''8746''45'singleton_828
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                    (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22
                                                    (coe
                                                       (\ v13 ->
                                                          coe
                                                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                           MAlonzo.Code.Axiom.Set.du__'8746'__680
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_fromList_428
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe du_dpMap_3032 v3))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              erased
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                          (coe v1)))
                                                    (coe v5)))))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_fromList_428
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                           (coe
                                              du_dpMap_3032
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe
                                                    du_mkAction_3192 (coe v0) (coe v1) (coe v2)
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
                                              MAlonzo.Code.Axiom.Set.du__'8746'__680
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_428
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe du_dpMap_3032 v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                             (coe v1)))
                                                       (coe v5)))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du__'8746'__680
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                             (coe v1)))
                                                       (coe v5))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_428
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe du_dpMap_3032 v3)))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_fromList_428
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 du_dpMap_3032
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                    (coe
                                                       du_mkAction_3192 (coe v0) (coe v1) (coe v2)
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
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                                (coe v1)))
                                                          (coe v5))))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_428
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe du_dpMap_3032 v3)))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_428
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    du_dpMap_3032
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe
                                                          du_mkAction_3192 (coe v0) (coe v1)
                                                          (coe v2) (coe v4) (coe v5))
                                                       (coe v3))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_428
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    du_dpMap_3032
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe
                                                          du_mkAction_3192 (coe v0) (coe v1)
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
                                                       MAlonzo.Code.Axiom.Set.du_fromList_428
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          du_dpMap_3032
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                             (coe
                                                                du_mkAction_3192 (coe v0) (coe v1)
                                                                (coe v2) (coe v4) (coe v5))
                                                             (coe v3))))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Properties.du_fromList'45''8746''45'singleton_828
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          du_mkAction_3192 (coe v0) (coe v1)
                                                          (coe v2) (coe v4) (coe v5))))
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22
                                                    (coe
                                                       (\ v13 ->
                                                          coe
                                                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v13))))
                                                    (coe v3))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'comm_812
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_428
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe du_dpMap_3032 v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                             (coe v1)))
                                                       (coe v5)))))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.connex-lemma
d_connex'45'lemma_3564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_connex'45'lemma_3564 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8 v9 v10
  = du_connex'45'lemma_3564 v0 v4 v5 v7 v8 v9 v10
du_connex'45'lemma_3564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_connex'45'lemma_3564 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      []
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v7 v8 v9 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
             (coe
                MAlonzo.Code.Axiom.Set.du__'8746'__680
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Axiom.Set.du_fromList_428
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe du_dpMap_3032 v3))
                (coe
                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                   (MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   erased
                   (coe
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Transaction.d_txid_2642
                            (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                         (coe v6)))))
             (coe
                MAlonzo.Code.Axiom.Set.du_fromList_428
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   du_dpMap_3032
                   (coe
                      du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v6))))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                (\ v7 v8 v9 v10 v11 -> v11)
                (coe
                   MAlonzo.Code.Axiom.Set.du__'8746'__680
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_428
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe du_dpMap_3032 v3))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                      (MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      erased
                      (coe
                         MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Transaction.d_txid_2642
                               (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                            (coe v6)))))
                (coe
                   MAlonzo.Code.Axiom.Set.du__'8746'__680
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_428
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe du_dpMap_3032 v3))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                      (MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      erased
                      (coe
                         MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Transaction.d_txid_2642
                               (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                            (coe v6)))))
                (coe
                   MAlonzo.Code.Axiom.Set.du_fromList_428
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      du_dpMap_3032
                      (coe
                         du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
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
                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_fromList_428
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe du_dpMap_3032 v3))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                         (MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         erased
                         (coe
                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                               (coe v6)))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_428
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         du_dpMap_3032
                         (coe
                            du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                            (coe v6))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_428
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         du_dpMap_3032
                         (coe
                            du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
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
                            MAlonzo.Code.Axiom.Set.du_fromList_428
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               du_dpMap_3032
                               (coe
                                  du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                  (coe v6))))))
                   (coe
                      du_dpMap'45'update'45''8746'_3510 (coe v0) (coe v1) (coe v2)
                      (coe v3) (coe v4) (coe v6)))
                erased)
      (:) v7 v8
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v9 v10 v11 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
             (coe
                MAlonzo.Code.Axiom.Set.du__'8746'__680
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Axiom.Set.du_fromList_428
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      du_dpMap_3032
                      (coe
                         du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                         (coe
                            MAlonzo.Code.Class.Functor.Core.du_fmap_22
                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                            () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                         (coe v6) (coe v3))))
                (coe
                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                   (MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   erased
                   (coe
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Transaction.d_txid_2642
                            (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                         (coe
                            addInt (coe MAlonzo.Code.Data.List.Base.du_length_284 v5)
                            (coe v6))))))
             (coe
                MAlonzo.Code.Axiom.Set.du_fromList_428
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   du_dpMap_3032
                   (coe
                      du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                      (coe
                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                      (coe addInt (coe (1 :: Integer)) (coe v6))
                      (coe
                         du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v6)))))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                (\ v9 v10 v11 v12 v13 -> v13)
                (coe
                   MAlonzo.Code.Axiom.Set.du__'8746'__680
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_428
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         du_dpMap_3032
                         (coe
                            du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                            (coe
                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                               () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                            (coe v6) (coe v3))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                      (MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      erased
                      (coe
                         MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Transaction.d_txid_2642
                               (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                            (coe
                               addInt (coe MAlonzo.Code.Data.List.Base.du_length_284 v5)
                               (coe v6))))))
                (coe
                   MAlonzo.Code.Axiom.Set.du__'8746'__680
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_428
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         du_dpMap_3032
                         (coe
                            du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                            (coe
                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                               () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8)
                            (coe addInt (coe (1 :: Integer)) (coe v6))
                            (coe
                               du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7)
                               (coe v6)))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                      (MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      erased
                      (coe
                         MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Transaction.d_txid_2642
                               (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                            (coe
                               addInt
                               (coe
                                  addInt (coe (1 :: Integer))
                                  (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                               (coe v6))))))
                (coe
                   MAlonzo.Code.Axiom.Set.du_fromList_428
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      du_dpMap_3032
                      (coe
                         du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                         (coe
                            MAlonzo.Code.Class.Functor.Core.du_fmap_22
                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                            () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                         (coe addInt (coe (1 :: Integer)) (coe v6))
                         (coe
                            du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
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
                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_fromList_428
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            du_dpMap_3032
                            (coe
                               du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                               (coe
                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                  erased () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                                  v8)
                               (coe addInt (coe (1 :: Integer)) (coe v6))
                               (coe
                                  du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7)
                                  (coe v6)))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                         (MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         erased
                         (coe
                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                               (coe
                                  addInt
                                  (coe
                                     addInt (coe (1 :: Integer))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                  (coe v6))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_428
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               du_dpMap_3032
                               (coe
                                  du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                  (coe
                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                     erased () erased
                                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8)
                                  (coe v6) (coe v3))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                            (MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            erased
                            (coe
                               MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                  (coe
                                     addInt (coe MAlonzo.Code.Data.List.Base.du_length_284 v8)
                                     (coe v6))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                         (MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         erased
                         (coe
                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                               (coe
                                  addInt
                                  (coe
                                     addInt (coe (1 :: Integer))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                  (coe v6))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_428
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         du_dpMap_3032
                         (coe
                            du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                            (coe
                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                               () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                            (coe addInt (coe (1 :: Integer)) (coe v6))
                            (coe
                               du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
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
                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__680
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_428
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  du_dpMap_3032
                                  (coe
                                     du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8)
                                     (coe v6) (coe v3))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               erased
                               (coe
                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                     (coe
                                        addInt (coe MAlonzo.Code.Data.List.Base.du_length_284 v8)
                                        (coe v6))))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                            (MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            erased
                            (coe
                               MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                  (coe
                                     addInt
                                     (coe
                                        addInt (coe (1 :: Integer))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                     (coe v6))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_428
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               du_dpMap_3032
                               (coe
                                  du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                  (coe
                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                     erased () erased
                                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8)
                                  (coe addInt (coe (1 :: Integer)) (coe v6))
                                  (coe
                                     du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                     (coe v6)))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                            (MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            erased
                            (coe
                               MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                  (coe
                                     addInt
                                     (coe
                                        addInt (coe (1 :: Integer))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                     (coe v6))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_fromList_428
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            du_dpMap_3032
                            (coe
                               du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                               (coe
                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                  erased () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                                  v5)
                               (coe addInt (coe (1 :: Integer)) (coe v6))
                               (coe
                                  du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
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
                            MAlonzo.Code.Axiom.Set.du__'8746'__680
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_428
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  du_dpMap_3032
                                  (coe
                                     du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8)
                                     (coe addInt (coe (1 :: Integer)) (coe v6))
                                     (coe
                                        du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3)
                                        (coe v4) (coe v6)))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               erased
                               (coe
                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                     (coe
                                        addInt
                                        (coe
                                           addInt (coe (1 :: Integer))
                                           (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                        (coe v6))))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_428
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               du_dpMap_3032
                               (coe
                                  du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                  (coe
                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                     erased () erased
                                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                                  (coe addInt (coe (1 :: Integer)) (coe v6))
                                  (coe
                                     du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                     (coe v6)))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_428
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               du_dpMap_3032
                               (coe
                                  du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                  (coe
                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                     erased () erased
                                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                                  (coe addInt (coe (1 :: Integer)) (coe v6))
                                  (coe
                                     du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
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
                                  MAlonzo.Code.Axiom.Set.du_fromList_428
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     du_dpMap_3032
                                     (coe
                                        du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                        (coe
                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                           () erased () erased
                                           (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                                        (coe addInt (coe (1 :: Integer)) (coe v6))
                                        (coe
                                           du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3)
                                           (coe v4) (coe v6)))))))
                         (coe
                            du_connex'45'lemma_3564 (coe v0) (coe v1) (coe v2)
                            (coe
                               du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                               (coe v6))
                            (coe v7) (coe v8) (coe addInt (coe (1 :: Integer)) (coe v6))))
                      (coe
                         MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_742
                         (MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (let v9
                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.du__'8746'__680
                               (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v9))
                               (let v10
                                      = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                coe
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_fromList_428
                                     (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v10))
                                     (coe
                                        du_dpMap_3032
                                        (coe
                                           du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
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
                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                  (coe
                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                        (coe
                                           addInt (coe MAlonzo.Code.Data.List.Base.du_length_284 v8)
                                           (coe v6)))))))
                         (let v9
                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_428
                               (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v9))
                               (coe
                                  du_dpMap_3032
                                  (coe
                                     du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                     (let v10
                                            = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 in
                                      coe
                                        (coe
                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22 v10 () erased
                                           () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                                           v8))
                                     (coe addInt (coe (1 :: Integer)) (coe v6))
                                     (coe
                                        du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3)
                                        (coe v4) (coe v6))))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                            (MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            erased
                            (coe
                               MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                  (coe
                                     addInt
                                     (coe
                                        addInt (coe (1 :: Integer))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                     (coe v6)))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                            (MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            erased
                            (coe
                               MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                  (coe
                                     addInt
                                     (coe
                                        addInt (coe (1 :: Integer))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                     (coe v6)))))
                         (coe
                            du_connex'45'lemma_3564 (coe v0) (coe v1) (coe v2) (coe v3)
                            (coe v4) (coe v8) (coe v6))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v9 v10 -> v10))
                            (coe (\ v9 v10 -> v10)))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_742
                      (MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (let v9
                             = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__680
                            (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v9))
                            (let v10
                                   = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                             coe
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_fromList_428
                                  (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v10))
                                  (coe
                                     du_dpMap_3032
                                     (coe
                                        du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                        (let v11
                                               = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 in
                                         coe
                                           (coe
                                              MAlonzo.Code.Class.Functor.Core.du_fmap_22 v11 ()
                                              erased () erased
                                              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8))
                                        (coe v6) (coe v3)))))
                            (coe
                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                               (coe
                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                               (coe
                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                     (coe
                                        addInt (coe MAlonzo.Code.Data.List.Base.du_length_284 v8)
                                        (coe v6)))))))
                      (let v9
                             = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_428
                            (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v9))
                            (coe
                               du_dpMap_3032
                               (coe
                                  du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                  (let v10
                                         = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 in
                                   coe
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22 v10 () erased ()
                                        erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8))
                                  (coe addInt (coe (1 :: Integer)) (coe v6))
                                  (coe
                                     du_propUpdate_3212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7)
                                     (coe v6))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                         (MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         erased
                         (coe
                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                               (coe
                                  addInt
                                  (coe
                                     addInt (coe (1 :: Integer))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                  (coe v6)))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                         (MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         erased
                         (coe
                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                               (coe
                                  addInt
                                  (coe
                                     addInt (coe (1 :: Integer))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                  (coe v6)))))
                      (coe
                         du_connex'45'lemma_3564 (coe v0) (coe v1) (coe v2) (coe v3)
                         (coe v7) (coe v8) (coe v6))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v9 v10 -> v10))
                         (coe (\ v9 v10 -> v10)))))
                erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.utxo-govst-connex
d_utxo'45'govst'45'connex_3594 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'45'govst'45'connex_3594 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8 v9
                               v10 v11
  = du_utxo'45'govst'45'connex_3594 v0 v4 v5 v7 v8 v9 v10 v11
du_utxo'45'govst'45'connex_3594 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo'45'govst'45'connex_3594 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v3 of
      [] -> coe v7
      (:) v8 v9
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v10 v11 v12 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v12)
             (coe
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                (\ v10 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                     (coe du_isGADeposit'7495'_3042 (coe v10))
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                (coe
                   MAlonzo.Code.Class.IsSet.du_dom_548
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                      (coe v0) (coe v3)
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_txid_2642
                         (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                      (coe v6) (coe v4))))
             (coe
                MAlonzo.Code.Axiom.Set.du_fromList_428
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   du_dpMap_3032
                   (coe
                      du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
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
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                   (\ v10 ->
                      coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe du_isGADeposit'7495'_3042 (coe v10))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                   (coe
                      MAlonzo.Code.Class.IsSet.du_dom_548
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                         (coe v0) (coe v3)
                         (coe
                            MAlonzo.Code.Ledger.Transaction.d_txid_2642
                            (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                         (coe v6) (coe v4))))
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                   (\ v10 ->
                      coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe du_isGADeposit'7495'_3042 (coe v10))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Class.IsSet.du_dom_548
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                            (coe v0) (coe v9)
                            (coe
                               MAlonzo.Code.Ledger.Transaction.d_txid_2642
                               (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                            (coe v6) (coe v4)))
                      (coe
                         MAlonzo.Code.Class.IsSet.du_dom_548
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                               (coe v6))))))
                (coe
                   MAlonzo.Code.Axiom.Set.du_fromList_428
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      du_dpMap_3032
                      (coe
                         du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
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
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                      (\ v10 ->
                         coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                           (coe du_isGADeposit'7495'_3042 (coe v10))
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.Class.IsSet.du_dom_548
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                               (coe v0) (coe v9)
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                               (coe v6) (coe v4)))
                         (coe
                            MAlonzo.Code.Class.IsSet.du_dom_548
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                  (coe v6))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                         (\ v10 ->
                            coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                              (coe du_isGADeposit'7495'_3042 (coe v10))
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                         (coe
                            MAlonzo.Code.Class.IsSet.du_dom_548
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                               (coe v0) (coe v9)
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                               (coe v6) (coe v4))))
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                         (\ v10 ->
                            coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                              (coe du_isGADeposit'7495'_3042 (coe v10))
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                         (coe
                            MAlonzo.Code.Class.IsSet.du_dom_548
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                  (coe v6))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_428
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         du_dpMap_3032
                         (coe
                            du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
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
                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                            (\ v10 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                 (coe du_isGADeposit'7495'_3042 (coe v10))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Class.IsSet.du_dom_548
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                                  (coe v0) (coe v9)
                                  (coe
                                     MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                  (coe v6) (coe v4))))
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                            (\ v10 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                 (coe du_isGADeposit'7495'_3042 (coe v10))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Class.IsSet.du_dom_548
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                 (coe v1)))
                                           (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                     (coe v6))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_428
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               du_dpMap_3032
                               (coe
                                  du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                  (coe
                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                     erased () erased
                                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v9)
                                  (coe (0 :: Integer)) (coe v5))))
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                            (\ v10 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                 (coe du_isGADeposit'7495'_3042 (coe v10))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               erased
                               (coe
                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v9))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_fromList_428
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            du_dpMap_3032
                            (coe
                               du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
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
                            MAlonzo.Code.Axiom.Set.du__'8746'__680
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_428
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  du_dpMap_3032
                                  (coe
                                     du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v9)
                                     (coe (0 :: Integer)) (coe v5))))
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                               (\ v10 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                    (coe du_isGADeposit'7495'_3042 (coe v10))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  erased
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9))))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__680
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_428
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  du_dpMap_3032
                                  (coe
                                     du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v9)
                                     (coe (0 :: Integer)) (coe v5))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               erased
                               (coe
                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_428
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               du_dpMap_3032
                               (coe
                                  du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
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
                               MAlonzo.Code.Axiom.Set.du__'8746'__680
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_fromList_428
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     du_dpMap_3032
                                     (coe
                                        du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                        (coe
                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                           () erased () erased
                                           (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v9)
                                        (coe (0 :: Integer)) (coe v5))))
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  erased
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_428
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  du_dpMap_3032
                                  (coe
                                     du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v3)
                                     (coe (0 :: Integer)) (coe v5))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_428
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  du_dpMap_3032
                                  (coe
                                     du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
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
                                     MAlonzo.Code.Axiom.Set.du_fromList_428
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        du_dpMap_3032
                                        (coe
                                           du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                           (coe
                                              MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                              MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                              () erased () erased
                                              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v3)
                                           (coe (0 :: Integer)) (coe v5))))))
                            (coe
                               du_connex'45'lemma_3564 (coe v0) (coe v1) (coe v2) (coe v5)
                               (coe v8) (coe v9) (coe (0 :: Integer))))
                         (coe
                            MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_742
                            (MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_428
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  du_dpMap_3032
                                  (coe
                                     du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v9)
                                     (coe (0 :: Integer)) (coe v5))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_428
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  du_dpMap_3032
                                  (coe
                                     du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v9)
                                     (coe (0 :: Integer)) (coe v5))))
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                               (\ v10 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                    (coe du_isGADeposit'7495'_3042 (coe v10))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                  (coe
                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               erased
                               (coe
                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v9))))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe (\ v10 v11 -> v11)) (coe (\ v10 v11 -> v11)))
                            (coe
                               du_filterGA_3086
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                               (coe MAlonzo.Code.Data.List.Base.du_length_284 v9))))
                      (coe
                         MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_742
                         (MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                            (\ v10 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                 (coe du_isGADeposit'7495'_3042 (coe v10))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Class.IsSet.du_dom_548
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                                  (coe v0) (coe v9)
                                  (coe
                                     MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                  (coe v6) (coe v4))))
                         (let v10
                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_428
                               (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v10))
                               (coe
                                  du_dpMap_3032
                                  (coe
                                     du_updateGovStates_3240 (coe v0) (coe v1) (coe v2)
                                     (let v11
                                            = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 in
                                      coe
                                        (coe
                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22 v11 () erased
                                           () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                                           v9))
                                     (coe (0 :: Integer)) (coe v5)))))
                         (let v10
                                = MAlonzo.Code.Axiom.Set.d_th_1470
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.du_filter_420 v10
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
                                  (coe
                                     (\ v11 ->
                                        coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                          (coe du_isGADeposit'7495'_3042 (coe v11))
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (let v11
                                         = MAlonzo.Code.Axiom.Set.d_th_1470
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v11 erased
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                       (coe v1)))
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                           (coe v6)))))))
                         (let v10
                                = MAlonzo.Code.Axiom.Set.d_th_1470
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.du_filter_420 v10
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
                                  (coe
                                     (\ v11 ->
                                        coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                          (coe du_isGADeposit'7495'_3042 (coe v11))
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                               (let v11
                                      = MAlonzo.Code.Axiom.Set.d_th_1470
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                coe
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v11 erased
                                     (coe
                                        MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                 (coe v1)))
                                           (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))))))
                         (coe
                            du_utxo'45'govst'45'connex_3594 (coe v0) (coe v1) (coe v2) (coe v9)
                            (coe v4) (coe v5) (coe v6) (coe v7))
                         (coe
                            MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_610
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
                               (coe
                                  (\ v10 ->
                                     coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                       (coe du_isGADeposit'7495'_3042 (coe v10))
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (let v10
                                      = MAlonzo.Code.Axiom.Set.d_th_1470
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                coe
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v10 erased
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                    (coe v1)))
                                              (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                        (coe v6)))))
                            (let v10
                                   = MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                             coe
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v10 erased
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))))
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom'45'single'8801'single_480
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                               (coe v6)))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8746'_654
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
                         (coe
                            (\ v10 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                 (coe du_isGADeposit'7495'_3042 (coe v10))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                      (coe
                         MAlonzo.Code.Class.IsSet.du_dom_548
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                            (coe v0) (coe v9)
                            (coe
                               MAlonzo.Code.Ledger.Transaction.d_txid_2642
                               (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                            (coe v6) (coe v4)))
                      (coe
                         MAlonzo.Code.Class.IsSet.du_dom_548
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                               (coe v6))))))
                (coe
                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_610
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
                      (coe
                         (\ v10 ->
                            coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                              (coe du_isGADeposit'7495'_3042 (coe v10))
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                   (let v10
                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                    coe
                      (coe
                         MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                         (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v10))
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                               (coe
                                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                               (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                  (coe
                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                                        (coe v0) (coe v9)
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                        (coe v6) (coe v4)))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                                        (coe v0) (coe v9)
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                        (coe v6) (coe v4))))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                       (coe v1)))
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                           (coe v6))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                       (coe v1)))
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                           (coe v6)))))))))
                   (let v10
                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                    coe
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v10))
                         (let v11
                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                               (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v11))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                                           (coe v0) (coe v9)
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                 (coe v1)))
                                           (coe v6) (coe v4)))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                                           (coe v0) (coe v9)
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                 (coe v1)))
                                           (coe v6) (coe v4)))))))
                         (let v11
                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                               (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v11))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                          (coe v1)))
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du_length_284
                                                       v9)))
                                              (coe v6))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                          (coe v1)))
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du_length_284
                                                       v9)))
                                              (coe v6))))))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_570
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                      (coe
                         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                               (coe v0) (coe v9)
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                               (coe v6) (coe v4)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1900
                               (coe v0) (coe v9)
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                               (coe v6) (coe v4))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                  (coe v6))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txid_2642
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                  (coe v6))))))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.utxoSt
d_utxoSt_3698 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2296 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1978
d_utxoSt_3698 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_utxoSt_3698 v5
du_utxoSt_3698 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2296 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1978
du_utxoSt_3698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2312 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.removed
d_removed_3702 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2296 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_3702 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_removed_3702 v5
du_removed_3702 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2296 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_3702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2316 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS.EPOCH-govDepsMatch
d_EPOCH'45'govDepsMatch_3710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2296 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2296 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2530 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'govDepsMatch_3710 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 ~v9
                             v10
  = du_EPOCH'45'govDepsMatch_3710 v0 v6 v7 v8 v10
du_EPOCH'45'govDepsMatch_3710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2296 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2296 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2530 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'govDepsMatch_3710 v0 v1 v2 v3 v4
  = coe
      seq (coe v3)
      (coe
         seq (coe v4)
         (case coe v1 of
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2318 v5 v6 v7 v8 v9
              -> coe
                   (\ v10 ->
                      coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_610
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
                                    (coe
                                       (\ v11 ->
                                          coe
                                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                            (coe
                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                            (coe du_isGADeposit'7495'_3042 (coe v11))
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased
                                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                             (coe du_utxoDeps_3750 (coe v7))))
                                       (\ v11 v12 -> v11)
                                       (coe
                                          du_χ_3728 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3750 (coe v7)))
                                       (coe du_χ''_3740 (coe v9))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v11 v12 -> v12)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased
                                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                             (coe du_utxoDeps_3750 (coe v7))))
                                       (coe
                                          du_χ_3728 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3750 (coe v7)))
                                       (coe du_χ''_3740 (coe v9))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Rel.du_dom'45'cong_526
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased
                                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                             (coe du_utxoDeps_3750 (coe v7))))
                                       (\ v11 v12 -> v11)
                                       (coe
                                          du_χ_3728 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3750 (coe v7)))
                                       (coe du_χ''_3740 (coe v9)))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v11 v12 -> v12)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased
                                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                             (coe du_utxoDeps_3750 (coe v7))))
                                       (coe
                                          du_χ_3728 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3750 (coe v7)))
                                       (coe du_χ''_3740 (coe v9)))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_790
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased
                                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                          (coe du_utxoDeps_3750 (coe v7)))
                                       (coe
                                          du_χ_3728 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3750 (coe v7)))
                                       (coe du_χ''_3740 (coe v9))
                                       (let v11
                                              = coe
                                                  du_χ'''8801'χ_3756 (coe v0) (coe v9) (coe v7)
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
                                    du_main'45'invariance'45'lemma_3952 (coe v0) (coe v9) (coe v7)
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
                                    du_main'45'invariance'45'lemma_3952 (coe v0) (coe v9) (coe v7)
                                    (coe
                                       MAlonzo.Code.Function.Bundles.d_to_1724
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244)
                                       v10))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                              (coe
                                 MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_610
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
                                    (coe
                                       (\ v11 ->
                                          coe
                                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                            (coe
                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                            (coe du_isGADeposit'7495'_3042 (coe v11))
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased
                                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                             (coe du_utxoDeps_3750 (coe v7))))
                                       (\ v11 v12 -> v11)
                                       (coe
                                          du_χ_3728 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3750 (coe v7)))
                                       (coe du_χ''_3740 (coe v9))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v11 v12 -> v12)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased
                                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                             (coe du_utxoDeps_3750 (coe v7))))
                                       (coe
                                          du_χ_3728 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3750 (coe v7)))
                                       (coe du_χ''_3740 (coe v9))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Rel.du_dom'45'cong_526
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased
                                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                             (coe du_utxoDeps_3750 (coe v7))))
                                       (\ v11 v12 -> v11)
                                       (coe
                                          du_χ_3728 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3750 (coe v7)))
                                       (coe du_χ''_3740 (coe v9)))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v11 v12 -> v12)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased
                                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                             (coe du_utxoDeps_3750 (coe v7))))
                                       (coe
                                          du_χ_3728 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3750 (coe v7)))
                                       (coe du_χ''_3740 (coe v9)))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_790
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased
                                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                          (coe du_utxoDeps_3750 (coe v7)))
                                       (coe
                                          du_χ_3728 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3750 (coe v7)))
                                       (coe du_χ''_3740 (coe v9))
                                       (let v11
                                              = coe
                                                  du_χ'''8801'χ_3756 (coe v0) (coe v9) (coe v7)
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
d_χ_3728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
d_χ_3728 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 ~v12 ~v13
         ~v14 ~v15 ~v16 v17
  = du_χ_3728 v0 v9 v17
du_χ_3728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
du_χ_3728 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_map_398
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (\ v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_398
                 (MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe
                         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                      (coe v4))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
                       (coe v2)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                          (MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          erased
                          (coe
                             MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
            (coe v1)))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.χ'
d_χ''_3740 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
d_χ''_3740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 ~v12
           ~v13 ~v14 ~v15 ~v16
  = du_χ''_3740 v9
du_χ''_3740 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
du_χ''_3740 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_398
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
      (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.P
d_P_3742 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_P_3742 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.P?
d_P'63'_3746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_P'63'_3746 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17
  = du_P'63'_3746 v0 v9 v17
du_P'63'_3746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_P'63'_3746 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
               (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_398
               (MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
               (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
                  (coe v1))))
         (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.utxoDeps
d_utxoDeps_3750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxoDeps_3750 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 ~v11
                ~v12 ~v13 ~v14 ~v15 ~v16
  = du_utxoDeps_3750 v10
du_utxoDeps_3750 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxoDeps_3750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.utxoDeps'
d_utxoDeps''_3752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxoDeps''_3752 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 ~v11
                  ~v12 ~v13 ~v14 ~v15 ~v16
  = du_utxoDeps''_3752 v0 v9 v10
du_utxoDeps''_3752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxoDeps''_3752 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
      (coe du_utxoDeps_3750 (coe v2)) (coe du_χ''_3740 (coe v1))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.χ'≡χ
d_χ'''8801'χ_3756 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_χ'''8801'χ_3756 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 ~v11
                  ~v12 ~v13 v14 ~v15 ~v16
  = du_χ'''8801'χ_3756 v0 v9 v10 v14
du_χ'''8801'χ_3756 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_χ'''8801'χ_3756 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_χ'''8838'χ_3762 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_χ'8838'χ''_3804 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._._.χ'⊆χ
d_χ'''8838'χ_3762 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_χ'''8838'χ_3762 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 ~v11
                  ~v12 ~v13 v14 ~v15 ~v16 v17 v18
  = du_χ'''8838'χ_3762 v0 v9 v10 v14 v17 v18
du_χ'''8838'χ_3762 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_χ'''8838'χ_3762 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_208
                    (MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    erased erased
                    (\ v6 ->
                       coe
                         MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                    (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
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
                                            MAlonzo.Code.Axiom.Set.d_replacement_208
                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            erased erased
                                            (\ v13 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                                                     (coe v2)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                            (coe v9)))
                                      (coe
                                         v3
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                         MAlonzo.Code.Axiom.Set.du_'8712''45'map_406
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               (\ v20 ->
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       erased erased
                                                                       (\ v21 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe v20)))
                                                                            (coe v21))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_specification_186
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             erased erased
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                                                                                      (coe v2))))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                erased erased erased
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                   erased
                                                                                   (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                         (coe v0)))
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
                                                               (coe v1)))
                                                         (coe
                                                            (\ v20 ->
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v20))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                            (coe v9)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                               (coe v10))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                  (coe v9))
                                                               (coe v17)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            erased
                                                            (coe
                                                               MAlonzo.Code.Function.Bundles.d_to_1724
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.du_'8712''45'concatMap'738'_520
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                        (coe v10))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                           (coe v9))
                                                                        (coe v17)))
                                                                  (coe
                                                                     (\ v20 ->
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             erased erased
                                                                             (\ v21 ->
                                                                                coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe v20)))
                                                                                  (coe v21))
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   erased erased
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                                                                                            (coe
                                                                                               v2))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                      erased erased
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                         erased
                                                                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                               (coe
                                                                                                  v0)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                  (coe
                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                               erased
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                           MAlonzo.Code.Axiom.Set.du_'8712''45'map_406
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                    erased
                                                                                    (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                          (coe
                                                                                             v0))))
                                                                                 (coe
                                                                                    du_utxoDeps_3750
                                                                                    (coe v2))
                                                                                 (let v20
                                                                                        = MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                                                       v20 erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                                          (coe
                                                                                             v9))))))
                                                                           (coe
                                                                              (\ v20 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                      (coe v10))
                                                                                   (coe v20)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                 (coe v10))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                                    (coe v9))
                                                                                 (coe v17))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                                 (coe v9))
                                                                              (coe v17))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              erased
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'8314'_1488
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                    erased
                                                                                    (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                          (coe
                                                                                             v0))))
                                                                                 (coe
                                                                                    du_utxoDeps_3750
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
d_χ'8838'χ''_3804 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_χ'8838'χ''_3804 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 ~v11
                  ~v12 ~v13 ~v14 ~v15 ~v16 v17 v18
  = du_χ'8838'χ''_3804 v0 v9 v10 v17 v18
du_χ'8838'χ''_3804 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_χ'8838'χ''_3804 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_208
                    (MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    erased erased
                    (\ v5 ->
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          (\ v5 ->
                             coe
                               MAlonzo.Code.Axiom.Set.du_map_398
                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (\ v6 ->
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                    (coe v6))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                        erased
                                        (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                              (coe v0))))
                                     (coe du_utxoDeps_3750 (coe v2))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                        (MAlonzo.Code.Axiom.Set.d_th_1470
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        erased
                                        (coe
                                           MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe v5))))))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
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
                                                                  MAlonzo.Code.Axiom.Set.du_'8712''45'unions_440
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (coe v6)
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.du_map_398
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (\ v14 ->
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             erased erased
                                                                             (\ v15 ->
                                                                                coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe v14)))
                                                                                  (coe v15))
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   erased erased
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                                                                                            (coe
                                                                                               v2))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                      erased erased
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                         erased
                                                                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                               (coe
                                                                                                  v0)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                  (coe
                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                               erased
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
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
                                                                       MAlonzo.Code.Axiom.Set.du_'8712''45'map_406
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
                                                                          (coe v1))
                                                                       (coe
                                                                          (\ v15 ->
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  erased erased
                                                                                  (\ v16 ->
                                                                                     coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                             (coe
                                                                                                v15)))
                                                                                       (coe v16))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        erased
                                                                                        erased
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                                                                                                 (coe
                                                                                                    v2))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                           (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                           erased
                                                                                           erased
                                                                                           erased
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                              erased
                                                                                              (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                                    (coe
                                                                                                       v0)))
                                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                         MAlonzo.Code.Axiom.Set.d_replacement_208
                                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         erased erased
                                                         (\ v15 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
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
                                                                                               MAlonzo.Code.Axiom.Set.du_'8712''45'unions_440
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                  (coe
                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                               (coe
                                                                                                  v6)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.du_map_398
                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                     (coe
                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                  (\ v16 ->
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                             (coe
                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                          erased
                                                                                                          erased
                                                                                                          (\ v17 ->
                                                                                                             coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                     (coe
                                                                                                                        v16)))
                                                                                                               (coe
                                                                                                                  v17))
                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                erased
                                                                                                                erased
                                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                                                                                                                         (coe
                                                                                                                            v2))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                   (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                   erased
                                                                                                                   erased
                                                                                                                   erased
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                      erased
                                                                                                                      (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                                                            (coe
                                                                                                                               v0)))
                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                            erased
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
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
                                                                                                    MAlonzo.Code.Axiom.Set.du_'8712''45'map_406
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
                                                                                                       (coe
                                                                                                          v1))
                                                                                                    (coe
                                                                                                       (\ v17 ->
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                               erased
                                                                                                               erased
                                                                                                               (\ v18 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                          (coe
                                                                                                                             v17)))
                                                                                                                    (coe
                                                                                                                       v18))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                     erased
                                                                                                                     erased
                                                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                                                                                                                              (coe
                                                                                                                                 v2))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                        erased
                                                                                                                        erased
                                                                                                                        erased
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                           erased
                                                                                                                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                                                                 (coe
                                                                                                                                    v0)))
                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                 erased
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                               MAlonzo.Code.Axiom.Set.d_specification_186
                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               erased erased
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                                                                        (coe v2))))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                  (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                  erased erased erased
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                     erased
                                                                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                           (coe v0)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_listing_216
                                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                           erased
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                                                               MAlonzo.Code.Axiom.Set.du_'8712''45'unions_440
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                               (coe
                                                                                                                  v6)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.du_map_398
                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                  (\ v15 ->
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                          erased
                                                                                                                          erased
                                                                                                                          (\ v16 ->
                                                                                                                             coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                     (coe
                                                                                                                                        v15)))
                                                                                                                               (coe
                                                                                                                                  v16))
                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                erased
                                                                                                                                erased
                                                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                                                                                                                                         (coe
                                                                                                                                            v2))))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                   (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                                   erased
                                                                                                                                   erased
                                                                                                                                   erased
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                      erased
                                                                                                                                      (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                                                                            (coe
                                                                                                                                               v0)))
                                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
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
                                                                                                                    MAlonzo.Code.Axiom.Set.du_'8712''45'map_406
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
                                                                                                                       (coe
                                                                                                                          v1))
                                                                                                                    (coe
                                                                                                                       (\ v16 ->
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                               erased
                                                                                                                               erased
                                                                                                                               (\ v17 ->
                                                                                                                                  coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                          (coe
                                                                                                                                             v16)))
                                                                                                                                    (coe
                                                                                                                                       v17))
                                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                     erased
                                                                                                                                     erased
                                                                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                                                                                                                                              (coe
                                                                                                                                                 v2))))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                                        erased
                                                                                                                                        erased
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                           erased
                                                                                                                                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                                                                                 (coe
                                                                                                                                                    v0)))
                                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                 erased
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                     MAlonzo.Code.Axiom.Set.du_'8712''45'unions_440
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe v6)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_map_398
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        (\ v15 ->
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                erased erased
                                                                                (\ v16 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                           (coe
                                                                                              v15)))
                                                                                     (coe v16))
                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                      (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                         (coe
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                      erased erased
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                                                                                               (coe
                                                                                                  v2))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                         (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                               (coe
                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                         erased
                                                                                         erased
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                            erased
                                                                                            (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                                  (coe
                                                                                                     v0)))
                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                     (coe
                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                        (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
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
                                                                          MAlonzo.Code.Axiom.Set.du_'8712''45'map_406
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
                                                                             (coe v1))
                                                                          (coe
                                                                             (\ v16 ->
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     erased erased
                                                                                     (\ v17 ->
                                                                                        coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                (coe
                                                                                                   v16)))
                                                                                          (coe v17))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                                                                                                    (coe
                                                                                                       v2))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                          (coe
                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                       MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       erased erased
                                                                       (\ v20 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                               (coe v17))
                                                                            (coe v20))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_specification_186
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             erased erased
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1992
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2166
                                                                                      (coe v2))))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                erased erased erased
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                   erased
                                                                                   (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                         (coe v0)))
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                            MAlonzo.Code.Axiom.Set.du_'8712''45'map_406
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
                                                                               (coe v1))
                                                                            (coe
                                                                               (\ v23 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
d_map'45'filter'45'decomp_3878 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_map'45'filter'45'decomp_3878 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               v9 v10 ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17
  = du_map'45'filter'45'decomp_3878 v0 v9 v10
du_map'45'filter'45'decomp_3878 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_map'45'filter'45'decomp_3878 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (coe du_i_3886 (coe v0) (coe v1) (coe v2))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
              (coe du_iii_3934 (coe v0) (coe v1) (coe v2) (coe v3))))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._._.i
d_i_3886 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_i_3886 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 ~v11 ~v12 ~v13
         ~v14 ~v15 ~v16 ~v17 v18
  = du_i_3886 v0 v9 v10 v18
du_i_3886 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_i_3886 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Data.List.Membership.Setoid.du_find_84
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168
                        (coe v2))
                     (coe
                        MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_map'8315'_736
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168
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
                                    (coe du_P'63'_3746 (coe v0) (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168
                                       (coe v2))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_500
                                       (coe du_P'63'_3746 (coe v0) (coe v1))
                                       (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168
                                          (coe v2))
                                       v9
                                       (\ v11 ->
                                          coe
                                            v4
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314''45''8728'_382
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe
                                                  (\ v12 ->
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v12)))
                                               (coe
                                                  (\ v12 ->
                                                     coe
                                                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                       (coe v12)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2016
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                               (coe v11))))
                                    erased))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._._.ii
d_ii_3904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ii_3904 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._._.iii
d_iii_3934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_iii_3934 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 ~v11 ~v12 ~v13
           ~v14 ~v15 ~v16 ~v17 v18
  = du_iii_3934 v0 v9 v10 v18
du_iii_3934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_iii_3934 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168
              (coe v2) in
    coe
      (let v5 = coe du_P'63'_3746 (coe v0) (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Data.List.Membership.Setoid.du_find_84
                    (coe
                       MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_filter_664
                       (coe du_P'63'_3746 (coe v0) (coe v1))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168
                          (coe v2)))
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_map'8315'_736
                       (coe
                          MAlonzo.Code.Data.List.Base.du_filter_664
                          (coe du_P'63'_3746 (coe v0) (coe v1))
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168
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
                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168
                                      (coe v2)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11)
                                      erased)))
                      _ -> MAlonzo.RTE.mazUnreachableError
               _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.main-invariance-lemma
d_main'45'invariance'45'lemma_3952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  (MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
   MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2498 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_main'45'invariance'45'lemma_3952 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   ~v8 v9 v10 ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 v17 v18
  = du_main'45'invariance'45'lemma_3952 v0 v9 v10 v17 v18
du_main'45'invariance'45'lemma_3952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2006 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2158 ->
  (MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
   MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_main'45'invariance'45'lemma_3952 v0 v1 v2 v3 v4
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
                                 MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_432
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v5
                                        = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22 v5 () erased ()
                                       erased
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_filter_664
                                          (coe du_P'63'_3746 (coe v0) (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168
                                             (coe v2)))))
                                 (coe v4)))
                           (coe du_map'45'filter'45'decomp_3878 (coe v0) (coe v1) (coe v2)))
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
                                 MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_432
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v5
                                        = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22 v5 () erased ()
                                       erased
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                                       (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2168
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
                        MAlonzo.Code.Axiom.Set.du_'8712''45'filter_426
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_548
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                           (coe du_utxoDeps_3750 (coe v2)))
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
                           (coe
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                   (coe
                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                   (coe du_isGADeposit'7495'_3042 (coe v5))
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
                        MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                           (coe du_utxoDeps_3750 (coe v2)))
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
               MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom_864
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
               (coe
                  MAlonzo.Code.Class.IsSet.d_toSet_490
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                  (coe du_utxoDeps_3750 (coe v2)))
               (coe du_χ''_3740 (coe v1)) (coe v4))))
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_426
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_548
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
               (coe du_utxoDeps''_3752 (coe v0) (coe v1) (coe v2)))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1100
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                       (coe du_isGADeposit'7495'_3042 (coe v5))
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
            (coe v4)))
