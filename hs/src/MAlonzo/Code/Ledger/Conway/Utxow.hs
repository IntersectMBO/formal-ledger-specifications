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

module MAlonzo.Code.Ledger.Conway.Utxow where

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
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasEmptySet
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Utxo
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Hashable-Script
d_Hashable'45'Script_218 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
         (coe v0))
-- _.Language
d_Language_260 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Language_260 = erased
-- _.Script
d_Script_332 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Script_332 = erased
-- _.Tx
d_Tx_410 a0 = ()
-- _.TxBody
d_TxBody_412 a0 = ()
-- _.TxOut
d_TxOut_420 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxOut_420 = erased
-- _.UTxO
d_UTxO_426 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_UTxO_426 = erased
-- _.isBootstrapAddr
d_isBootstrapAddr_514 a0 a1 = ()
-- _.isBootstrapAddr?
d_isBootstrapAddr'63'_516 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_516 ~v0 = du_isBootstrapAddr'63'_516
du_isBootstrapAddr'63'_516 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_516
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isBootstrapAddr'63'_184
-- _.isKeyHashObj
d_isKeyHashObj_520 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isKeyHashObj_520 ~v0 = du_isKeyHashObj_520
du_isKeyHashObj_520 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isKeyHashObj_520
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42
-- _.isScriptObj
d_isScriptObj_540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isScriptObj_540 ~v0 = du_isScriptObj_540
du_isScriptObj_540 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isScriptObj_540
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
-- _.isSigned
d_isSigned_544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_544 = erased
-- _.refScripts
d_refScripts_596 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3206 (coe v0)
-- _.toP1Script
d_toP1Script_616 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_616 ~v0 = du_toP1Script_616
du_toP1Script_616 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_616
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP1Script_404
-- _.txscripts
d_txscripts_640 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3256 (coe v0)
-- _.validP1Script
d_validP1Script_644 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_644 = erased
-- _.Tx.body
d_body_1522 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_1522 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v0)
-- _.Tx.isValid
d_isValid_1524 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Bool
d_isValid_1524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v0)
-- _.Tx.txAD
d_txAD_1526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Maybe AgdaAny
d_txAD_1526 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150 (coe v0)
-- _.Tx.txsize
d_txsize_1528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Integer
d_txsize_1528 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3146 (coe v0)
-- _.Tx.wits
d_wits_1530 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110
d_wits_1530 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144 (coe v0)
-- _.TxBody.collateral
d_collateral_1534 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3014 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1536 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe Integer
d_curTreasury_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3010 (coe v0)
-- _.TxBody.mint
d_mint_1538 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_mint_1538 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2990 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2984 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1542 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [AgdaAny]
d_reqSigHash_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3016 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_scriptIntHash_1544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3018
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_txADhash_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3006 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_txNetworkId_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3008 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcerts_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2994 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txdonation_1552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3002 (coe v0)
-- _.TxBody.txfee
d_txfee_1554 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txfee_1554 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2988 (coe v0)
-- _.TxBody.txid
d_txid_1556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_txid_1556 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3012 (coe v0)
-- _.TxBody.txins
d_txins_1558 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1558 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982 (coe v0)
-- _.TxBody.txouts
d_txouts_1560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1560 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986 (coe v0)
-- _.TxBody.txprop
d_txprop_1562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854]
d_txprop_1562 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3000 (coe v0)
-- _.TxBody.txup
d_txup_1564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1564 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3004 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1566 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2992 (coe v0)
-- _.TxBody.txvote
d_txvote_1568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836]
d_txvote_1568 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_2998 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2996 (coe v0)
-- Ledger.Conway.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1620 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Utxow._.UTxOEnv
d_UTxOEnv_1656 a0 a1 = ()
-- Ledger.Conway.Utxow._.UTxOState
d_UTxOState_1658 a0 a1 = ()
-- Ledger.Conway.Utxow._.UTxOEnv.pparams
d_pparams_1754 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2042 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_1754 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2052 (coe v0)
-- Ledger.Conway.Utxow._.UTxOEnv.slot
d_slot_1756 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2042 -> AgdaAny
d_slot_1756 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2050 (coe v0)
-- Ledger.Conway.Utxow._.UTxOEnv.treasury
d_treasury_1758 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2042 -> Integer
d_treasury_1758 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2054 (coe v0)
-- Ledger.Conway.Utxow._.UTxOState.deposits
d_deposits_1762 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1762 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2074 (coe v0)
-- Ledger.Conway.Utxow._.UTxOState.donations
d_donations_1764 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 -> Integer
d_donations_1764 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2076 (coe v0)
-- Ledger.Conway.Utxow._.UTxOState.fees
d_fees_1766 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 -> Integer
d_fees_1766 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2072 (coe v0)
-- Ledger.Conway.Utxow._.UTxOState.utxo
d_utxo_1768 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1768 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v0)
-- Ledger.Conway.Utxow._.credsNeeded
d_credsNeeded_1820 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_1820 v0 ~v1 = du_credsNeeded_1820 v0
du_credsNeeded_1820 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.du_credsNeeded_2276
      (coe v0)
