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
d_action_666 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_666 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_668 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_expiresIn_668 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_792 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_670 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_prevAction_670 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_796 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_672 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_672 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790 (coe v0)
-- _.GovActionState.votes
d_votes_674 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_674 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_788 (coe v0)
-- _.GovProposal.action
d_action_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_764 (coe v0)
-- _.GovProposal.anchor
d_anchor_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_696 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- _.GovProposal.deposit
d_deposit_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> Integer
d_deposit_698 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_770 (coe v0)
-- _.GovProposal.policy
d_policy_700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  Maybe AgdaAny
d_policy_700 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_768 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_702 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> AgdaAny
d_prevAction_702 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_766 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_704 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_704 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_772 (coe v0)
-- _.GovVote.anchor
d_anchor_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_748 (coe v0)
-- _.GovVote.gid
d_gid_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_718 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_742 (coe v0)
-- _.GovVote.vote
d_vote_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
d_vote_720 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_746 (coe v0)
-- _.GovVote.voter
d_voter_722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_722 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_744 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_744 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_746 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_748 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_750 a0 = ()
-- _.Tx.body
d_body_1376 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
d_body_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0)
-- _.Tx.isValid
d_isValid_1378 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Bool
d_isValid_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v0)
-- _.Tx.txAD
d_txAD_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Maybe AgdaAny
d_txAD_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2634 (coe v0)
-- _.Tx.wits
d_wits_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598
d_wits_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v0)
-- _.TxBody.collateral
d_collateral_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2592 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe Integer
d_curTreasury_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2586 (coe v0)
-- _.TxBody.mint
d_mint_1390 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
d_mint_1390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2566 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1392 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2560 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> [AgdaAny]
d_reqSigHash_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2594 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe AgdaAny
d_scriptIntHash_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2596 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe AgdaAny
d_txADhash_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2582 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe AgdaAny
d_txNetworkId_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2584 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2570 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txdonation_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2578 (coe v0)
-- _.TxBody.txfee
d_txfee_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txfee_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2564 (coe v0)
-- _.TxBody.txid
d_txid_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
d_txid_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2590 (coe v0)
-- _.TxBody.txins
d_txins_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2558 (coe v0)
-- _.TxBody.txouts
d_txouts_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2562 (coe v0)
-- _.TxBody.txprop
d_txprop_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750]
d_txprop_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2576 (coe v0)
-- _.TxBody.txsize
d_txsize_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txsize_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2588 (coe v0)
-- _.TxBody.txup
d_txup_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2580 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2568 (coe v0)
-- _.TxBody.txvote
d_txvote_1422 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_txvote_1422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2574 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1424 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1424 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2034 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1554 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv
d_GovEnv_1560 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 -> ()
d_GovState_1562 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv.certState
d_certState_1576 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2034 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
d_certState_1576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_certState_2058
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.enactState
d_enactState_1578 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2034 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_1578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_2056
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.epoch
d_epoch_1580 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2034 -> AgdaAny
d_epoch_1580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2050 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.pparams
d_pparams_1582 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2034 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_2052 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.ppolicy
d_ppolicy_1584 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2034 ->
  Maybe AgdaAny
d_ppolicy_1584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_2054 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.txid
d_txid_1586 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2034 -> AgdaAny
d_txid_1586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_2048 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1608 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1632 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1632 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1940 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1634 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926 -> Integer
d_donations_1634 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1942 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1636 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926 -> Integer
d_fees_1636 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1938 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1638 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1638 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1642 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._.L.updateDeposits
d_updateDeposits_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1800 v0 ~v1 = du_updateDeposits_1800 v0
du_updateDeposits_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1800 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2366 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1908 = erased
-- Ledger.Conway.Conformance.Ledger._.CertEnv
d_CertEnv_1934 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1936 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.CertEnv.coldCreds
d_coldCreds_2078 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_coldCreds_2078 v0
  = coe MAlonzo.Code.Ledger.Certs.d_coldCreds_888 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.epoch
d_epoch_2080 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_868 -> AgdaAny
d_epoch_2080 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_880 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.pp
d_pp_2082 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_2082 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_882 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.votes
d_votes_2084 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_votes_2084 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_884 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.wdrls
d_wdrls_2086 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2086 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_886 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2090 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1036
d_dState_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1080 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2092 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1056
d_gState_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1084 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2094 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.Certs.T_PState_908
d_pState_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1082 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2162 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2164 ~v0 ~v1 = du_allColdCreds_2164
du_allColdCreds_2164 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2164
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2248
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2170 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2132 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_2170 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2150 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2172 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2132 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2172 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2148 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2174 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2132 -> Maybe AgdaAny
d_ppolicy_2174 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2146 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2176 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2132 -> AgdaAny
d_slot_2176 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2144 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2178 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2132 -> Integer
d_treasury_2178 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2152 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2180 a0 a1 = ()
data T_LState_2180
  = C_'10214'_'44'_'44'_'10215''737'_2194 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2188 ::
  T_LState_2180 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
