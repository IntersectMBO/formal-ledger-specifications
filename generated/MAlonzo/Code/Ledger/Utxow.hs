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

module MAlonzo.Code.Ledger.Utxow where

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
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Credential
d_Credential_68 a0 = ()
-- _.Dec-evalTimelock
d_Dec'45'evalTimelock_94 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_94 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
-- _.Hashable-Script
d_Hashable'45'Script_240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_240 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528
      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828 (coe v0))
-- _.THash
d_THash_254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_254 = erased
-- _.Language
d_Language_262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Language_262 = erased
-- _.Script
d_Script_354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_354 = erased
-- _.ScriptHash
d_ScriptHash_362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_362 = erased
-- _.Tx
d_Tx_440 a0 = ()
-- _.TxBody
d_TxBody_442 a0 = ()
-- _.TxOut
d_TxOut_448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_448 = erased
-- _.UTxO
d_UTxO_454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_454 = erased
-- _.isBootstrapAddr
d_isBootstrapAddr_560 a0 a1 = ()
-- _.isBootstrapAddr?
d_isBootstrapAddr'63'_562 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_562 ~v0 = du_isBootstrapAddr'63'_562
du_isBootstrapAddr'63'_562 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_562
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- _.isSigned
d_isSigned_582 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_582 = erased
-- _.refScripts
d_refScripts_642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_642 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refScripts_2960 (coe v0)
-- _.txscripts
d_txscripts_680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_680 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txscripts_3012 (coe v0)
-- _.validP1Script
d_validP1Script_684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 -> ()
d_validP1Script_684 = erased
-- _.Tx.body
d_body_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800
d_body_1636 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2912 (coe v0)
-- _.Tx.isValid
d_isValid_1638 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2902 -> Bool
d_isValid_1638 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2916 (coe v0)
-- _.Tx.txAD
d_txAD_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 -> Maybe AgdaAny
d_txAD_1640 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2918 (coe v0)
-- _.Tx.wits
d_wits_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2882
d_wits_1642 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2914 (coe v0)
-- _.TxBody.collateral
d_collateral_1646 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1646 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2876 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Maybe Integer
d_curTreasury_1648 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2870 (coe v0)
-- _.TxBody.mint
d_mint_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> AgdaAny
d_mint_1650 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2850 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1652 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2844 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> [AgdaAny]
d_reqSigHash_1654 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2878 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Maybe AgdaAny
d_scriptIntHash_1656 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2880 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Maybe AgdaAny
d_txADhash_1658 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2866 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1660 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Maybe AgdaAny
d_txNetworkId_1660 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2868 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_1662 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2854 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1664 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Integer
d_txdonation_1664 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2862 (coe v0)
-- _.TxBody.txfee
d_txfee_1666 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Integer
d_txfee_1666 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2848 (coe v0)
-- _.TxBody.txid
d_txid_1668 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> AgdaAny
d_txid_1668 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2874 (coe v0)
-- _.TxBody.txins
d_txins_1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1670 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2842 (coe v0)
-- _.TxBody.txouts
d_txouts_1672 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1672 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2846 (coe v0)
-- _.TxBody.txprop
d_txprop_1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776]
d_txprop_1674 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2860 (coe v0)
-- _.TxBody.txsize
d_txsize_1676 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Integer
d_txsize_1676 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2872 (coe v0)
-- _.TxBody.txup
d_txup_1678 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1678 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2864 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1680 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2852 (coe v0)
-- _.TxBody.txvote
d_txvote_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_1682 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2858 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1684 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2856 (coe v0)
-- Ledger.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1758 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxow._.UTxOEnv
d_UTxOEnv_1780 a0 a1 = ()
-- Ledger.Utxow._.UTxOState
d_UTxOState_1782 a0 a1 = ()
-- Ledger.Utxow._.getDataHashes
d_getDataHashes_1804 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1804 ~v0 ~v1 = du_getDataHashes_1804
du_getDataHashes_1804 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1804
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1902
-- Ledger.Utxow._.getInputHashes
d_getInputHashes_1806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1806 v0 ~v1 = du_getInputHashes_1806 v0
du_getInputHashes_1806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1806 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1906 (coe v0)
-- Ledger.Utxow._.UTxOEnv.pparams
d_pparams_1874 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1980 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1874 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1990 (coe v0)
-- Ledger.Utxow._.UTxOEnv.slot
d_slot_1876 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1980 -> AgdaAny
d_slot_1876 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1988 (coe v0)
-- Ledger.Utxow._.UTxOEnv.treasury
d_treasury_1878 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1980 -> Integer
d_treasury_1878 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1992 (coe v0)
-- Ledger.Utxow._.UTxOState.deposits
d_deposits_1882 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1882 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2008 (coe v0)
-- Ledger.Utxow._.UTxOState.donations
d_donations_1884 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994 -> Integer
d_donations_1884 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2010 (coe v0)
-- Ledger.Utxow._.UTxOState.fees
d_fees_1886 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994 -> Integer
d_fees_1886 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2006 (coe v0)
-- Ledger.Utxow._.UTxOState.utxo
d_utxo_1888 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1888 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2004 (coe v0)
-- Ledger.Utxow._.ScriptPurpose
d_ScriptPurpose_1914 a0 a1 = ()
-- Ledger.Utxow._.d
d_d_2012 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_2012 ~v0 v1 = du_d_2012 v1
du_d_2012 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_2012 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Utxow._.HasInlineDatum
d_HasInlineDatum_2014 a0 a1 a2 = ()
newtype T_HasInlineDatum_2014 = C_InlineDatum_2018 AgdaAny
-- Ledger.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_2022 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_2022 v2
du_Dec'45'HasInlineDatum_2022 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_2022 v0
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
                                               (coe C_InlineDatum_2018 v8)))
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
-- Ledger.Utxow._._.UsesV3Features
d_UsesV3Features_2088 a0 a1 a2 = ()
data T_UsesV3Features_2088
  = C_HasVotes_2090 | C_HasProps_2092 | C_HasDonation_2094 |
    C_HasTreasury_2096
