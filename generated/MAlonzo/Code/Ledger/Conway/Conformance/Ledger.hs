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

module MAlonzo.Code.Ledger.Conway.Conformance.Ledger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.To
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_90 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_90 ~v0 = du_DecEq'45'GovRole_90
du_DecEq'45'GovRole_90 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_90
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_790
-- _.GovActionState
d_GovActionState_156 a0 = ()
-- _.GovProposal
d_GovProposal_160 a0 = ()
-- _.GovVote
d_GovVote_164 a0 = ()
-- _.Tx
d_Tx_358 a0 = ()
-- _.TxBody
d_TxBody_360 a0 = ()
-- _.Voter
d_Voter_394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_394 = erased
-- _.epoch
d_epoch_424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_424 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
-- _.GovActionState.action
d_action_666 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_694
d_action_666 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_786 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_668 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  AgdaAny
d_expiresIn_668 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_784 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_670 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  AgdaAny
d_prevAction_670 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_788 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_672 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_672 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_782 (coe v0)
-- _.GovActionState.votes
d_votes_674 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_674 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_780 (coe v0)
-- _.GovProposal.action
d_action_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_694
d_action_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_756 (coe v0)
-- _.GovProposal.anchor
d_anchor_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_696 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_766 (coe v0)
-- _.GovProposal.deposit
d_deposit_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742 -> Integer
d_deposit_698 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_762 (coe v0)
-- _.GovProposal.policy
d_policy_700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742 ->
  Maybe AgdaAny
d_policy_700 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_760 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_702 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742 -> AgdaAny
d_prevAction_702 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_758 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_704 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_704 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_764 (coe v0)
-- _.GovVote.anchor
d_anchor_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_740 (coe v0)
-- _.GovVote.gid
d_gid_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_718 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_734 (coe v0)
-- _.GovVote.vote
d_vote_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_716
d_vote_720 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_738 (coe v0)
-- _.GovVote.voter
d_voter_722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_722 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_736 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_744 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_746 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_748 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_750 a0 = ()
-- _.Tx.body
d_body_1374 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
d_body_1374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0)
-- _.Tx.isValid
d_isValid_1376 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Bool
d_isValid_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v0)
-- _.Tx.txAD
d_txAD_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Maybe AgdaAny
d_txAD_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2638 (coe v0)
-- _.Tx.wits
d_wits_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2602
d_wits_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v0)
-- _.TxBody.collateral
d_collateral_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2596 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Maybe Integer
d_curTreasury_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2590 (coe v0)
-- _.TxBody.mint
d_mint_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
d_mint_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2570 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1390 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2564 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1392 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> [AgdaAny]
d_reqSigHash_1392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2598 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Maybe AgdaAny
d_scriptIntHash_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2600 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Maybe AgdaAny
d_txADhash_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2586 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Maybe AgdaAny
d_txNetworkId_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2588 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2574 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_txdonation_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2582 (coe v0)
-- _.TxBody.txfee
d_txfee_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_txfee_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2568 (coe v0)
-- _.TxBody.txid
d_txid_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
d_txid_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2594 (coe v0)
-- _.TxBody.txins
d_txins_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2562 (coe v0)
-- _.TxBody.txouts
d_txouts_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2566 (coe v0)
-- _.TxBody.txprop
d_txprop_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742]
d_txprop_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2580 (coe v0)
-- _.TxBody.txsize
d_txsize_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_txsize_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2592 (coe v0)
-- _.TxBody.txup
d_txup_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2584 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2572 (coe v0)
-- _.TxBody.txvote
d_txvote_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724]
d_txvote_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2578 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1422 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2576 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2044 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1552 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 -> ()
d_GovState_1560 = erased
-- Ledger.Conway.Conformance.Ledger._.To-GovEnv
d_To'45'GovEnv_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1562 ~v0 ~v1 = du_To'45'GovEnv_1562
du_To'45'GovEnv_1562 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1562
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2074
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1608 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1630 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1630 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2034 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1632 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 -> Integer
d_donations_1632 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2036 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1634 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 -> Integer
d_fees_1634 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2032 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1636 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1636 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2030 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1640 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._.L.updateDeposits
d_updateDeposits_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1800 v0 ~v1 = du_updateDeposits_1800 v0
du_updateDeposits_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1800 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2462 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1912 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1940 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-CertEnv
d_To'45'CertEnv_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_2006 ~v0 ~v1 = du_To'45'CertEnv_2006
du_To'45'CertEnv_2006 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_2006
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_968
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2096 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1040
d_dState_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1080 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2098 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1058
d_gState_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1084 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2100 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1082 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2168 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_2170 ~v0 ~v1 = du_To'45'LEnv_2170
du_To'45'LEnv_2170 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_2170
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2286
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2172 ~v0 ~v1 = du_allColdCreds_2172
du_allColdCreds_2172 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2172
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2276
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2176 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2150 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2176 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2168 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2178 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2150 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2178 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2166 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2180 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2150 -> Maybe AgdaAny
d_ppolicy_2180 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2164 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2182 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2150 -> AgdaAny
d_slot_2182 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2162 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2184 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2150 -> Integer
d_treasury_2184 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2170 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2186 a0 a1 = ()
data T_LState_2186
  = C_LState'46'constructor_4739 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
                                 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2194 ::
  T_LState_2186 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
