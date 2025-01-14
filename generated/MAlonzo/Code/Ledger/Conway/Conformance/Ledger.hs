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
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Base
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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_90 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_90 ~v0 = du_DecEq'45'GovRole_90
du_DecEq'45'GovRole_90 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_90
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_798
-- _.GovActionState
d_GovActionState_156 a0 = ()
-- _.GovProposal
d_GovProposal_160 a0 = ()
-- _.GovVote
d_GovVote_164 a0 = ()
-- _.Tx
d_Tx_356 a0 = ()
-- _.TxBody
d_TxBody_358 a0 = ()
-- _.Voter
d_Voter_392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_392 = erased
-- _.epoch
d_epoch_426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_426 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0))
-- _.GovActionState.action
d_action_664 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_664 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_666 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_expiresIn_666 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_792 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_668 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_prevAction_668 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_796 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_670 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_670 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790 (coe v0)
-- _.GovActionState.votes
d_votes_672 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_672 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_788 (coe v0)
-- _.GovProposal.action
d_action_692 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_692 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_764 (coe v0)
-- _.GovProposal.anchor
d_anchor_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- _.GovProposal.deposit
d_deposit_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> Integer
d_deposit_696 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_770 (coe v0)
-- _.GovProposal.policy
d_policy_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  Maybe AgdaAny
d_policy_698 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_768 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> AgdaAny
d_prevAction_700 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_766 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_702 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_702 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_772 (coe v0)
-- _.GovVote.anchor
d_anchor_714 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_714 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_748 (coe v0)
-- _.GovVote.gid
d_gid_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_742 (coe v0)
-- _.GovVote.vote
d_vote_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
d_vote_718 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_746 (coe v0)
-- _.GovVote.voter
d_voter_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_720 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_744 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_742 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_744 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_746 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_748 a0 = ()
-- _.Tx.body
d_body_1372 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514
d_body_1372 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v0)
-- _.Tx.isValid
d_isValid_1374 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Bool
d_isValid_1374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2630 (coe v0)
-- _.Tx.txAD
d_txAD_1376 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Maybe AgdaAny
d_txAD_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2632 (coe v0)
-- _.Tx.wits
d_wits_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2596
d_wits_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2628 (coe v0)
-- _.TxBody.collateral
d_collateral_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2590 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Maybe Integer
d_curTreasury_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2584 (coe v0)
-- _.TxBody.mint
d_mint_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> AgdaAny
d_mint_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2564 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2558 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1390 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> [AgdaAny]
d_reqSigHash_1390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2592 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1392 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Maybe AgdaAny
d_scriptIntHash_1392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2594 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Maybe AgdaAny
d_txADhash_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2580 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Maybe AgdaAny
d_txNetworkId_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2582 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830]
d_txcerts_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2568 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Integer
d_txdonation_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2576 (coe v0)
-- _.TxBody.txfee
d_txfee_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Integer
d_txfee_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2562 (coe v0)
-- _.TxBody.txid
d_txid_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> AgdaAny
d_txid_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2588 (coe v0)
-- _.TxBody.txins
d_txins_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2556 (coe v0)
-- _.TxBody.txouts
d_txouts_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2560 (coe v0)
-- _.TxBody.txprop
d_txprop_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750]
d_txprop_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2574 (coe v0)
-- _.TxBody.txsize
d_txsize_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Integer
d_txsize_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2586 (coe v0)
-- _.TxBody.txup
d_txup_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2578 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2566 (coe v0)
-- _.TxBody.txvote
d_txvote_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_txvote_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2572 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2570 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2028 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1550 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv
d_GovEnv_1556 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 -> ()
d_GovState_1558 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv.certState
d_certState_1572 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2028 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068
d_certState_1572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_certState_2052
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.enactState
d_enactState_1574 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2028 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_1574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_2050
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.epoch
d_epoch_1576 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2028 -> AgdaAny
d_epoch_1576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2044 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.pparams
d_pparams_1578 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2028 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_2046 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.ppolicy
d_ppolicy_1580 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2028 ->
  Maybe AgdaAny
d_ppolicy_1580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_2048 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.txid
d_txid_1582 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2028 -> AgdaAny
d_txid_1582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_2042 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1604 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1628 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1628 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1934 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1630 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 -> Integer
d_donations_1630 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1936 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1632 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 -> Integer
d_fees_1632 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1932 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1634 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1634 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1930 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1638 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._.L.updateDeposits
d_updateDeposits_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1796 v0 ~v1 = du_updateDeposits_1796 v0
du_updateDeposits_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1796 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2360 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1904 = erased
-- Ledger.Conway.Conformance.Ledger._.CertEnv
d_CertEnv_1930 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1932 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.CertEnv.epoch
d_epoch_2074 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_866 -> AgdaAny
d_epoch_2074 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_876 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.pp
d_pp_2076 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_2076 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_878 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.votes
d_votes_2078 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_votes_2078 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_880 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.wdrls
d_wdrls_2080 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2080 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_882 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2084 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1032
d_dState_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2086 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1052
d_gState_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2088 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068 ->
  MAlonzo.Code.Ledger.Certs.T_PState_902