-- Ledger.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_2100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_2100 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_2100 v2
du_Dec'45'UsesV3Features_2100 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_2100 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_17985 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
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
                                               (coe C_HasTreasury_2096)))
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
                                        (coe C_HasDonation_2094)))
                    (:) v21 v22
                      -> coe
                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_HasProps_2092)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v21 v22
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe C_HasVotes_2090)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.languages
d_languages_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2124 v0 ~v1 v2 v3 = du_languages_2124 v0 v2 v3
du_languages_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2124 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_getLanguage_2134 (coe v0))
      (MAlonzo.Code.Ledger.Transaction.d_txscripts_3012
         (coe v0) (coe v1) (coe v2))
-- Ledger.Utxow._.getLanguage
d_getLanguage_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2134 v0 ~v1 ~v2 ~v3 v4 = du_getLanguage_2134 v0 v4
du_getLanguage_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2134 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Ledger.Script.d_language_258
                (MAlonzo.Code.Ledger.Script.d_ps_454
                   (coe
                      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828 (coe v0)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.getVKeys
d_getVKeys_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getVKeys_2138 ~v0 ~v1 = du_getVKeys_2138
du_getVKeys_2138 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getVKeys_2138
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22)
-- Ledger.Utxow.allowedLanguages
d_allowedLanguages_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2140 v0 ~v1 v2 v3
  = du_allowedLanguages_2140 v0 v2 v3
du_allowedLanguages_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2140 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1626
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (coe du_os_2194 (coe v0) (coe v1) (coe v2)))
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
              (coe du_Dec'45'UsesV3Features_2100 (coe du_txb_2150 (coe v1)))
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
                            MAlonzo.Code.Ledger.Script.d_PlutusV3_208
                            (coe
                               MAlonzo.Code.Ledger.Script.d_ps_454
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828 (coe v0))))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
                      (coe
                         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1626
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                         (coe du_Dec'45'HasInlineDatum_2022)
                         (coe
                            MAlonzo.Code.Interface.IsSet.d_toSet_482
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                            (coe du_os_2194 (coe v0) (coe v1) (coe v2))))
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
                                    MAlonzo.Code.Ledger.Script.d_PlutusV2_206
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_454
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_PlutusV3_208
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_454
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
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
                                    MAlonzo.Code.Ledger.Script.d_PlutusV1_204
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_454
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_PlutusV2_206
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_454
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_PlutusV3_208
                                          (coe
                                             MAlonzo.Code.Ledger.Script.d_ps_454
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
                                                (coe v0))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