d_utxoSt_2194 v0
  = case coe v0 of
      C_LState'46'constructor_4739 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2196 ::
  T_LState_2186 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2196 v0
  = case coe v0 of
      C_LState'46'constructor_4739 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2198 ::
  T_LState_2186 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
d_certState_2198 v0
  = case coe v0 of
      C_LState'46'constructor_4739 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.To-LState
d_To'45'LState_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_2200 ~v0 ~v1 = du_To'45'LState_2200
du_To'45'LState_2200 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_2200
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2186 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger.LState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1608 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger._.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2186 :: Integer) (16262344046643431141 :: Integer)
                                    "Ledger.Conway.Conformance.Ledger.LState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (1560 :: Integer) (16262344046643431141 :: Integer)
                                    "Ledger.Conway.Conformance.Ledger._.GovState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.To.d_getCodPi_22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2186 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger.LState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1940 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_LState'46'constructor_4739))
-- Ledger.Conway.Conformance.Ledger.txgov
d_txgov_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2202 ~v0 ~v1 v2 = du_txgov_2202 v2
du_txgov_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2202 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2580 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2578 (coe v0)))
-- Ledger.Conway.Conformance.Ledger.isUnregisteredDRep
d_isUnregisteredDRep_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isUnregisteredDRep_2252 = erased
-- Ledger.Conway.Conformance.Ledger.removeOrphanDRepVotes
d_removeOrphanDRepVotes_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768
d_removeOrphanDRepVotes_2268 v0 ~v1 v2 v3
  = du_removeOrphanDRepVotes_2268 v0 v2 v3
du_removeOrphanDRepVotes_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768
du_removeOrphanDRepVotes_2268 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4209
      (coe du_votes'8242'_2278 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_782 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_784 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_786 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_788 (coe v2))
-- Ledger.Conway.Conformance.Ledger._.votes′
d_votes'8242'_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes'8242'_2278 v0 ~v1 v2 v3 = du_votes'8242'_2278 v0 v2 v3
du_votes'8242'_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_votes'8242'_2278 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_790)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                    (coe
                       MAlonzo.Code.Class.IsSet.du_dom_548
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1066
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1084
                             (coe v1)))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
      (MAlonzo.Code.Ledger.GovernanceActions.d_votes_780 (coe v2))
-- Ledger.Conway.Conformance.Ledger._|ᵒ_
d__'124''7506'__2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'124''7506'__2280 v0 ~v1 v2 v3 = du__'124''7506'__2280 v0 v2 v3
du__'124''7506'__2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'124''7506'__2280 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_removeOrphanDRepVotes_2268 (coe v0) (coe v2)))
      (coe v1)
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2302 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2302
  = C_LEDGER'45'V_2402 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2482 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
