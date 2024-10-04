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

module MAlonzo.Code.Ledger.Conway.Conformance.Utxow where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.HasEmptySet
import qualified MAlonzo.Code.Interface.HasEmptySet.Instances
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation
import qualified MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Credential
d_Credential_72 a0 = ()
-- _.Dec-evalTimelock
d_Dec'45'evalTimelock_96 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_Timelock_268 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_96 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'evalTimelock_326
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
         (coe v0))
-- _.Hashable-Script
d_Hashable'45'Script_242 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_550
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
         (coe v0))
-- _.THash
d_THash_258 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_258 = erased
-- _.Language
d_Language_266 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_266 = erased
-- _.Script
d_Script_358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_358 = erased
-- _.ScriptHash
d_ScriptHash_366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_366 = erased
-- _.Tx
d_Tx_444 a0 = ()
-- _.TxBody
d_TxBody_446 a0 = ()
-- _.TxOut
d_TxOut_452 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_452 = erased
-- _.UTxO
d_UTxO_458 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_458 = erased
-- _.isBootstrapAddr
d_isBootstrapAddr_568 a0 a1 = ()
-- _.isBootstrapAddr?
d_isBootstrapAddr'63'_570 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_570 ~v0 = du_isBootstrapAddr'63'_570
du_isBootstrapAddr'63'_570 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_570
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isBootstrapAddr'63'_142
-- _.isSigned
d_isSigned_590 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_590 = erased
-- _.refScripts
d_refScripts_650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refScripts_2966
      (coe v0)
-- _.txscripts
d_txscripts_686 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txscripts_3018
      (coe v0)
-- _.validP1Script
d_validP1Script_692 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  ()
d_validP1Script_692 = erased
-- _.Tx.body
d_body_1632 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806
d_body_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
      (coe v0)
-- _.Tx.isValid
d_isValid_1634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  Bool
d_isValid_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2922
      (coe v0)
-- _.Tx.txAD
d_txAD_1636 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  Maybe AgdaAny
d_txAD_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2924
      (coe v0)
-- _.Tx.wits
d_wits_1638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888
d_wits_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
      (coe v0)