-- Ledger.Utxow._.txb
d_txb_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800
d_txb_2150 ~v0 ~v1 v2 ~v3 = du_txb_2150 v2
du_txb_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800
du_txb_2150 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2912 (coe v0)
-- Ledger.Utxow._.os
d_os_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2194 v0 ~v1 v2 v3 = du_os_2194 v0 v2 v3
du_os_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2194 v0 v1 v2
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
               MAlonzo.Code.Ledger.Utxo.du_outs_2024 (coe du_txb_2150 (coe v1))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_range_542
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1258
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__668
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2842
                     (coe du_txb_2150 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2844
                     (coe du_txb_2150 (coe v1)))))))
-- Ledger.Utxow.getScripts
d_getScripts_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getScripts_2200 ~v0 ~v1 = du_getScripts_2200
du_getScripts_2200 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getScripts_2200
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32)
-- Ledger.Utxow.credsNeeded
d_credsNeeded_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2202 v0 ~v1 v2 v3 = du_credsNeeded_2202 v0 v2 v3
du_credsNeeded_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2202 v0 v1 v2
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
                 MAlonzo.Code.Ledger.ScriptValidation.C_Spend_1768
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 MAlonzo.Code.Ledger.Address.du_payCred_108
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_536
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1258
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214 (coe v0))))
               (coe v1)
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2842 (coe v2)))))
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
                 (coe MAlonzo.Code.Ledger.ScriptValidation.C_Rwrd_1764 (coe v3))
                 (coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v3)))
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_540
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2856 (coe v2)))))
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
                    (coe MAlonzo.Code.Ledger.ScriptValidation.C_Cert_1762 (coe v3))
                    (coe MAlonzo.Code.Ledger.Certs.d_cwitness_872 (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_416
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2854 (coe v2))))
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
                       (coe MAlonzo.Code.Ledger.ScriptValidation.C_Mint_1766 (coe v3))
                       (coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_mint_2850 (coe v2))))
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
                          (coe MAlonzo.Code.Ledger.ScriptValidation.C_Vote_1770 (coe v3))
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
                              MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v3))
                           (MAlonzo.Code.Ledger.Transaction.d_txvote_2858 (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_564
                     (MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (\ v3 ->
                        let v4
                              = MAlonzo.Code.Ledger.GovernanceActions.d_policy_794 (coe v3) in
                        coe
                          (case coe v4 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.ScriptValidation.C_Propose_1772
                                          (coe v3))
                                       (coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v5)))
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
                             _ -> MAlonzo.RTE.mazUnreachableError))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_416
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2860 (coe v2))))))))
-- Ledger.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> [AgdaAny]
d_witsVKeyNeeded_2274 v0 ~v1 = du_witsVKeyNeeded_2274 v0
du_witsVKeyNeeded_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> [AgdaAny]
du_witsVKeyNeeded_2274 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getVKeys_2138))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_386
                 (MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2202 (coe v0)))
-- Ledger.Utxow.scriptsNeeded
d_scriptsNeeded_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> [AgdaAny]
d_scriptsNeeded_2276 v0 ~v1 = du_scriptsNeeded_2276 v0
du_scriptsNeeded_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> [AgdaAny]
du_scriptsNeeded_2276 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getScripts_2200))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_386
                 (MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2202 (coe v0)))
-- Ledger.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2278 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2278
  = C_UTXOW'45'inductive_2384 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxow._.txAD
d_txAD_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_32517 -> Maybe AgdaAny
d_txAD_2292 ~v0 ~v1 v2 = du_txAD_2292 v2
du_txAD_2292 :: T_GeneralizeTel_32517 -> Maybe AgdaAny
du_txAD_2292 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2918
      (coe d_'46'generalizedField'45'tx_32509 (coe v0))
