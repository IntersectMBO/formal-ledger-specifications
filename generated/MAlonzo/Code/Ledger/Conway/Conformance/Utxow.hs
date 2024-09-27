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
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1546
         (coe v0))
-- _.Hashable-Script
d_Hashable'45'Script_238 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_532
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1546
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
         (coe v0))
-- _.THash
d_THash_252 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_252 = erased
-- _.Language
d_Language_260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_260 = erased
-- _.Script
d_Script_352 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_352 = erased
-- _.ScriptHash
d_ScriptHash_360 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_360 = erased
-- _.Tx
d_Tx_438 a0 = ()
-- _.TxBody
d_TxBody_440 a0 = ()
-- _.TxOut
d_TxOut_446 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_446 = erased
-- _.UTxO
d_UTxO_452 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_452 = erased
-- _.isBootstrapAddr
d_isBootstrapAddr_562 a0 a1 = ()
-- _.isBootstrapAddr?
d_isBootstrapAddr'63'_564 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_564 ~v0 = du_isBootstrapAddr'63'_564
du_isBootstrapAddr'63'_564 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_564
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isBootstrapAddr'63'_142
-- _.isSigned
d_isSigned_584 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_584 = erased
-- _.refScripts
d_refScripts_644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refScripts_2942
      (coe v0)
-- _.txscripts
d_txscripts_680 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txscripts_2994
      (coe v0)
-- _.validP1Script
d_validP1Script_686 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_Timelock_268 -> ()
d_validP1Script_686 = erased
-- _.Tx.body
d_body_1620 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782
d_body_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
      (coe v0)
-- _.Tx.isValid
d_isValid_1622 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  Bool
d_isValid_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2898
      (coe v0)
-- _.Tx.txAD
d_txAD_1624 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  Maybe AgdaAny
d_txAD_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2900
      (coe v0)
-- _.Tx.wits
d_wits_1626 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2864
d_wits_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
      (coe v0)