-- _.TxBody.collateral
d_collateral_1642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2882
      (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe Integer
d_curTreasury_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_2876
      (coe v0)
-- _.TxBody.mint
d_mint_1646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  AgdaAny
d_mint_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2856
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1648 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2850
      (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [AgdaAny]
d_reqSigHash_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_reqSigHash_2884
      (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe AgdaAny
d_scriptIntHash_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptIntHash_2886
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1654 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe AgdaAny
d_txADhash_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_2872
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe AgdaAny
d_txNetworkId_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_2874
      (coe v0)
-- _.TxBody.txcerts
d_txcerts_1658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2860
      (coe v0)
-- _.TxBody.txdonation
d_txdonation_1660 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_txdonation_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_2868
      (coe v0)
-- _.TxBody.txfee
d_txfee_1662 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_txfee_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2854
      (coe v0)
-- _.TxBody.txid
d_txid_1664 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  AgdaAny
d_txid_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
      (coe v0)
-- _.TxBody.txins
d_txins_1666 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2848
      (coe v0)
-- _.TxBody.txouts
d_txouts_1668 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2852
      (coe v0)
-- _.TxBody.txprop
d_txprop_1670 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2866
      (coe v0)
-- _.TxBody.txsize
d_txsize_1672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_txsize_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_2878
      (coe v0)
-- _.TxBody.txup
d_txup_1674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txup_2870
      (coe v0)
-- _.TxBody.txvldt
d_txvldt_1676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2858
      (coe v0)
-- _.TxBody.txvote
d_txvote_1678 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_1678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2864
      (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1680 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2862
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1754 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_1776 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_1778 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.getDataHashes
d_getDataHashes_1798 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1798 ~v0 ~v1 = du_getDataHashes_1798
du_getDataHashes_1798 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1798
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getDataHashes_2020
-- Ledger.Conway.Conformance.Utxow._.getInputHashes
d_getInputHashes_1800 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1800 v0 ~v1 = du_getInputHashes_1800 v0
du_getInputHashes_1800 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getInputHashes_2024
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_1866 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1970 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_1868 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1960 ->
  AgdaAny
d_slot_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_slot_1968 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_1870 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1960 ->
  Integer
d_treasury_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_treasury_1972
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_1874 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1988
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_1876 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  Integer
d_donations_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1990
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_1878 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  Integer
d_fees_1878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1986 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_1880 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.ScriptPurpose
d_ScriptPurpose_1906 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.d
d_d_2004 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_2004 ~v0 v1 = du_d_2004 v1
du_d_2004 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_2004 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.HasInlineDatum
d_HasInlineDatum_2006 a0 a1 a2 = ()
newtype T_HasInlineDatum_2006 = C_InlineDatum_2010 AgdaAny
-- Ledger.Conway.Conformance.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_2014 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_2014 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_2014 v2
du_Dec'45'HasInlineDatum_2014 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_2014 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                      -> case coe v5 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                             -> case coe v7 of
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                                    -> coe
                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                               (coe C_InlineDatum_2010 v8)))
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                                    -> coe
                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> coe
                                  MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                     (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow._._.UsesV3Features
d_UsesV3Features_2080 a0 a1 a2 = ()
data T_UsesV3Features_2080
  = C_HasVotes_2082 | C_HasProps_2084 | C_HasDonation_2086 |
    C_HasTreasury_2088
-- Ledger.Conway.Conformance.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_2092 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_2092 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_2092 v2
du_Dec'45'UsesV3Features_2092 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_2092 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> case coe v9 of
             []
               -> case coe v10 of
                    []
                      -> case coe v11 of
                           0 -> case coe v15 of
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v21
                                    -> coe
                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                               (coe C_HasTreasury_2088)))
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                    -> coe
                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> coe
                                  MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                        (coe C_HasDonation_2086)))
                    (:) v21 v22
                      -> coe
                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_HasProps_2084)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v21 v22
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe C_HasVotes_2082)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.languages
d_languages_2116 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2116 v0 ~v1 v2 v3 = du_languages_2116 v0 v2 v3
du_languages_2116 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2116 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_getLanguage_2126 (coe v0))
      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txscripts_3018
         (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Utxow._.getLanguage
d_getLanguage_2126 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2126 v0 ~v1 ~v2 ~v3 v4 = du_getLanguage_2126 v0 v4
du_getLanguage_2126 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2126 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Ledger.Conway.Conformance.Script.d_language_262
                (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                      (coe v0)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.getVKeys
d_getVKeys_2130 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20] ->
  [AgdaAny]
d_getVKeys_2130 ~v0 ~v1 = du_getVKeys_2130
du_getVKeys_2130 ::
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20] ->
  [AgdaAny]
du_getVKeys_2130
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isKeyHashObj_26)
-- Ledger.Conway.Conformance.Utxow.allowedLanguages
d_allowedLanguages_2132 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2132 v0 ~v1 v2 v3
  = du_allowedLanguages_2132 v0 v2 v3
du_allowedLanguages_2132 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2132 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1626
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isBootstrapAddr'63'_142
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (coe du_os_2186 (coe v0) (coe v1) (coe v2)))
      (coe
         (\ v3 ->
            MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
              (coe
                 MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Set_296
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Interface.ToBool.du_if_then_else__46
              (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
              (coe du_Dec'45'UsesV3Features_2092 (coe du_txb_2142 (coe v1)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Axiom.Set.du_fromList_416
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                  (coe v0))))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
                      (coe
                         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1626
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                         (coe du_Dec'45'HasInlineDatum_2014)
                         (coe
                            MAlonzo.Code.Interface.IsSet.d_toSet_482
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                            (coe du_os_2186 (coe v0) (coe v1) (coe v2))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_416
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                             (coe v0))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_416
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV1_208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                                (coe v0))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
-- Ledger.Conway.Conformance.Utxow._.txb
d_txb_2142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806
d_txb_2142 ~v0 ~v1 v2 ~v3 = du_txb_2142 v2
du_txb_2142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806
du_txb_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.os
d_os_2186 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2186 v0 ~v1 v2 v3 = du_os_2186 v0 v2 v3
du_os_2186 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2186 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
         (coe
            MAlonzo.Code.Interface.IsSet.du_range_542
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_outs_2100
               (coe du_txb_2142 (coe v1))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_range_542
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1232
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1230
                        (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__668
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2848
                     (coe du_txb_2142 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2850
                     (coe du_txb_2142 (coe v1)))))))
-- Ledger.Conway.Conformance.Utxow.getScripts
d_getScripts_2192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20] ->
  [AgdaAny]
d_getScripts_2192 ~v0 ~v1 = du_getScripts_2192
du_getScripts_2192 ::
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20] ->
  [AgdaAny]