-- Ledger.Utxow._.body
d_body_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_32517 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800
d_body_2294 ~v0 ~v1 v2 = du_body_2294 v2
du_body_2294 ::
  T_GeneralizeTel_32517 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800
du_body_2294 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2912
      (coe d_'46'generalizedField'45'tx_32509 (coe v0))
-- Ledger.Utxow._.wits
d_wits_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_32517 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2882
d_wits_2296 ~v0 ~v1 v2 = du_wits_2296 v2
du_wits_2296 ::
  T_GeneralizeTel_32517 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2882
du_wits_2296 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2914
      (coe d_'46'generalizedField'45'tx_32509 (coe v0))
-- Ledger.Utxow._.refInputs
d_refInputs_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_32517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2306 ~v0 ~v1 v2 = du_refInputs_2306 v2
du_refInputs_2306 ::
  T_GeneralizeTel_32517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2306 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2844
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2912
         (coe d_'46'generalizedField'45'tx_32509 (coe v0)))
-- Ledger.Utxow._.txADhash
d_txADhash_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_32517 -> Maybe AgdaAny
d_txADhash_2312 ~v0 ~v1 v2 = du_txADhash_2312 v2
du_txADhash_2312 :: T_GeneralizeTel_32517 -> Maybe AgdaAny
du_txADhash_2312 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2866
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2912
         (coe d_'46'generalizedField'45'tx_32509 (coe v0)))
-- Ledger.Utxow._.txid
d_txid_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_32517 -> AgdaAny
d_txid_2322 ~v0 ~v1 v2 = du_txid_2322 v2
du_txid_2322 :: T_GeneralizeTel_32517 -> AgdaAny
du_txid_2322 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2874
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2912
         (coe d_'46'generalizedField'45'tx_32509 (coe v0)))
-- Ledger.Utxow._.txouts
d_txouts_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_32517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2326 ~v0 ~v1 v2 = du_txouts_2326 v2
du_txouts_2326 ::
  T_GeneralizeTel_32517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2326 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2846
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2912
         (coe d_'46'generalizedField'45'tx_32509 (coe v0)))
-- Ledger.Utxow._.txvldt
d_txvldt_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_32517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2334 ~v0 ~v1 v2 = du_txvldt_2334 v2
du_txvldt_2334 ::
  T_GeneralizeTel_32517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2334 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2852
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2912
         (coe d_'46'generalizedField'45'tx_32509 (coe v0)))
-- Ledger.Utxow._.scripts
d_scripts_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_32517 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2342 ~v0 ~v1 v2 = du_scripts_2342 v2
du_scripts_2342 ::
  T_GeneralizeTel_32517 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2342 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2894
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2914
         (coe d_'46'generalizedField'45'tx_32509 (coe v0)))
-- Ledger.Utxow._.txdats
d_txdats_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_32517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2346 ~v0 ~v1 v2 = du_txdats_2346 v2
du_txdats_2346 ::
  T_GeneralizeTel_32517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2346 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdats_2896
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2914
         (coe d_'46'generalizedField'45'tx_32509 (coe v0)))
-- Ledger.Utxow._.vkSigs
d_vkSigs_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_32517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2350 ~v0 ~v1 v2 = du_vkSigs_2350 v2
du_vkSigs_2350 ::
  T_GeneralizeTel_32517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2350 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2892
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2914
         (coe d_'46'generalizedField'45'tx_32509 (coe v0)))
-- Ledger.Utxow._.utxo
d_utxo_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_32517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2360 ~v0 ~v1 v2 = du_utxo_2360 v2
du_utxo_2360 ::
  T_GeneralizeTel_32517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2360 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2004
      (coe d_'46'generalizedField'45's_32511 (coe v0))