d_pState_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1078 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2156 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2162 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2126 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2162 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2144 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2164 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2126 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2164 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2142 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2166 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2126 -> Maybe AgdaAny
d_ppolicy_2166 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2140 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2168 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2126 -> AgdaAny
d_slot_2168 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2138 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2170 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2126 -> Integer
d_treasury_2170 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2146 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2172 a0 a1 = ()
data T_LState_2172
  = C_'10214'_'44'_'44'_'10215''737'_2186 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2180 ::
  T_LState_2172 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
d_utxoSt_2180 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2186 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2182 ::
  T_LState_2172 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2182 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2186 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2184 ::
  T_LState_2172 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068
d_certState_2184 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2186 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.txgov
d_txgov_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2188 ~v0 ~v1 v2 = du_txgov_2188 v2
du_txgov_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2188 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2574 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2572 (coe v0)))
-- Ledger.Conway.Conformance.Ledger.isUnregisteredDRep
d_isUnregisteredDRep_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isUnregisteredDRep_2238 = erased
-- Ledger.Conway.Conformance.Ledger.removeOrphanDRepVotes
d_removeOrphanDRepVotes_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776
d_removeOrphanDRepVotes_2246 v0 ~v1 v2 v3
  = du_removeOrphanDRepVotes_2246 v0 v2 v3
du_removeOrphanDRepVotes_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776
du_removeOrphanDRepVotes_2246 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6991
      (coe du_votes'8242'_2256 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_792 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_796 (coe v2))
-- Ledger.Conway.Conformance.Ledger._.votes′
d_votes'8242'_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes'8242'_2256 v0 ~v1 v2 v3 = du_votes'8242'_2256 v0 v2 v3
du_votes'8242'_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_votes'8242'_2256 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_798)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664))
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
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                    (coe
                       MAlonzo.Code.Class.IsSet.du_dom_548
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1060
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080
                             (coe v1)))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
      (MAlonzo.Code.Ledger.GovernanceActions.d_votes_788 (coe v2))
-- Ledger.Conway.Conformance.Ledger._|ᵒ_
d__'124''7506'__2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'124''7506'__2258 v0 ~v1 v2 v3 = du__'124''7506'__2258 v0 v2 v3
du__'124''7506'__2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'124''7506'__2258 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_removeOrphanDRepVotes_2246 (coe v0) (coe v2)))
      (coe v1)
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2280 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2280
  = C_LEDGER'45'V_2362 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2442 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068
d_certState_2284 ~v0 ~v1 v2 = du_certState_2284 v2
du_certState_2284 ::
  T_GeneralizeTel_10805 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068