du_getScripts_2192
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isScriptObj_36)
-- Ledger.Conway.Conformance.Utxow.credsNeeded
d_credsNeeded_2194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2194 v0 ~v1 v2 v3 = du_credsNeeded_2194 v0 v2 v3
du_credsNeeded_2194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2194 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__668
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_386
         (MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Spend_1764
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Address.du_payCred_112
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_534
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1232
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1230
                        (coe v0))))
               (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2848
                  (coe v2)))))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_386
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Rwrd_1760
                    (coe v3))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88
                    (coe v3)))
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_540
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2862
                     (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__668
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_386
               (MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Cert_1758
                       (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_cwitness_888
                       (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_416
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2860
                     (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__668
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.du_map_386
                  (MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Mint_1762
                          (coe v3))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Address.C_ScriptObj_24
                          (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_212
                     (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2856
                        (coe v2))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__668
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_386
                     (MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Vote_1766
                             (coe v3))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_416
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (\ v3 ->
                              MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
                                (coe v3))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2864
                              (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_564
                     (MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (\ v3 ->
                        let v4
                              = MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
                                  (coe v3) in
                        coe
                          (case coe v4 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Propose_1768
                                          (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Address.C_ScriptObj_24
                                          (coe v5)))
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
                             _ -> MAlonzo.RTE.mazUnreachableError))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_416
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2866
                           (coe v2))))))))
-- Ledger.Conway.Conformance.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_2266 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [AgdaAny]
d_witsVKeyNeeded_2266 v0 ~v1 = du_witsVKeyNeeded_2266 v0
du_witsVKeyNeeded_2266 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [AgdaAny]
du_witsVKeyNeeded_2266 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getVKeys_2130))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_386
                 (MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2194 (coe v0)))