-- Ledger.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2410 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2410 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2410 v0 v1 v2
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
                    MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
                    (MAlonzo.Code.Ledger.Crypto.d_pkk_172
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_txidBytes_2390 v0
                       (MAlonzo.Code.Ledger.Transaction.d_txid_2874
                          (coe MAlonzo.Code.Ledger.Transaction.d_body_2912 (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_536
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2892
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2914 (coe v1)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
               (coe
                  MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_386
                     (MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (MAlonzo.Code.Interface.Hashable.d_hash_16
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))))
                     (coe
                        MAlonzo.Code.Interface.IsSet.du_dom_540
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_vkSigs_2892
                           (coe MAlonzo.Code.Ledger.Transaction.d_wits_2914 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txvldt_2852
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2912 (coe v1))))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_564
                  (MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Transaction.d_txscripts_3012
                     (coe v0) (coe v1)
                     (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2004 (coe v2)))))
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
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                          (coe v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_386
                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))))
                             (coe
                                MAlonzo.Code.Interface.IsSet.du_dom_540
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_vkSigs_2892
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_2914 (coe v1)))))))
                  (coe
                     du_witsVKeyNeeded_2274 v0
                     (MAlonzo.Code.Ledger.Utxo.d_utxo_2004 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_2912 (coe v1))))
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
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_386
                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Transaction.d_scripts_2894
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2914 (coe v1))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'65340'__718
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                           (coe
                              du_scriptsNeeded_2276 v0
                              (MAlonzo.Code.Ledger.Utxo.d_utxo_2004 (coe v2))
                              (MAlonzo.Code.Ledger.Transaction.d_body_2912 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_386
                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Transaction.d_refScripts_2960
                                 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2004 (coe v2))))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du__'65340'__718
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                      (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                            (coe v0))))
                                   (coe
                                      du_scriptsNeeded_2276 v0
                                      (MAlonzo.Code.Ledger.Utxo.d_utxo_2004 (coe v2))
                                      (MAlonzo.Code.Ledger.Transaction.d_body_2912 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_386
                                      (MAlonzo.Code.Axiom.Set.d_th_1458
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (MAlonzo.Code.Interface.Hashable.d_hash_16
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Transaction.d_refScripts_2960
                                         (coe v0) (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2004 (coe v2)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_386
                           (MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_2894
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_2914 (coe v1))))))
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
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                      (coe
                                         MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_ps_454
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
                                               (coe v0))))))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Interface.IsSet.du_dom_540
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_txdats_2896
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2914 (coe v1))))))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1906 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2004 (coe v2))))
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
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                            (coe
                                               MAlonzo.Code.Ledger.Script.d_ps_454
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__668
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (coe
                                         MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1906 (coe v0)
                                         (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2004 (coe v2)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1902
                                            (coe
                                               MAlonzo.Code.Interface.IsSet.du_range_542
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                               (coe
                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_txouts_2846
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_body_2912
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1902
                                            (coe
                                               MAlonzo.Code.Interface.IsSet.du_range_542
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                               (coe
                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'__1258
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
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.d_utxo_2004 (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2844
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_body_2912
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Interface.IsSet.du_dom_540
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2896
                                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2914 (coe v1)))))
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
                                         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_ps_454
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         du_allowedLanguages_2140 (coe v0) (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2004 (coe v2)))))
                              (coe
                                 du_languages_2124 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2004 (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1218
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txADhash_2866
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2912 (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1218
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_txAD_2918 (coe v1)))))))))))
-- Ledger.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_32509 ::
  T_GeneralizeTel_32517 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2902
d_'46'generalizedField'45'tx_32509 v0
  = case coe v0 of
      C_mkGeneralizeTel_32519 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s
d_'46'generalizedField'45's_32511 ::
  T_GeneralizeTel_32517 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
d_'46'generalizedField'45's_32511 v0
  = case coe v0 of
      C_mkGeneralizeTel_32519 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_32513 ::
  T_GeneralizeTel_32517 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1980
d_'46'generalizedField'45'Γ_32513 v0
  = case coe v0 of
      C_mkGeneralizeTel_32519 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_32515 ::
  T_GeneralizeTel_32517 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
d_'46'generalizedField'45's''_32515 v0
  = case coe v0 of
      C_mkGeneralizeTel_32519 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.GeneralizeTel
d_GeneralizeTel_32517 a0 a1 = ()
data T_GeneralizeTel_32517
  = C_mkGeneralizeTel_32519 MAlonzo.Code.Ledger.Transaction.T_Tx_2902
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1980
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