-- Ledger.Conway.Utxow._.txOutToDataHash
d_txOutToDataHash_1832 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_1832 ~v0 ~v1 = du_txOutToDataHash_1832
du_txOutToDataHash_1832 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_1832
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.du_txOutToDataHash_2352
-- Ledger.Conway.Utxow._.txOutToP2Script
d_txOutToP2Script_1834 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_1834 v0 ~v1 = du_txOutToP2Script_1834 v0
du_txOutToP2Script_1834 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.du_txOutToP2Script_2356
      (coe v0)
-- Ledger.Conway.Utxow._.d
d_d_2208 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_2208 ~v0 v1 = du_d_2208 v1
du_d_2208 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_2208 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Utxow._.HasInlineDatum
d_HasInlineDatum_2210 a0 a1 a2 = ()
newtype T_HasInlineDatum_2210 = C_InlineDatum_2214 AgdaAny
-- Ledger.Conway.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_2218 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_2218 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_2218 v2
du_Dec'45'HasInlineDatum_2218 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_2218 v0
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
                                               (coe C_InlineDatum_2214 v8)))
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
-- Ledger.Conway.Utxow._._.UsesV3Features
d_UsesV3Features_2282 a0 a1 a2 = ()
data T_UsesV3Features_2282
  = C_HasVotes_2284 | C_HasProps_2286 | C_HasDonation_2288 |
    C_HasTreasury_2290
-- Ledger.Conway.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_2294 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_2294 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_2294 v2
du_Dec'45'UsesV3Features_2294 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_2294 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Transaction.C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> case coe v9 of
             []
               -> case coe v10 of
                    []
                      -> case coe v11 of
                           0 -> case coe v15 of
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v20
                                    -> coe
                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                               (coe C_HasTreasury_2290)))
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
                                        (coe C_HasDonation_2288)))
                    (:) v20 v21
                      -> coe
                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_HasProps_2286)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v20 v21
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe C_HasVotes_2284)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow.languages
d_languages_2318 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2318 v0 ~v1 v2 v3 = du_languages_2318 v0 v2 v3
du_languages_2318 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2318 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_getLanguage_2328 (coe v0))
      (MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3256
         (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Utxow._.getLanguage
d_getLanguage_2328 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2328 v0 ~v1 ~v2 ~v3 v4 = du_getLanguage_2328 v0 v4
du_getLanguage_2328 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2328 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Ledger.Conway.Script.Base.d_language_262
                (MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                   (coe
                      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                      (coe v0)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow.allowedLanguages
d_allowedLanguages_2332 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2332 v0 ~v1 v2 v3
  = du_allowedLanguages_2332 v0 v2 v3
du_allowedLanguages_2332 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2332 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__42
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1638
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Address.du_isBootstrapAddr'63'_184
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (coe du_os_2384 (coe v0) (coe v1) (coe v2)))
      (coe
         (\ v3 ->
            MAlonzo.Code.Class.HasEmptySet.d_'8709'_306
              (coe
                 MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_314
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Class.ToBool.du_if_then_else__42
              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
              (coe du_Dec'45'UsesV3Features_2294 (coe du_txb_2342 (coe v1)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Axiom.Set.du_fromList_428
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV3_212
                            (coe
                               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                  (coe v0))))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Class.ToBool.du_if_then_else__42
                      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
                      (coe
                         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1638
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                         (coe du_Dec'45'HasInlineDatum_2218)
                         (coe
                            MAlonzo.Code.Class.IsSet.d_toSet_490
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
                            (coe du_os_2384 (coe v0) (coe v1) (coe v2))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_428
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV2_210
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV3_212
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                             (coe v0))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_428
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV1_208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV2_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV3_212
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                                (coe v0))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
-- Ledger.Conway.Utxow._.txb
d_txb_2342 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_txb_2342 ~v0 ~v1 v2 ~v3 = du_txb_2342 v2
du_txb_2342 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
du_txb_2342 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v0)
-- Ledger.Conway.Utxow._.os
d_os_2384 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2384 v0 ~v1 v2 v3 = du_os_2384 v0 v2 v3
du_os_2384 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2384 v0 v1 v2
  = let v3
          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
         (coe
            MAlonzo.Code.Class.IsSet.du_range_550
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
            (coe
               MAlonzo.Code.Ledger.Conway.Utxo.du_outs_2116
               (coe du_txb_2342 (coe v1))))
         (coe
            MAlonzo.Code.Class.IsSet.du_range_550
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
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
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                        (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982
                     (coe du_txb_2342 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2984
                     (coe du_txb_2342 (coe v1)))))))
-- Ledger.Conway.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2390 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2390
  = C_UTXOW'45'inductive_2496 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Utxow._.txAD
d_txAD_2406 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30255 -> Maybe AgdaAny
d_txAD_2406 ~v0 ~v1 v2 = du_txAD_2406 v2
du_txAD_2406 :: T_GeneralizeTel_30255 -> Maybe AgdaAny
du_txAD_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150
      (coe d_'46'generalizedField'45'tx_30249 (coe v0))
-- Ledger.Conway.Utxow._.body
d_body_2408 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30255 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_2408 ~v0 ~v1 v2 = du_body_2408 v2
du_body_2408 ::
  T_GeneralizeTel_30255 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
du_body_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
      (coe d_'46'generalizedField'45'tx_30249 (coe v0))
-- Ledger.Conway.Utxow._.wits
d_wits_2412 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30255 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110
d_wits_2412 ~v0 ~v1 v2 = du_wits_2412 v2
du_wits_2412 ::
  T_GeneralizeTel_30255 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110
du_wits_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144
      (coe d_'46'generalizedField'45'tx_30249 (coe v0))
-- Ledger.Conway.Utxow._.refInputs
d_refInputs_2422 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30255 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2422 ~v0 ~v1 v2 = du_refInputs_2422 v2
du_refInputs_2422 ::
  T_GeneralizeTel_30255 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2984
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_30249 (coe v0)))
-- Ledger.Conway.Utxow._.txADhash
d_txADhash_2428 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30255 -> Maybe AgdaAny
d_txADhash_2428 ~v0 ~v1 v2 = du_txADhash_2428 v2
du_txADhash_2428 :: T_GeneralizeTel_30255 -> Maybe AgdaAny
du_txADhash_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3006
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_30249 (coe v0)))
-- Ledger.Conway.Utxow._.txid
d_txid_2438 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30255 -> AgdaAny
d_txid_2438 ~v0 ~v1 v2 = du_txid_2438 v2
du_txid_2438 :: T_GeneralizeTel_30255 -> AgdaAny
du_txid_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3012
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_30249 (coe v0)))
-- Ledger.Conway.Utxow._.txins
d_txins_2440 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30255 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2440 ~v0 ~v1 v2 = du_txins_2440 v2
du_txins_2440 ::
  T_GeneralizeTel_30255 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_30249 (coe v0)))
