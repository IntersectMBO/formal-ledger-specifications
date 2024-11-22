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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_90 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_90 ~v0 = du_DecEq'45'GovRole_90
du_DecEq'45'GovRole_90 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_90
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824
-- _.GovActionState
d_GovActionState_160 a0 = ()
-- _.GovProposal
d_GovProposal_164 a0 = ()
-- _.GovVote
d_GovVote_168 a0 = ()
-- _.Tx
d_Tx_368 a0 = ()
-- _.TxBody
d_TxBody_370 a0 = ()
-- _.Voter
d_Voter_404 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_404 = erased
-- _.epoch
d_epoch_438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_438 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
-- _.GovActionState.action
d_action_678 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_678 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_680 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_expiresIn_680 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_818 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_682 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_prevAction_682 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_822 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_684 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_684 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v0)
-- _.GovActionState.votes
d_votes_686 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_686 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_814 (coe v0)
-- _.GovProposal.action
d_action_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_718 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_790 (coe v0)
-- _.GovProposal.anchor
d_anchor_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_720 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_800 (coe v0)
-- _.GovProposal.deposit
d_deposit_722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> Integer
d_deposit_722 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_796 (coe v0)
-- _.GovProposal.policy
d_policy_724 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Maybe AgdaAny
d_policy_724 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_794 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_726 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> AgdaAny
d_prevAction_726 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_792 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_728 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_728 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_798 (coe v0)
-- _.GovVote.anchor
d_anchor_740 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_740 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- _.GovVote.gid
d_gid_742 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_742 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_768 (coe v0)
-- _.GovVote.vote
d_vote_744 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
d_vote_744 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_772 (coe v0)
-- _.GovVote.voter
d_voter_746 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_746 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_768 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_770 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_772 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_774 a0 = ()
-- _.Tx.body
d_body_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570
d_body_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2682 (coe v0)
-- _.Tx.isValid
d_isValid_1402 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2672 -> Bool
d_isValid_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2686 (coe v0)
-- _.Tx.txAD
d_txAD_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 -> Maybe AgdaAny
d_txAD_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2688 (coe v0)
-- _.Tx.wits
d_wits_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2652
d_wits_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2684 (coe v0)
-- _.TxBody.collateral
d_collateral_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2646 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> Maybe Integer
d_curTreasury_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2640 (coe v0)
-- _.TxBody.mint
d_mint_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> AgdaAny
d_mint_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2620 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2614 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> [AgdaAny]
d_reqSigHash_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2648 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> Maybe AgdaAny
d_scriptIntHash_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2650 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1422 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> Maybe AgdaAny
d_txADhash_1422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2636 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1424 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> Maybe AgdaAny
d_txNetworkId_1424 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2638 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1426 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_1426 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2624 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1428 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> Integer
d_txdonation_1428 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2632 (coe v0)
-- _.TxBody.txfee
d_txfee_1430 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> Integer
d_txfee_1430 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2618 (coe v0)
-- _.TxBody.txid
d_txid_1432 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> AgdaAny
d_txid_1432 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2644 (coe v0)
-- _.TxBody.txins
d_txins_1434 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1434 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2612 (coe v0)
-- _.TxBody.txouts
d_txouts_1436 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1436 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2616 (coe v0)
-- _.TxBody.txprop
d_txprop_1438 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776]
d_txprop_1438 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2630 (coe v0)
-- _.TxBody.txsize
d_txsize_1440 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> Integer
d_txsize_1440 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2642 (coe v0)
-- _.TxBody.txup
d_txup_1442 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1442 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2634 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1444 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1444 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2622 (coe v0)
-- _.TxBody.txvote
d_txvote_1446 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_1446 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2628 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1448 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1448 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2626 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1588 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv
d_GovEnv_1596 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 -> ()
d_GovState_1598 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv.certState
d_certState_1666 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094
d_certState_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_certState_1964
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.enactState
d_enactState_1668 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1962
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.epoch
d_epoch_1670 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 -> AgdaAny
d_epoch_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1956 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.pparams
d_pparams_1672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1958 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.ppolicy
d_ppolicy_1674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 ->
  Maybe AgdaAny