-- _.TxBody.collateral
d_collateral_1630 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2858
      (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1632 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Maybe Integer
d_curTreasury_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_2852
      (coe v0)
-- _.TxBody.mint
d_mint_1634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  AgdaAny
d_mint_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2832
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1636 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2826
      (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [AgdaAny]
d_reqSigHash_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_reqSigHash_2860
      (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1640 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Maybe AgdaAny
d_scriptIntHash_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptIntHash_2862
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Maybe AgdaAny
d_txADhash_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_2848
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Maybe AgdaAny
d_txNetworkId_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_2850
      (coe v0)
-- _.TxBody.txcerts
d_txcerts_1646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2836
      (coe v0)
-- _.TxBody.txdonation
d_txdonation_1648 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Integer
d_txdonation_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_2844
      (coe v0)
-- _.TxBody.txfee
d_txfee_1650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Integer
d_txfee_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2830
      (coe v0)
-- _.TxBody.txid
d_txid_1652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  AgdaAny
d_txid_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2856
      (coe v0)
-- _.TxBody.txins
d_txins_1654 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2824
      (coe v0)
-- _.TxBody.txouts
d_txouts_1656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2828
      (coe v0)
-- _.TxBody.txprop
d_txprop_1658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2842
      (coe v0)
-- _.TxBody.txsize
d_txsize_1660 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Integer
d_txsize_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_2854
      (coe v0)
-- _.TxBody.txup
d_txup_1662 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txup_2846
      (coe v0)
-- _.TxBody.txvldt
d_txvldt_1664 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2834
      (coe v0)
-- _.TxBody.txvote
d_txvote_1666 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2840
      (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1668 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2838
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1742 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_1764 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_1766 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.getDataHashes
d_getDataHashes_1786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1786 ~v0 ~v1 = du_getDataHashes_1786
du_getDataHashes_1786 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1786
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getDataHashes_2002
-- Ledger.Conway.Conformance.Utxow._.getInputHashes
d_getInputHashes_1788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1788 v0 ~v1 = du_getInputHashes_1788 v0
du_getInputHashes_1788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getInputHashes_2006
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_1854 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1942 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1952 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_1856 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1942 ->
  AgdaAny
d_slot_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_slot_1950 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_1858 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1942 ->
  Integer
d_treasury_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_treasury_1954
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_1862 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1970
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_1864 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  Integer
d_donations_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1972
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_1866 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  Integer
d_fees_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1968 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_1868 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.ScriptPurpose
d_ScriptPurpose_1894 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.d
d_d_1992 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_1992 ~v0 v1 = du_d_1992 v1
du_d_1992 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_1992 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.HasInlineDatum
d_HasInlineDatum_1994 a0 a1 a2 = ()
newtype T_HasInlineDatum_1994 = C_InlineDatum_1998 AgdaAny
-- Ledger.Conway.Conformance.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_2002 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_2002 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_2002 v2
du_Dec'45'HasInlineDatum_2002 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_2002 v0
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
                                               (coe C_InlineDatum_1998 v8)))
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
d_UsesV3Features_2068 a0 a1 a2 = ()
data T_UsesV3Features_2068
  = C_HasVotes_2070 | C_HasProps_2072 | C_HasDonation_2074 |
    C_HasTreasury_2076
-- Ledger.Conway.Conformance.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_2080 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_2080 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_2080 v2
du_Dec'45'UsesV3Features_2080 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_2080 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_TxBody'46'constructor_17957 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
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
                                               (coe C_HasTreasury_2076)))
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
                                        (coe C_HasDonation_2074)))
                    (:) v21 v22
                      -> coe
                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_HasProps_2072)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v21 v22
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe C_HasVotes_2070)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.languages
d_languages_2104 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2104 v0 ~v1 v2 v3 = du_languages_2104 v0 v2 v3
du_languages_2104 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2104 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_getLanguage_2114 (coe v0))
      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txscripts_2994
         (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Utxow._.getLanguage
d_getLanguage_2114 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2114 v0 ~v1 ~v2 ~v3 v4 = du_getLanguage_2114 v0 v4
du_getLanguage_2114 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2114 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Ledger.Conway.Conformance.Script.d_language_262
                (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
                      (coe v0)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.getVKeys
d_getVKeys_2118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20] ->
  [AgdaAny]
d_getVKeys_2118 ~v0 ~v1 = du_getVKeys_2118
du_getVKeys_2118 ::
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20] ->
  [AgdaAny]
du_getVKeys_2118
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isKeyHashObj_26)
-- Ledger.Conway.Conformance.Utxow.allowedLanguages
d_allowedLanguages_2120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2120 v0 ~v1 v2 v3
  = du_allowedLanguages_2120 v0 v2 v3
du_allowedLanguages_2120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2120 v0 v1 v2
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
         (coe du_os_2174 (coe v0) (coe v1) (coe v2)))
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
              (coe du_Dec'45'UsesV3Features_2080 (coe du_txb_2130 (coe v1)))
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
                               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
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
                         (coe du_Dec'45'HasInlineDatum_2002)
                         (coe
                            MAlonzo.Code.Interface.IsSet.d_toSet_482
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                            (coe du_os_2174 (coe v0) (coe v1) (coe v2))))
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
                                       MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
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
                                       MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
                                                (coe v0))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
-- Ledger.Conway.Conformance.Utxow._.txb
d_txb_2130 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782
d_txb_2130 ~v0 ~v1 v2 ~v3 = du_txb_2130 v2
du_txb_2130 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782
du_txb_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.os
d_os_2174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2174 v0 ~v1 v2 v3 = du_os_2174 v0 v2 v3
du_os_2174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2174 v0 v1 v2
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
               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_outs_2082
               (coe du_txb_2130 (coe v1))))
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
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                        (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__668
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2824
                     (coe du_txb_2130 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2826
                     (coe du_txb_2130 (coe v1)))))))
-- Ledger.Conway.Conformance.Utxow.getScripts
d_getScripts_2180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20] ->
  [AgdaAny]
d_getScripts_2180 ~v0 ~v1 = du_getScripts_2180
du_getScripts_2180 ::
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20] ->
  [AgdaAny]