d_certState_2306 ~v0 ~v1 v2 = du_certState_2306 v2
du_certState_2306 ::
  T_GeneralizeTel_13285 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
du_certState_2306 v0
  = coe
      d_certState_2198 (coe d_'46'generalizedField'45's_13273 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2308 ~v0 ~v1 v2 = du_govSt_2308 v2
du_govSt_2308 ::
  T_GeneralizeTel_13285 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2308 v0
  = coe d_govSt_2196 (coe d_'46'generalizedField'45's_13273 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
d_utxoSt_2310 ~v0 ~v1 v2 = du_utxoSt_2310 v2
du_utxoSt_2310 ::
  T_GeneralizeTel_13285 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
du_utxoSt_2310 v0
  = coe
      d_utxoSt_2194 (coe d_'46'generalizedField'45's_13273 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 -> [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_2332 ~v0 ~v1 v2 = du_txcerts_2332 v2
du_txcerts_2332 ::
  T_GeneralizeTel_13285 -> [MAlonzo.Code.Ledger.Certs.T_DCert_832]
du_txcerts_2332 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2574
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_13275 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 -> AgdaAny
d_txid_2338 ~v0 ~v1 v2 = du_txid_2338 v2
du_txid_2338 :: T_GeneralizeTel_13285 -> AgdaAny
du_txid_2338 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2594
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_13275 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724]
d_txvote_2352 ~v0 ~v1 v2 = du_txvote_2352 v2
du_txvote_2352 ::
  T_GeneralizeTel_13285 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724]
du_txvote_2352 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2578
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_13275 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2354 ~v0 ~v1 v2 = du_txwdrls_2354 v2
du_txwdrls_2354 ::
  T_GeneralizeTel_13285 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2354 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2576
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_13275 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2358 ~v0 ~v1 v2 = du_enactState_2358 v2
du_enactState_2358 ::
  T_GeneralizeTel_13285 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2358 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2168
      (coe d_'46'generalizedField'45'Γ_13277 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2360 ~v0 ~v1 v2 = du_pparams_2360 v2
du_pparams_2360 ::
  T_GeneralizeTel_13285 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2360 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2166
      (coe d_'46'generalizedField'45'Γ_13277 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 -> Maybe AgdaAny
d_ppolicy_2362 ~v0 ~v1 v2 = du_ppolicy_2362 v2
du_ppolicy_2362 :: T_GeneralizeTel_13285 -> Maybe AgdaAny
du_ppolicy_2362 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2164
      (coe d_'46'generalizedField'45'Γ_13277 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 -> AgdaAny
d_slot_2364 ~v0 ~v1 v2 = du_slot_2364 v2
du_slot_2364 :: T_GeneralizeTel_13285 -> AgdaAny
du_slot_2364 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2162
      (coe d_'46'generalizedField'45'Γ_13277 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1040
d_dState_2370 ~v0 ~v1 v2 = du_dState_2370 v2
du_dState_2370 ::
  T_GeneralizeTel_13285 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1040
du_dState_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1080
      (coe
         d_certState_2198 (coe d_'46'generalizedField'45's_13273 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2380 ~v0 ~v1 v2 = du_rewards_2380 v2
du_rewards_2380 ::
  T_GeneralizeTel_13285 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1054
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1080
         (coe
            d_certState_2198 (coe d_'46'generalizedField'45's_13273 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2394 ~v0 ~v1 v2 = du_pparams_2394 v2
du_pparams_2394 ::
  T_GeneralizeTel_13285 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2394 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2166
      (coe d_'46'generalizedField'45'Γ_13277 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 -> AgdaAny
d_slot_2398 ~v0 ~v1 v2 = du_slot_2398 v2
du_slot_2398 :: T_GeneralizeTel_13285 -> AgdaAny
du_slot_2398 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2162
      (coe d_'46'generalizedField'45'Γ_13277 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13285 -> Integer
d_treasury_2400 ~v0 ~v1 v2 = du_treasury_2400 v2
du_treasury_2400 :: T_GeneralizeTel_13285 -> Integer
du_treasury_2400 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2170
      (coe d_'46'generalizedField'45'Γ_13277 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18267 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
d_certState_2406 ~v0 ~v1 v2 = du_certState_2406 v2
du_certState_2406 ::
  T_GeneralizeTel_18267 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
du_certState_2406 v0
  = coe
      d_certState_2198 (coe d_'46'generalizedField'45's_18259 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18267 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2408 ~v0 ~v1 v2 = du_govSt_2408 v2
du_govSt_2408 ::
  T_GeneralizeTel_18267 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2408 v0
  = coe d_govSt_2196 (coe d_'46'generalizedField'45's_18259 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18267 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
d_utxoSt_2410 ~v0 ~v1 v2 = du_utxoSt_2410 v2
du_utxoSt_2410 ::
  T_GeneralizeTel_18267 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
du_utxoSt_2410 v0
  = coe
      d_utxoSt_2194 (coe d_'46'generalizedField'45's_18259 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18267 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2474 ~v0 ~v1 v2 = du_pparams_2474 v2
du_pparams_2474 ::
  T_GeneralizeTel_18267 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2474 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2166
      (coe d_'46'generalizedField'45'Γ_18263 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18267 -> AgdaAny
d_slot_2478 ~v0 ~v1 v2 = du_slot_2478 v2
du_slot_2478 :: T_GeneralizeTel_18267 -> AgdaAny
du_slot_2478 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2162
      (coe d_'46'generalizedField'45'Γ_18263 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18267 -> Integer
d_treasury_2480 ~v0 ~v1 v2 = du_treasury_2480 v2
du_treasury_2480 :: T_GeneralizeTel_18267 -> Integer
du_treasury_2480 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2170
      (coe d_'46'generalizedField'45'Γ_18263 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2150 ->
  T_LState_2186 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2622] -> T_LState_2186 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2500 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13273 ::
  T_GeneralizeTel_13285 -> T_LState_2186
d_'46'generalizedField'45's_13273 v0
  = case coe v0 of
      C_mkGeneralizeTel_13287 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13275 ::
  T_GeneralizeTel_13285 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2622
d_'46'generalizedField'45'tx_13275 v0
  = case coe v0 of
      C_mkGeneralizeTel_13287 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13277 ::
  T_GeneralizeTel_13285 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2150
d_'46'generalizedField'45'Γ_13277 v0
  = case coe v0 of
      C_mkGeneralizeTel_13287 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13279 ::
  T_GeneralizeTel_13285 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
d_'46'generalizedField'45'utxoSt''_13279 v0
  = case coe v0 of
      C_mkGeneralizeTel_13287 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_13281 ::
  T_GeneralizeTel_13285 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
d_'46'generalizedField'45'certState''_13281 v0
  = case coe v0 of
      C_mkGeneralizeTel_13287 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_13283 ::
  T_GeneralizeTel_13285 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_13283 v0
  = case coe v0 of
      C_mkGeneralizeTel_13287 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13285 a0 a1 = ()
data T_GeneralizeTel_13285
  = C_mkGeneralizeTel_13287 T_LState_2186
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2622
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2150
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_18259 ::
  T_GeneralizeTel_18267 -> T_LState_2186
d_'46'generalizedField'45's_18259 v0
  = case coe v0 of
      C_mkGeneralizeTel_18269 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_18261 ::
  T_GeneralizeTel_18267 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2622
d_'46'generalizedField'45'tx_18261 v0
  = case coe v0 of
      C_mkGeneralizeTel_18269 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_18263 ::
  T_GeneralizeTel_18267 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2150
d_'46'generalizedField'45'Γ_18263 v0
  = case coe v0 of
      C_mkGeneralizeTel_18269 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_18265 ::
  T_GeneralizeTel_18267 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
d_'46'generalizedField'45'utxoSt''_18265 v0
  = case coe v0 of
      C_mkGeneralizeTel_18269 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_18267 a0 a1 = ()
data T_GeneralizeTel_18267
  = C_mkGeneralizeTel_18269 T_LState_2186
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2622
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2150
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