d_ppolicy_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_1960 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.txid
d_txid_1676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 -> AgdaAny
d_txid_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_1954 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1706 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1720 v0 ~v1 = du_updateDeposits_1720 v0
du_updateDeposits_1720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateDeposits_2138
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.L.UTxOState
d_UTxOState_1772 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.L.UTxOState.deposits
d_deposits_1890 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1890 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1962 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.L.UTxOState.donations
d_donations_1892 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 -> Integer
d_donations_1892 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1964 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.L.UTxOState.fees
d_fees_1894 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 -> Integer
d_fees_1894 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1960 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.L.UTxOState.utxo
d_utxo_1896 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1896 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1930 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_890 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2196 = erased
-- Ledger.Conway.Conformance.Ledger._.CertEnv
d_CertEnv_2222 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2224 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.CertEnv.epoch
d_epoch_2362 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_890 -> AgdaAny
d_epoch_2362 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_900 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.pp
d_pp_2364 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_890 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_2364 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_902 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.votes
d_votes_2366 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_890 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_votes_2366 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_904 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.wdrls
d_wdrls_2368 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2368 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_906 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1058
d_dState_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1102 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2374 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1078
d_gState_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1106 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2376 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  MAlonzo.Code.Ledger.Certs.T_PState_926
d_pState_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1104 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2444 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2450 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2450 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2172 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2452 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2452 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2170 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2454 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 -> Maybe AgdaAny
d_ppolicy_2454 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2168 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2456 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 -> AgdaAny
d_slot_2456 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2166 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2458 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 -> Integer
d_treasury_2458 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2174 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2460 a0 a1 = ()
data T_LState_2460
  = C_'10214'_'44'_'44'_'10215''737'_2474 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2468 ::
  T_LState_2460 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
d_utxoSt_2468 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2474 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2470 ::
  T_LState_2460 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2470 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2474 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2472 ::
  T_LState_2460 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094
d_certState_2472 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2474 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.txgov
d_txgov_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2476 ~v0 ~v1 v2 = du_txgov_2476 v2
du_txgov_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2476 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2630 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2628 (coe v0)))
-- Ledger.Conway.Conformance.Ledger.isUnregisteredDRep
d_isUnregisteredDRep_2526 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isUnregisteredDRep_2526 = erased
-- Ledger.Conway.Conformance.Ledger.removeOrphanDRepVotes
d_removeOrphanDRepVotes_2534 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802
d_removeOrphanDRepVotes_2534 v0 ~v1 v2 v3
  = du_removeOrphanDRepVotes_2534 v0 v2 v3
du_removeOrphanDRepVotes_2534 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802
du_removeOrphanDRepVotes_2534 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_7003
      (coe du_votes'8242'_2544 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_818 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_822 (coe v2))
-- Ledger.Conway.Conformance.Ledger._.votes′
d_votes'8242'_2544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes'8242'_2544 v0 ~v1 v2 v3 = du_votes'8242'_2544 v0 v2 v3
du_votes'8242'_2544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_votes'8242'_2544 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_690))
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
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                    (coe
                       MAlonzo.Code.Class.IsSet.du_dom_548
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1086
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1106
                             (coe v1)))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
      (MAlonzo.Code.Ledger.GovernanceActions.d_votes_814 (coe v2))
-- Ledger.Conway.Conformance.Ledger._|ᵒ_
d__'124''7506'__2546 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'124''7506'__2546 v0 ~v1 v2 v3 = du__'124''7506'__2546 v0 v2 v3
du__'124''7506'__2546 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'124''7506'__2546 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_removeOrphanDRepVotes_2534 (coe v0) (coe v2)))
      (coe v1)
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2568 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2568
  = C_LEDGER'45'V_2650 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2730 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2572 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094