d_utxoSt_2188 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2194 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2190 ::
  T_LState_2180 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2190 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2194 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2192 ::
  T_LState_2180 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
d_certState_2192 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2194 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.txgov
d_txgov_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2196 ~v0 ~v1 v2 = du_txgov_2196 v2
du_txgov_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2196 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2576 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2574 (coe v0)))
-- Ledger.Conway.Conformance.Ledger.isUnregisteredDRep
d_isUnregisteredDRep_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isUnregisteredDRep_2246 = erased
-- Ledger.Conway.Conformance.Ledger.removeOrphanDRepVotes
d_removeOrphanDRepVotes_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776
d_removeOrphanDRepVotes_2254 v0 ~v1 v2 v3
  = du_removeOrphanDRepVotes_2254 v0 v2 v3
du_removeOrphanDRepVotes_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776
du_removeOrphanDRepVotes_2254 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6991
      (coe du_votes'8242'_2264 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_792 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_796 (coe v2))
-- Ledger.Conway.Conformance.Ledger._.votes′
d_votes'8242'_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes'8242'_2264 v0 ~v1 v2 v3 = du_votes'8242'_2264 v0 v2 v3
du_votes'8242'_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_votes'8242'_2264 v0 v1 v2
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
                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1064
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1084
                             (coe v1)))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
      (MAlonzo.Code.Ledger.GovernanceActions.d_votes_788 (coe v2))
-- Ledger.Conway.Conformance.Ledger._|ᵒ_
d__'124''7506'__2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'124''7506'__2266 v0 ~v1 v2 v3 = du__'124''7506'__2266 v0 v2 v3
du__'124''7506'__2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'124''7506'__2266 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_removeOrphanDRepVotes_2254 (coe v0) (coe v2)))
      (coe v1)
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2288 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2288
  = C_LEDGER'45'V_2370 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2450 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
d_certState_2292 ~v0 ~v1 v2 = du_certState_2292 v2
du_certState_2292 ::
  T_GeneralizeTel_10859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