-- Ledger.Conway.Conformance.Utxow.scriptsNeeded
d_scriptsNeeded_2268 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [AgdaAny]
d_scriptsNeeded_2268 v0 ~v1 = du_scriptsNeeded_2268 v0
du_scriptsNeeded_2268 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [AgdaAny]
du_scriptsNeeded_2268 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getScripts_2192))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_386
                 (MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2194 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2270 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2270
  = C_UTXOW'45'inductive_2376 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2284 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32449 -> Maybe AgdaAny
d_txAD_2284 ~v0 ~v1 v2 = du_txAD_2284 v2
du_txAD_2284 :: T_GeneralizeTel_32449 -> Maybe AgdaAny
du_txAD_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2924
      (coe d_'46'generalizedField'45'tx_32441 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2286 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32449 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806
d_body_2286 ~v0 ~v1 v2 = du_body_2286 v2
du_body_2286 ::
  T_GeneralizeTel_32449 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806
du_body_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
      (coe d_'46'generalizedField'45'tx_32441 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2288 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32449 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888
d_wits_2288 ~v0 ~v1 v2 = du_wits_2288 v2
du_wits_2288 ::
  T_GeneralizeTel_32449 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888
du_wits_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
      (coe d_'46'generalizedField'45'tx_32441 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32449 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2298 ~v0 ~v1 v2 = du_refInputs_2298 v2
du_refInputs_2298 ::
  T_GeneralizeTel_32449 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2850
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
         (coe d_'46'generalizedField'45'tx_32441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32449 -> Maybe AgdaAny
d_txADhash_2304 ~v0 ~v1 v2 = du_txADhash_2304 v2
du_txADhash_2304 :: T_GeneralizeTel_32449 -> Maybe AgdaAny
du_txADhash_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_2872
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
         (coe d_'46'generalizedField'45'tx_32441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txid
d_txid_2314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32449 -> AgdaAny
d_txid_2314 ~v0 ~v1 v2 = du_txid_2314 v2
du_txid_2314 :: T_GeneralizeTel_32449 -> AgdaAny
du_txid_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
         (coe d_'46'generalizedField'45'tx_32441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txouts
d_txouts_2318 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2318 ~v0 ~v1 v2 = du_txouts_2318 v2
du_txouts_2318 ::
  T_GeneralizeTel_32449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2852
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
         (coe d_'46'generalizedField'45'tx_32441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txvldt
d_txvldt_2326 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2326 ~v0 ~v1 v2 = du_txvldt_2326 v2
du_txvldt_2326 ::
  T_GeneralizeTel_32449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2858
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
         (coe d_'46'generalizedField'45'tx_32441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2334 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32449 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2334 ~v0 ~v1 v2 = du_scripts_2334 v2
du_scripts_2334 ::
  T_GeneralizeTel_32449 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scripts_2900
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
         (coe d_'46'generalizedField'45'tx_32441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2338 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2338 ~v0 ~v1 v2 = du_txdats_2338 v2
du_txdats_2338 ::
  T_GeneralizeTel_32449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdats_2902
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
         (coe d_'46'generalizedField'45'tx_32441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2342 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2342 ~v0 ~v1 v2 = du_vkSigs_2342 v2
du_vkSigs_2342 ::
  T_GeneralizeTel_32449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_vkSigs_2898
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
         (coe d_'46'generalizedField'45'tx_32441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2352 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2352 ~v0 ~v1 v2 = du_utxo_2352 v2
du_utxo_2352 ::
  T_GeneralizeTel_32449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
      (coe d_'46'generalizedField'45's_32443 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2402 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2402 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2402 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2402 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2402 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Dec'45'isSigned_120
                    (MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                          (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txidBytes_2418
                       v0
                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                             (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_534
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_vkSigs_2898
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                     (coe v1)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
               (coe
                  (\ v3 ->
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'evalTimelock_326
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                          (coe v0))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                          (coe v0))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_386
                          (MAlonzo.Code.Axiom.Set.d_th_1458
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (MAlonzo.Code.Interface.Hashable.d_hash_16
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                      (coe v0)))))
                          (coe
                             MAlonzo.Code.Interface.IsSet.du_dom_540
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1458
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_vkSigs_2898
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                                   (coe v1)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2858
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                             (coe v1)))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_410
                          (coe v3))))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_564
                  (MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txscripts_3018
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
                        (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                   (coe v0))))
                          (coe v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_386
                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Interface.IsSet.du_dom_540
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_vkSigs_2898
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                                      (coe v1)))))))
                  (coe
                     du_witsVKeyNeeded_2266 v0
                     (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984 (coe v2))
                     (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                        (coe v1))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                      (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_386
                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_550
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scripts_2900
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                                         (coe v1))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'65340'__718
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                    (coe v0))))
                           (coe
                              du_scriptsNeeded_2268 v0
                              (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984 (coe v2))
                              (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_386
                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_550
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refScripts_2966
                                 (coe v0) (coe v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
                                    (coe v2))))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                      (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du__'65340'__718
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                      (MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                            (coe v0))))
                                   (coe
                                      du_scriptsNeeded_2268 v0
                                      (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
                                         (coe v2))
                                      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                         (coe v1)))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_386
                                      (MAlonzo.Code.Axiom.Set.d_th_1458
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (MAlonzo.Code.Interface.Hashable.d_hash_16
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_550
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refScripts_2966
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
                                            (coe v2)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_386
                           (MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_550
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scripts_2900
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                                 (coe v1))))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                               (coe v0))))))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Interface.IsSet.du_dom_540
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdats_2902
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                                         (coe v1))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getInputHashes_2024
                           (coe v0) (coe v1)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984 (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__668
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getInputHashes_2024
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
                                            (coe v2)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getDataHashes_2020
                                            (coe
                                               MAlonzo.Code.Interface.IsSet.du_range_542
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                               (coe
                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2852
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getDataHashes_2020
                                            (coe
                                               MAlonzo.Code.Interface.IsSet.du_range_542
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                               (coe
                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                                     (coe
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1232
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1230
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
                                                     (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2850
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Interface.IsSet.du_dom_540
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdats_2902
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Language_218
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         du_allowedLanguages_2132 (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
                                            (coe v2)))))
                              (coe
                                 du_languages_2116 (coe v0) (coe v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1234
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_2872
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1234
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2924
                                    (coe v1)))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_32441 ::
  T_GeneralizeTel_32449 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908
d_'46'generalizedField'45'tx_32441 v0
  = case coe v0 of
      C_mkGeneralizeTel_32451 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_32443 ::
  T_GeneralizeTel_32449 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
d_'46'generalizedField'45's_32443 v0
  = case coe v0 of
      C_mkGeneralizeTel_32451 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_32445 ::
  T_GeneralizeTel_32449 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1960
d_'46'generalizedField'45'Γ_32445 v0
  = case coe v0 of
      C_mkGeneralizeTel_32451 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_32447 ::
  T_GeneralizeTel_32449 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
d_'46'generalizedField'45's''_32447 v0
  = case coe v0 of
      C_mkGeneralizeTel_32451 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_32449 a0 a1 = ()
data T_GeneralizeTel_32449
  = C_mkGeneralizeTel_32451 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1960
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