d_certState_2572 ~v0 ~v1 v2 = du_certState_2572 v2
du_certState_2572 ::
  T_GeneralizeTel_12139 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094
du_certState_2572 v0
  = coe
      d_certState_2472 (coe d_'46'generalizedField'45's_12127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2574 ~v0 ~v1 v2 = du_govSt_2574 v2
du_govSt_2574 ::
  T_GeneralizeTel_12139 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2574 v0
  = coe d_govSt_2470 (coe d_'46'generalizedField'45's_12127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2576 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
d_utxoSt_2576 ~v0 ~v1 v2 = du_utxoSt_2576 v2
du_utxoSt_2576 ::
  T_GeneralizeTel_12139 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
du_utxoSt_2576 v0
  = coe
      d_utxoSt_2468 (coe d_'46'generalizedField'45's_12127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_2598 ~v0 ~v1 v2 = du_txcerts_2598 v2
du_txcerts_2598 ::
  T_GeneralizeTel_12139 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
du_txcerts_2598 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2624
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2682
         (coe d_'46'generalizedField'45'tx_12129 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 -> AgdaAny
d_txid_2604 ~v0 ~v1 v2 = du_txid_2604 v2
du_txid_2604 :: T_GeneralizeTel_12139 -> AgdaAny
du_txid_2604 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2644
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2682
         (coe d_'46'generalizedField'45'tx_12129 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2618 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_2618 ~v0 ~v1 v2 = du_txvote_2618 v2
du_txvote_2618 ::
  T_GeneralizeTel_12139 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
du_txvote_2618 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2628
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2682
         (coe d_'46'generalizedField'45'tx_12129 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2620 ~v0 ~v1 v2 = du_txwdrls_2620 v2
du_txwdrls_2620 ::
  T_GeneralizeTel_12139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2620 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2626
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2682
         (coe d_'46'generalizedField'45'tx_12129 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2624 ~v0 ~v1 v2 = du_enactState_2624 v2
du_enactState_2624 ::
  T_GeneralizeTel_12139 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2624 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2172
      (coe d_'46'generalizedField'45'Γ_12131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2626 ~v0 ~v1 v2 = du_pparams_2626 v2
du_pparams_2626 ::
  T_GeneralizeTel_12139 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2626 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2170
      (coe d_'46'generalizedField'45'Γ_12131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 -> Maybe AgdaAny
d_ppolicy_2628 ~v0 ~v1 v2 = du_ppolicy_2628 v2
du_ppolicy_2628 :: T_GeneralizeTel_12139 -> Maybe AgdaAny
du_ppolicy_2628 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2168
      (coe d_'46'generalizedField'45'Γ_12131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 -> AgdaAny
d_slot_2630 ~v0 ~v1 v2 = du_slot_2630 v2
du_slot_2630 :: T_GeneralizeTel_12139 -> AgdaAny
du_slot_2630 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2166
      (coe d_'46'generalizedField'45'Γ_12131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2642 ~v0 ~v1 v2 = du_pparams_2642 v2
du_pparams_2642 ::
  T_GeneralizeTel_12139 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2642 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2170
      (coe d_'46'generalizedField'45'Γ_12131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 -> AgdaAny
d_slot_2646 ~v0 ~v1 v2 = du_slot_2646 v2
du_slot_2646 :: T_GeneralizeTel_12139 -> AgdaAny
du_slot_2646 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2166
      (coe d_'46'generalizedField'45'Γ_12131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12139 -> Integer
d_treasury_2648 ~v0 ~v1 v2 = du_treasury_2648 v2
du_treasury_2648 :: T_GeneralizeTel_12139 -> Integer
du_treasury_2648 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2174
      (coe d_'46'generalizedField'45'Γ_12131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12559 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094
d_certState_2654 ~v0 ~v1 v2 = du_certState_2654 v2
du_certState_2654 ::
  T_GeneralizeTel_12559 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094
du_certState_2654 v0
  = coe
      d_certState_2472 (coe d_'46'generalizedField'45's_12551 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12559 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2656 ~v0 ~v1 v2 = du_govSt_2656 v2
du_govSt_2656 ::
  T_GeneralizeTel_12559 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2656 v0
  = coe d_govSt_2470 (coe d_'46'generalizedField'45's_12551 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12559 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
d_utxoSt_2658 ~v0 ~v1 v2 = du_utxoSt_2658 v2
du_utxoSt_2658 ::
  T_GeneralizeTel_12559 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
du_utxoSt_2658 v0
  = coe
      d_utxoSt_2468 (coe d_'46'generalizedField'45's_12551 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12559 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2722 ~v0 ~v1 v2 = du_pparams_2722 v2
du_pparams_2722 ::
  T_GeneralizeTel_12559 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2722 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2170
      (coe d_'46'generalizedField'45'Γ_12555 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12559 -> AgdaAny
d_slot_2726 ~v0 ~v1 v2 = du_slot_2726 v2
du_slot_2726 :: T_GeneralizeTel_12559 -> AgdaAny
du_slot_2726 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2166
      (coe d_'46'generalizedField'45'Γ_12555 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_12559 -> Integer
d_treasury_2728 ~v0 ~v1 v2 = du_treasury_2728 v2
du_treasury_2728 :: T_GeneralizeTel_12559 -> Integer
du_treasury_2728 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2174
      (coe d_'46'generalizedField'45'Γ_12555 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2748 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  T_LState_2460 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2672] -> T_LState_2460 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2748 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_12127 ::
  T_GeneralizeTel_12139 -> T_LState_2460
d_'46'generalizedField'45's_12127 v0
  = case coe v0 of
      C_mkGeneralizeTel_12141 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_12129 ::
  T_GeneralizeTel_12139 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2672
d_'46'generalizedField'45'tx_12129 v0
  = case coe v0 of
      C_mkGeneralizeTel_12141 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_12131 ::
  T_GeneralizeTel_12139 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2154
d_'46'generalizedField'45'Γ_12131 v0
  = case coe v0 of
      C_mkGeneralizeTel_12141 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_12133 ::
  T_GeneralizeTel_12139 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
d_'46'generalizedField'45'utxoSt''_12133 v0
  = case coe v0 of
      C_mkGeneralizeTel_12141 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_12135 ::
  T_GeneralizeTel_12139 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094
d_'46'generalizedField'45'certState''_12135 v0
  = case coe v0 of
      C_mkGeneralizeTel_12141 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_12137 ::
  T_GeneralizeTel_12139 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_12137 v0
  = case coe v0 of
      C_mkGeneralizeTel_12141 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_12139 a0 a1 = ()
data T_GeneralizeTel_12139
  = C_mkGeneralizeTel_12141 T_LState_2460
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2672
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2154
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_12551 ::
  T_GeneralizeTel_12559 -> T_LState_2460
d_'46'generalizedField'45's_12551 v0
  = case coe v0 of
      C_mkGeneralizeTel_12561 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_12553 ::
  T_GeneralizeTel_12559 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2672
d_'46'generalizedField'45'tx_12553 v0
  = case coe v0 of
      C_mkGeneralizeTel_12561 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_12555 ::
  T_GeneralizeTel_12559 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2154
d_'46'generalizedField'45'Γ_12555 v0
  = case coe v0 of
      C_mkGeneralizeTel_12561 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_12557 ::
  T_GeneralizeTel_12559 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
d_'46'generalizedField'45'utxoSt''_12557 v0
  = case coe v0 of
      C_mkGeneralizeTel_12561 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_12559 a0 a1 = ()
data T_GeneralizeTel_12559
  = C_mkGeneralizeTel_12561 T_LState_2460
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2672
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2154
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