du_getScripts_2180
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isScriptObj_36)
-- Ledger.Conway.Conformance.Utxow.credsNeeded
d_credsNeeded_2182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2182 v0 ~v1 v2 v3 = du_credsNeeded_2182 v0 v2 v3
du_credsNeeded_2182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2182 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Spend_1752
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
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                        (coe v0))))
               (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2824
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
                    MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Rwrd_1748
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
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2838
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
                       MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Cert_1746
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
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2836
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
                          MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Mint_1750
                          (coe v3))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Address.C_ScriptObj_24
                          (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_212
                     (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2280
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2832
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
                             MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Vote_1754
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
                           (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2840
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Propose_1756
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
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2842
                           (coe v2))))))))
-- Ledger.Conway.Conformance.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_2254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [AgdaAny]
d_witsVKeyNeeded_2254 v0 ~v1 = du_witsVKeyNeeded_2254 v0
du_witsVKeyNeeded_2254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [AgdaAny]
du_witsVKeyNeeded_2254 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getVKeys_2118))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_386
                 (MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2182 (coe v0)))
-- Ledger.Conway.Conformance.Utxow.scriptsNeeded
d_scriptsNeeded_2256 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [AgdaAny]
d_scriptsNeeded_2256 v0 ~v1 = du_scriptsNeeded_2256 v0
du_scriptsNeeded_2256 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [AgdaAny]
du_scriptsNeeded_2256 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getScripts_2180))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_386
                 (MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2182 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2258 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2258
  = C_UTXOW'45'inductive_2364 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2272 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_32425 -> Maybe AgdaAny
d_txAD_2272 ~v0 ~v1 v2 = du_txAD_2272 v2
du_txAD_2272 :: T_GeneralizeTel_32425 -> Maybe AgdaAny
du_txAD_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2900
      (coe d_'46'generalizedField'45'tx_32417 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2274 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_32425 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782
d_body_2274 ~v0 ~v1 v2 = du_body_2274 v2
du_body_2274 ::
  T_GeneralizeTel_32425 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782
du_body_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
      (coe d_'46'generalizedField'45'tx_32417 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2276 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_32425 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2864
d_wits_2276 ~v0 ~v1 v2 = du_wits_2276 v2
du_wits_2276 ::
  T_GeneralizeTel_32425 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2864
du_wits_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
      (coe d_'46'generalizedField'45'tx_32417 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2286 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_32425 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2286 ~v0 ~v1 v2 = du_refInputs_2286 v2
du_refInputs_2286 ::
  T_GeneralizeTel_32425 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2826
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
         (coe d_'46'generalizedField'45'tx_32417 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2292 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_32425 -> Maybe AgdaAny
d_txADhash_2292 ~v0 ~v1 v2 = du_txADhash_2292 v2
du_txADhash_2292 :: T_GeneralizeTel_32425 -> Maybe AgdaAny
du_txADhash_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_2848
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
         (coe d_'46'generalizedField'45'tx_32417 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txid
d_txid_2302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_32425 -> AgdaAny
d_txid_2302 ~v0 ~v1 v2 = du_txid_2302 v2
du_txid_2302 :: T_GeneralizeTel_32425 -> AgdaAny
du_txid_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2856
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
         (coe d_'46'generalizedField'45'tx_32417 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txouts
d_txouts_2306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_32425 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2306 ~v0 ~v1 v2 = du_txouts_2306 v2
du_txouts_2306 ::
  T_GeneralizeTel_32425 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2828
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
         (coe d_'46'generalizedField'45'tx_32417 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txvldt
d_txvldt_2314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_32425 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2314 ~v0 ~v1 v2 = du_txvldt_2314 v2
du_txvldt_2314 ::
  T_GeneralizeTel_32425 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2834
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
         (coe d_'46'generalizedField'45'tx_32417 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2322 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_32425 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2322 ~v0 ~v1 v2 = du_scripts_2322 v2
du_scripts_2322 ::
  T_GeneralizeTel_32425 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scripts_2876
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
         (coe d_'46'generalizedField'45'tx_32417 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2326 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_32425 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2326 ~v0 ~v1 v2 = du_txdats_2326 v2
du_txdats_2326 ::
  T_GeneralizeTel_32425 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdats_2878
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
         (coe d_'46'generalizedField'45'tx_32417 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2330 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_32425 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2330 ~v0 ~v1 v2 = du_vkSigs_2330 v2
du_vkSigs_2330 ::
  T_GeneralizeTel_32425 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_vkSigs_2874
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
         (coe d_'46'generalizedField'45'tx_32417 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2340 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_32425 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2340 ~v0 ~v1 v2 = du_utxo_2340 v2
du_utxo_2340 ::
  T_GeneralizeTel_32425 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
      (coe d_'46'generalizedField'45's_32419 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2390 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2390 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2390 v0 v1 v2
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
                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
                          (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txidBytes_2394
                       v0
                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2856
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                             (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_534
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_vkSigs_2874
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
                     (coe v1)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'evalTimelock_326
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
                     (coe v0))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1546
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
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
                                 (coe v0)))))
                     (coe
                        MAlonzo.Code.Interface.IsSet.du_dom_540
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_vkSigs_2874
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
                              (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2834
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                        (coe v1))))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_564
                  (MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txscripts_2994
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
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
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
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
                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Interface.IsSet.du_dom_540
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_vkSigs_2874
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
                                      (coe v1)))))))
                  (coe
                     du_witsVKeyNeeded_2254 v0
                     (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966 (coe v2))
                     (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
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
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
                                      (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_386
                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_532
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1546
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scripts_2876
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
                                    (coe v0))))
                           (coe
                              du_scriptsNeeded_2256 v0
                              (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966 (coe v2))
                              (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_386
                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_532
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1546
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refScripts_2942
                                 (coe v0) (coe v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
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
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
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
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
                                            (coe v0))))
                                   (coe
                                      du_scriptsNeeded_2256 v0
                                      (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
                                         (coe v2))
                                      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                         (coe v1)))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_386
                                      (MAlonzo.Code.Axiom.Set.d_th_1458
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (MAlonzo.Code.Interface.Hashable.d_hash_16
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_532
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1546
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refScripts_2942
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
                                            (coe v2)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_386
                           (MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_532
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1546
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scripts_2876
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
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
                                            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
                                               (coe v0))))))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Interface.IsSet.du_dom_540
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdats_2878
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
                                         (coe v1))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getInputHashes_2006
                           (coe v0) (coe v1)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966 (coe v2))))
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
                                               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__668
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getInputHashes_2006
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
                                            (coe v2)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getDataHashes_2002
                                            (coe
                                               MAlonzo.Code.Interface.IsSet.du_range_542
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                               (coe
                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2828
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getDataHashes_2002
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
                                                        (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
                                                     (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2826
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Interface.IsSet.du_dom_540
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdats_2878
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
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
                                            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_458
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1832
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         du_allowedLanguages_2120 (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
                                            (coe v2)))))
                              (coe
                                 du_languages_2104 (coe v0) (coe v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1222
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_2848
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1222
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2900
                                    (coe v1)))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_32417 ::
  T_GeneralizeTel_32425 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884
d_'46'generalizedField'45'tx_32417 v0
  = case coe v0 of
      C_mkGeneralizeTel_32427 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_32419 ::
  T_GeneralizeTel_32425 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
d_'46'generalizedField'45's_32419 v0
  = case coe v0 of
      C_mkGeneralizeTel_32427 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_32421 ::
  T_GeneralizeTel_32425 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1942
d_'46'generalizedField'45'Γ_32421 v0
  = case coe v0 of
      C_mkGeneralizeTel_32427 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_32423 ::
  T_GeneralizeTel_32425 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
d_'46'generalizedField'45's''_32423 v0
  = case coe v0 of
      C_mkGeneralizeTel_32427 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_32425 a0 a1 = ()
data T_GeneralizeTel_32425
  = C_mkGeneralizeTel_32427 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1942
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