du_certState_2284 v0
  = coe
      d_certState_2184 (coe d_'46'generalizedField'45's_10793 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2286 ~v0 ~v1 v2 = du_govSt_2286 v2
du_govSt_2286 ::
  T_GeneralizeTel_10805 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2286 v0
  = coe d_govSt_2182 (coe d_'46'generalizedField'45's_10793 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
d_utxoSt_2288 ~v0 ~v1 v2 = du_utxoSt_2288 v2
du_utxoSt_2288 ::
  T_GeneralizeTel_10805 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
du_utxoSt_2288 v0
  = coe
      d_utxoSt_2180 (coe d_'46'generalizedField'45's_10793 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 -> [MAlonzo.Code.Ledger.Certs.T_DCert_830]
d_txcerts_2310 ~v0 ~v1 v2 = du_txcerts_2310 v2
du_txcerts_2310 ::
  T_GeneralizeTel_10805 -> [MAlonzo.Code.Ledger.Certs.T_DCert_830]
du_txcerts_2310 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2568
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_10795 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 -> AgdaAny
d_txid_2316 ~v0 ~v1 v2 = du_txid_2316 v2
du_txid_2316 :: T_GeneralizeTel_10805 -> AgdaAny
du_txid_2316 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_10795 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_txvote_2330 ~v0 ~v1 v2 = du_txvote_2330 v2
du_txvote_2330 ::
  T_GeneralizeTel_10805 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
du_txvote_2330 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_10795 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2332 ~v0 ~v1 v2 = du_txwdrls_2332 v2
du_txwdrls_2332 ::
  T_GeneralizeTel_10805 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2332 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2570
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_10795 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2336 ~v0 ~v1 v2 = du_enactState_2336 v2
du_enactState_2336 ::
  T_GeneralizeTel_10805 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2336 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2144
      (coe d_'46'generalizedField'45'Γ_10797 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2338 ~v0 ~v1 v2 = du_pparams_2338 v2
du_pparams_2338 ::
  T_GeneralizeTel_10805 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2338 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2142
      (coe d_'46'generalizedField'45'Γ_10797 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 -> Maybe AgdaAny
d_ppolicy_2340 ~v0 ~v1 v2 = du_ppolicy_2340 v2
du_ppolicy_2340 :: T_GeneralizeTel_10805 -> Maybe AgdaAny
du_ppolicy_2340 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2140
      (coe d_'46'generalizedField'45'Γ_10797 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 -> AgdaAny
d_slot_2342 ~v0 ~v1 v2 = du_slot_2342 v2
du_slot_2342 :: T_GeneralizeTel_10805 -> AgdaAny
du_slot_2342 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2138
      (coe d_'46'generalizedField'45'Γ_10797 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2354 ~v0 ~v1 v2 = du_pparams_2354 v2
du_pparams_2354 ::
  T_GeneralizeTel_10805 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2354 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2142
      (coe d_'46'generalizedField'45'Γ_10797 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 -> AgdaAny
d_slot_2358 ~v0 ~v1 v2 = du_slot_2358 v2
du_slot_2358 :: T_GeneralizeTel_10805 -> AgdaAny
du_slot_2358 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2138
      (coe d_'46'generalizedField'45'Γ_10797 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_10805 -> Integer
d_treasury_2360 ~v0 ~v1 v2 = du_treasury_2360 v2
du_treasury_2360 :: T_GeneralizeTel_10805 -> Integer
du_treasury_2360 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2146
      (coe d_'46'generalizedField'45'Γ_10797 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11225 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068
d_certState_2366 ~v0 ~v1 v2 = du_certState_2366 v2
du_certState_2366 ::
  T_GeneralizeTel_11225 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068
du_certState_2366 v0
  = coe
      d_certState_2184 (coe d_'46'generalizedField'45's_11217 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11225 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2368 ~v0 ~v1 v2 = du_govSt_2368 v2
du_govSt_2368 ::
  T_GeneralizeTel_11225 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2368 v0
  = coe d_govSt_2182 (coe d_'46'generalizedField'45's_11217 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11225 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
d_utxoSt_2370 ~v0 ~v1 v2 = du_utxoSt_2370 v2
du_utxoSt_2370 ::
  T_GeneralizeTel_11225 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
du_utxoSt_2370 v0
  = coe
      d_utxoSt_2180 (coe d_'46'generalizedField'45's_11217 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2434 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11225 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2434 ~v0 ~v1 v2 = du_pparams_2434 v2
du_pparams_2434 ::
  T_GeneralizeTel_11225 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2434 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2142
      (coe d_'46'generalizedField'45'Γ_11221 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11225 -> AgdaAny
d_slot_2438 ~v0 ~v1 v2 = du_slot_2438 v2
du_slot_2438 :: T_GeneralizeTel_11225 -> AgdaAny
du_slot_2438 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2138
      (coe d_'46'generalizedField'45'Γ_11221 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11225 -> Integer
d_treasury_2440 ~v0 ~v1 v2 = du_treasury_2440 v2
du_treasury_2440 :: T_GeneralizeTel_11225 -> Integer
du_treasury_2440 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2146
      (coe d_'46'generalizedField'45'Γ_11221 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2460 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2126 ->
  T_LState_2172 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2616] -> T_LState_2172 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2460 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_10793 ::
  T_GeneralizeTel_10805 -> T_LState_2172
d_'46'generalizedField'45's_10793 v0
  = case coe v0 of
      C_mkGeneralizeTel_10807 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_10795 ::
  T_GeneralizeTel_10805 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2616
d_'46'generalizedField'45'tx_10795 v0
  = case coe v0 of
      C_mkGeneralizeTel_10807 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_10797 ::
  T_GeneralizeTel_10805 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2126
d_'46'generalizedField'45'Γ_10797 v0
  = case coe v0 of
      C_mkGeneralizeTel_10807 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_10799 ::
  T_GeneralizeTel_10805 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
d_'46'generalizedField'45'utxoSt''_10799 v0
  = case coe v0 of
      C_mkGeneralizeTel_10807 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_10801 ::
  T_GeneralizeTel_10805 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068
d_'46'generalizedField'45'certState''_10801 v0
  = case coe v0 of
      C_mkGeneralizeTel_10807 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_10803 ::
  T_GeneralizeTel_10805 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_10803 v0
  = case coe v0 of
      C_mkGeneralizeTel_10807 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_10805 a0 a1 = ()
data T_GeneralizeTel_10805
  = C_mkGeneralizeTel_10807 T_LState_2172
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2616
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2126
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_11217 ::
  T_GeneralizeTel_11225 -> T_LState_2172
d_'46'generalizedField'45's_11217 v0
  = case coe v0 of
      C_mkGeneralizeTel_11227 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_11219 ::
  T_GeneralizeTel_11225 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2616
d_'46'generalizedField'45'tx_11219 v0
  = case coe v0 of
      C_mkGeneralizeTel_11227 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_11221 ::
  T_GeneralizeTel_11225 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2126
d_'46'generalizedField'45'Γ_11221 v0
  = case coe v0 of
      C_mkGeneralizeTel_11227 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_11223 ::
  T_GeneralizeTel_11225 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
d_'46'generalizedField'45'utxoSt''_11223 v0
  = case coe v0 of
      C_mkGeneralizeTel_11227 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_11225 a0 a1 = ()
data T_GeneralizeTel_11225
  = C_mkGeneralizeTel_11227 T_LState_2172
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2616
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2126
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