-- Ledger.Conway.Utxow._.txouts
d_txouts_2442 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2442 ~v0 ~v1 v2 = du_txouts_2442 v2
du_txouts_2442 ::
  T_GeneralizeTel_30255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_30249 (coe v0)))
-- Ledger.Conway.Utxow._.txvldt
d_txvldt_2448 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2448 ~v0 ~v1 v2 = du_txvldt_2448 v2
du_txvldt_2448 ::
  T_GeneralizeTel_30255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2992
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_30249 (coe v0)))
-- Ledger.Conway.Utxow._.scripts
d_scripts_2456 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30255 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2456 ~v0 ~v1 v2 = du_scripts_2456 v2
du_scripts_2456 ::
  T_GeneralizeTel_30255 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3122
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144
         (coe d_'46'generalizedField'45'tx_30249 (coe v0)))
-- Ledger.Conway.Utxow._.txdats
d_txdats_2460 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30255 -> [AgdaAny]
d_txdats_2460 ~v0 ~v1 v2 = du_txdats_2460 v2
du_txdats_2460 :: T_GeneralizeTel_30255 -> [AgdaAny]
du_txdats_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3124
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144
         (coe d_'46'generalizedField'45'tx_30249 (coe v0)))
-- Ledger.Conway.Utxow._.vkSigs
d_vkSigs_2464 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2464 ~v0 ~v1 v2 = du_vkSigs_2464 v2
du_vkSigs_2464 ::
  T_GeneralizeTel_30255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3120
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144
         (coe d_'46'generalizedField'45'tx_30249 (coe v0)))