du_certState_2292 v0
  = coe
      d_certState_2192 (coe d_'46'generalizedField'45's_10847 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2294 ~v0 ~v1 v2 = du_govSt_2294 v2
du_govSt_2294 ::
  T_GeneralizeTel_10859 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2294 v0
  = coe d_govSt_2190 (coe d_'46'generalizedField'45's_10847 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
d_utxoSt_2296 ~v0 ~v1 v2 = du_utxoSt_2296 v2
du_utxoSt_2296 ::
  T_GeneralizeTel_10859 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
du_utxoSt_2296 v0
  = coe
      d_utxoSt_2188 (coe d_'46'generalizedField'45's_10847 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 -> [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_2318 ~v0 ~v1 v2 = du_txcerts_2318 v2
du_txcerts_2318 ::
  T_GeneralizeTel_10859 -> [MAlonzo.Code.Ledger.Certs.T_DCert_832]
du_txcerts_2318 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2570
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_10849 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 -> AgdaAny
d_txid_2324 ~v0 ~v1 v2 = du_txid_2324 v2
du_txid_2324 :: T_GeneralizeTel_10859 -> AgdaAny
du_txid_2324 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_10849 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_txvote_2338 ~v0 ~v1 v2 = du_txvote_2338 v2
du_txvote_2338 ::
  T_GeneralizeTel_10859 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
du_txvote_2338 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2574
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_10849 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2340 ~v0 ~v1 v2 = du_txwdrls_2340 v2
du_txwdrls_2340 ::
  T_GeneralizeTel_10859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2340 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_10849 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_2344 ~v0 ~v1 v2 = du_enactState_2344 v2
du_enactState_2344 ::
  T_GeneralizeTel_10859 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
du_enactState_2344 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2150
      (coe d_'46'generalizedField'45'Γ_10851 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2346 ~v0 ~v1 v2 = du_pparams_2346 v2
du_pparams_2346 ::
  T_GeneralizeTel_10859 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2346 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2148
      (coe d_'46'generalizedField'45'Γ_10851 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 -> Maybe AgdaAny
d_ppolicy_2348 ~v0 ~v1 v2 = du_ppolicy_2348 v2
du_ppolicy_2348 :: T_GeneralizeTel_10859 -> Maybe AgdaAny
du_ppolicy_2348 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2146
      (coe d_'46'generalizedField'45'Γ_10851 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 -> AgdaAny
d_slot_2350 ~v0 ~v1 v2 = du_slot_2350 v2
du_slot_2350 :: T_GeneralizeTel_10859 -> AgdaAny
du_slot_2350 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2144
      (coe d_'46'generalizedField'45'Γ_10851 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2362 ~v0 ~v1 v2 = du_pparams_2362 v2
du_pparams_2362 ::
  T_GeneralizeTel_10859 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2362 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2148
      (coe d_'46'generalizedField'45'Γ_10851 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 -> AgdaAny
d_slot_2366 ~v0 ~v1 v2 = du_slot_2366 v2
du_slot_2366 :: T_GeneralizeTel_10859 -> AgdaAny
du_slot_2366 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2144
      (coe d_'46'generalizedField'45'Γ_10851 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_10859 -> Integer
d_treasury_2368 ~v0 ~v1 v2 = du_treasury_2368 v2
du_treasury_2368 :: T_GeneralizeTel_10859 -> Integer
du_treasury_2368 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2152
      (coe d_'46'generalizedField'45'Γ_10851 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_11279 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
d_certState_2374 ~v0 ~v1 v2 = du_certState_2374 v2
du_certState_2374 ::
  T_GeneralizeTel_11279 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
du_certState_2374 v0
  = coe
      d_certState_2192 (coe d_'46'generalizedField'45's_11271 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_11279 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2376 ~v0 ~v1 v2 = du_govSt_2376 v2
du_govSt_2376 ::
  T_GeneralizeTel_11279 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2376 v0
  = coe d_govSt_2190 (coe d_'46'generalizedField'45's_11271 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_11279 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
d_utxoSt_2378 ~v0 ~v1 v2 = du_utxoSt_2378 v2
du_utxoSt_2378 ::
  T_GeneralizeTel_11279 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
du_utxoSt_2378 v0
  = coe
      d_utxoSt_2188 (coe d_'46'generalizedField'45's_11271 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_11279 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2442 ~v0 ~v1 v2 = du_pparams_2442 v2
du_pparams_2442 ::
  T_GeneralizeTel_11279 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2442 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2148
      (coe d_'46'generalizedField'45'Γ_11275 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_11279 -> AgdaAny
d_slot_2446 ~v0 ~v1 v2 = du_slot_2446 v2
du_slot_2446 :: T_GeneralizeTel_11279 -> AgdaAny
du_slot_2446 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2144
      (coe d_'46'generalizedField'45'Γ_11275 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_11279 -> Integer
d_treasury_2448 ~v0 ~v1 v2 = du_treasury_2448 v2
du_treasury_2448 :: T_GeneralizeTel_11279 -> Integer
du_treasury_2448 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2152
      (coe d_'46'generalizedField'45'Γ_11275 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2132 ->
  T_LState_2180 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2618] -> T_LState_2180 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2468 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_10847 ::
  T_GeneralizeTel_10859 -> T_LState_2180
d_'46'generalizedField'45's_10847 v0
  = case coe v0 of
      C_mkGeneralizeTel_10861 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_10849 ::
  T_GeneralizeTel_10859 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2618
d_'46'generalizedField'45'tx_10849 v0
  = case coe v0 of
      C_mkGeneralizeTel_10861 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_10851 ::
  T_GeneralizeTel_10859 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2132
d_'46'generalizedField'45'Γ_10851 v0
  = case coe v0 of
      C_mkGeneralizeTel_10861 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_10853 ::
  T_GeneralizeTel_10859 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
d_'46'generalizedField'45'utxoSt''_10853 v0
  = case coe v0 of
      C_mkGeneralizeTel_10861 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_10855 ::
  T_GeneralizeTel_10859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
d_'46'generalizedField'45'certState''_10855 v0
  = case coe v0 of
      C_mkGeneralizeTel_10861 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_10857 ::
  T_GeneralizeTel_10859 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_10857 v0
  = case coe v0 of
      C_mkGeneralizeTel_10861 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_10859 a0 a1 = ()
data T_GeneralizeTel_10859
  = C_mkGeneralizeTel_10861 T_LState_2180
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2618
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2132
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_11271 ::
  T_GeneralizeTel_11279 -> T_LState_2180
d_'46'generalizedField'45's_11271 v0
  = case coe v0 of
      C_mkGeneralizeTel_11281 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_11273 ::
  T_GeneralizeTel_11279 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2618
d_'46'generalizedField'45'tx_11273 v0
  = case coe v0 of
      C_mkGeneralizeTel_11281 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_11275 ::
  T_GeneralizeTel_11279 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2132
d_'46'generalizedField'45'Γ_11275 v0
  = case coe v0 of
      C_mkGeneralizeTel_11281 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_11277 ::
  T_GeneralizeTel_11279 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
d_'46'generalizedField'45'utxoSt''_11277 v0
  = case coe v0 of
      C_mkGeneralizeTel_11281 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_11279 a0 a1 = ()
data T_GeneralizeTel_11279
  = C_mkGeneralizeTel_11281 T_LState_2180
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2618
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2132
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