-- Ledger.Conway.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2522 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2522 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2522 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2522 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2522 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Ledger.Conway.Crypto.d_Dec'45'isSigned_118
                    (MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Transaction.d_txidBytes_2402 v0
                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3012
                          (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v2))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3120
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144 (coe v2)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                       (coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.Hashable.d_hash_16
                             (MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'P1Script_114
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                      (coe v0))))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_mapPartial_576
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (\ v4 ->
                                coe
                                  MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Script.Validation.du_credsNeeded_2276
                                (coe v0) (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v1))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v2)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validP1Script_112
                          (MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_398
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3120
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144
                                      (coe v2)))))
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2992
                             (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v2)))
                          v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_576
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP1Script_404)
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3256
                     (coe v0) (coe v2)
                     (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v1)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                             (coe
                                MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
                          (coe v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_398
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3120
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144
                                      (coe v2)))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_576
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Script.Validation.du_credsNeeded_2276
                        (coe v0) (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v2)))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                      (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_398
                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3122
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144
                                         (coe v2))))))
                        (let v3
                               = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.du__'65340'__730
                              (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                 erased
                                 (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (\ v4 ->
                                    coe
                                      MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Script.Validation.du_credsNeeded_2276
                                    (coe v0)
                                    (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                       (coe v2))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_map_398
                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3206
                                    (coe v0) (coe v2)
                                    (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v1)))))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                      (coe v0)))
                                (coe v3)
                                (let v4
                                       = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'65340'__730
                                      (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v4))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                         erased
                                         (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (\ v5 ->
                                            coe
                                              MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.Validation.du_credsNeeded_2276
                                            (coe v0)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v1))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                               (coe v2))))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_map_398
                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (MAlonzo.Code.Interface.Hashable.d_hash_16
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                                  (coe v0))))
                                         (MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3206
                                            (coe v0) (coe v2)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070
                                               (coe v1))))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_398
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3122
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144 (coe v2))))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                               (coe v0))))))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_398
                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                                     (coe v0)))))))
                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3124
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144
                                         (coe v2))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_mapPartial_576
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Class.ToBool.du_if_then_else__42
                                (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_102)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Script.Validation.du_txOutToP2Script_2356
                                   (coe v0)
                                   (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v1))
                                   (coe v2) (coe v3))
                                (coe
                                   MAlonzo.Code.Level.C_lift_20
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe
                                   (\ v4 ->
                                      coe
                                        MAlonzo.Code.Ledger.Conway.Script.Validation.du_txOutToDataHash_2352
                                        (coe v3)))
                                (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_range_550
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
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
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                                          (coe v0))
                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                                          (coe v0))))
                                 (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                       (coe v2)))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (\ v4 ->
                                            coe
                                              MAlonzo.Code.Class.ToBool.du_if_then_else__42
                                              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_102)
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Script.Validation.du_txOutToP2Script_2356
                                                 (coe v0)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070
                                                    (coe v1))
                                                 (coe v2) (coe v4))
                                              (coe
                                                 MAlonzo.Code.Level.C_lift_20
                                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                              (coe
                                                 (\ v5 ->
                                                    coe
                                                      MAlonzo.Code.Ledger.Conway.Script.Validation.du_txOutToDataHash_2352
                                                      (coe v4)))
                                              (coe
                                                 (\ v5 ->
                                                    coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_range_550
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
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
                                                  (coe
                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                                                        (coe v0))
                                                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                                     (coe v2))))))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Script.Validation.du_txOutToDataHash_2352)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                                     (coe v2)))))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Script.Validation.du_txOutToDataHash_2352)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
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
                                                     (coe
                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070
                                                     (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2984
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                                        (coe v2))))))))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_398
                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                                (coe v0)))))))
                              (MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3124
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144 (coe v2)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'Language_218
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         du_allowedLanguages_2332 (coe v0) (coe v2)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v1)))))
                              (coe
                                 du_languages_2318 (coe v0) (coe v2)
                                 (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v1))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1224
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3006
                                 (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v2)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1224
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150
                                    (coe v2)))))))))))
-- Ledger.Conway.Utxow..generalizedField-s
d_'46'generalizedField'45's_30247 ::
  T_GeneralizeTel_30255 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
d_'46'generalizedField'45's_30247 v0
  = case coe v0 of
      C_mkGeneralizeTel_30257 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_30249 ::
  T_GeneralizeTel_30255 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130
d_'46'generalizedField'45'tx_30249 v0
  = case coe v0 of
      C_mkGeneralizeTel_30257 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_30251 ::
  T_GeneralizeTel_30255 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2042
d_'46'generalizedField'45'Γ_30251 v0
  = case coe v0 of
      C_mkGeneralizeTel_30257 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_30253 ::
  T_GeneralizeTel_30255 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
d_'46'generalizedField'45's''_30253 v0
  = case coe v0 of
      C_mkGeneralizeTel_30257 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow.GeneralizeTel
d_GeneralizeTel_30255 a0 a1 = ()
data T_GeneralizeTel_30255
  = C_mkGeneralizeTel_30257 MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
                            MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2042
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
