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
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.ScriptValidation
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _.Credential
d_Credential_46 a0 = ()
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
-- _.THash
d_THash_252 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_THash_252 = erased
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
-- _.ScriptHash
d_ScriptHash_340 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_340 = erased
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
-- _.isSigned
d_isSigned_544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_544 = erased
-- _.refScripts
d_refScripts_596 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
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
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3258 (coe v0)
-- _.validP1Script
d_validP1Script_644 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_644 = erased
-- _.Tx.body
d_body_1522 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_1522 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v0)
-- _.Tx.isValid
d_isValid_1524 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 -> Bool
d_isValid_1524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v0)
-- _.Tx.txAD
d_txAD_1526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 -> Maybe AgdaAny
d_txAD_1526 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150 (coe v0)
-- _.Tx.wits
d_wits_1528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3114
d_wits_1528 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146 (coe v0)
-- _.TxBody.collateral
d_collateral_1532 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3018 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1534 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe Integer
d_curTreasury_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3012 (coe v0)
-- _.TxBody.mint
d_mint_1536 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_mint_1536 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2992 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1538 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2986 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [AgdaAny]
d_reqSigHash_1540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3020 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1542 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_scriptIntHash_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3022
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_txADhash_1544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3008 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_txNetworkId_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3010 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcerts_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2996 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txdonation_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3004 (coe v0)
-- _.TxBody.txfee
d_txfee_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txfee_1552 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2990 (coe v0)
-- _.TxBody.txid
d_txid_1554 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_txid_1554 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3016 (coe v0)
-- _.TxBody.txins
d_txins_1556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1556 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984 (coe v0)
-- _.TxBody.txouts
d_txouts_1558 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1558 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2988 (coe v0)
-- _.TxBody.txprop
d_txprop_1560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854]
d_txprop_1560 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3002 (coe v0)
-- _.TxBody.txsize
d_txsize_1562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txsize_1562 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3014 (coe v0)
-- _.TxBody.txup
d_txup_1564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1564 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3006 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1566 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2994 (coe v0)
-- _.TxBody.txvote
d_txvote_1568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836]
d_txvote_1568 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3000 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2998 (coe v0)
-- Ledger.Conway.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1620 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Utxow._.UTxOEnv
d_UTxOEnv_1656 a0 a1 = ()
-- Ledger.Conway.Utxow._.UTxOState
d_UTxOState_1658 a0 a1 = ()
-- Ledger.Conway.Utxow._.getDataHashes
d_getDataHashes_1694 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1694 ~v0 ~v1 = du_getDataHashes_1694
du_getDataHashes_1694 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1694
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_getDataHashes_2164
-- Ledger.Conway.Utxow._.getInputHashes
d_getInputHashes_1696 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1696 v0 ~v1 = du_getInputHashes_1696 v0
du_getInputHashes_1696 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_getInputHashes_2168 (coe v0)
-- Ledger.Conway.Utxow._.UTxOEnv.pparams
d_pparams_1768 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2242 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_1768 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2252 (coe v0)
-- Ledger.Conway.Utxow._.UTxOEnv.slot
d_slot_1770 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2242 -> AgdaAny
d_slot_1770 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2250 (coe v0)
-- Ledger.Conway.Utxow._.UTxOEnv.treasury
d_treasury_1772 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2242 -> Integer
d_treasury_1772 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2254 (coe v0)
-- Ledger.Conway.Utxow._.UTxOState.deposits
d_deposits_1776 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1776 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2274 (coe v0)
-- Ledger.Conway.Utxow._.UTxOState.donations
d_donations_1778 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260 -> Integer
d_donations_1778 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2276 (coe v0)
-- Ledger.Conway.Utxow._.UTxOState.fees
d_fees_1780 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260 -> Integer
d_fees_1780 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2272 (coe v0)
-- Ledger.Conway.Utxow._.UTxOState.utxo
d_utxo_1782 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1782 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v0)
-- Ledger.Conway.Utxow._.ScriptPurpose
d_ScriptPurpose_1832 a0 a1 = ()
-- Ledger.Conway.Utxow._.d
d_d_2262 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_2262 ~v0 v1 = du_d_2262 v1
du_d_2262 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_2262 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Utxow._.HasInlineDatum
d_HasInlineDatum_2264 a0 a1 a2 = ()
newtype T_HasInlineDatum_2264 = C_InlineDatum_2268 AgdaAny
-- Ledger.Conway.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_2272 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_2272 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_2272 v2
du_Dec'45'HasInlineDatum_2272 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_2272 v0
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
                                               (coe C_InlineDatum_2268 v8)))
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
d_UsesV3Features_2338 a0 a1 a2 = ()
data T_UsesV3Features_2338
  = C_HasVotes_2340 | C_HasProps_2342 | C_HasDonation_2344 |
    C_HasTreasury_2346
-- Ledger.Conway.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_2350 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_2350 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_2350 v2
du_Dec'45'UsesV3Features_2350 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_2350 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Transaction.C_TxBody'46'constructor_19517 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
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
                                               (coe C_HasTreasury_2346)))
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
                                        (coe C_HasDonation_2344)))
                    (:) v21 v22
                      -> coe
                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_HasProps_2342)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v21 v22
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe C_HasVotes_2340)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow.languages
d_languages_2374 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2374 v0 ~v1 v2 v3 = du_languages_2374 v0 v2 v3
du_languages_2374 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2374 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_getLanguage_2384 (coe v0))
      (MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3258
         (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Utxow._.getLanguage
d_getLanguage_2384 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2384 v0 ~v1 ~v2 ~v3 v4 = du_getLanguage_2384 v0 v4
du_getLanguage_2384 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2384 v0 v1
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
-- Ledger.Conway.Utxow.getVKeys
d_getVKeys_2388 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18] -> [AgdaAny]
d_getVKeys_2388 ~v0 ~v1 = du_getVKeys_2388
du_getVKeys_2388 ::
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18] -> [AgdaAny]
du_getVKeys_2388
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42)
-- Ledger.Conway.Utxow.allowedLanguages
d_allowedLanguages_2390 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2390 v0 ~v1 v2 v3
  = du_allowedLanguages_2390 v0 v2 v3
du_allowedLanguages_2390 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2390 v0 v1 v2
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
         (coe du_os_2444 (coe v0) (coe v1) (coe v2)))
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
              (coe du_Dec'45'UsesV3Features_2350 (coe du_txb_2400 (coe v1)))
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
                         (coe du_Dec'45'HasInlineDatum_2272)
                         (coe
                            MAlonzo.Code.Class.IsSet.d_toSet_490
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
                            (coe du_os_2444 (coe v0) (coe v1) (coe v2))))
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
d_txb_2400 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_txb_2400 ~v0 ~v1 v2 ~v3 = du_txb_2400 v2
du_txb_2400 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
du_txb_2400 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v0)
-- Ledger.Conway.Utxow._.os
d_os_2444 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2444 v0 ~v1 v2 v3 = du_os_2444 v0 v2 v3
du_os_2444 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2444 v0 v1 v2
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
               MAlonzo.Code.Ledger.Conway.Utxo.du_outs_2316
               (coe du_txb_2400 (coe v1))))
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
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984
                     (coe du_txb_2400 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2986
                     (coe du_txb_2400 (coe v1)))))))
-- Ledger.Conway.Utxow.getScripts
d_getScripts_2450 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18] -> [AgdaAny]
d_getScripts_2450 ~v0 ~v1 = du_getScripts_2450
du_getScripts_2450 ::
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18] -> [AgdaAny]
du_getScripts_2450
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52)
-- Ledger.Conway.Utxow.credsNeeded
d_credsNeeded_2452 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2452 v0 ~v1 v2 v3 = du_credsNeeded_2452 v0 v2 v3
du_credsNeeded_2452 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2452 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398
         (MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Ledger.Conway.ScriptValidation.C_Spend_1968
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
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
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                        (coe v0))))
               (coe v1)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984 (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3018
                     (coe v2))))))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe
                    MAlonzo.Code.Ledger.Conway.ScriptValidation.C_Rwrd_1964 (coe v3))
                 (coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v3)))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_548
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
               (coe
                  MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_116
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2998 (coe v2)))))
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
               (\ v3 ->
                  coe
                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.ScriptValidation.C_Cert_1962 (coe v3))
                         (coe v4))
                    (coe MAlonzo.Code.Ledger.Conway.Certs.du_cwitness_1040 (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_428
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2996 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.du_map_398
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.ScriptValidation.C_Mint_1966 (coe v3))
                       (coe MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22 (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2992 (coe v2))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_398
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Ledger.Conway.ScriptValidation.C_Vote_1970 (coe v3))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (\ v3 ->
                              MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_848 (coe v3))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3000 (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_576
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        let v4
                              = MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_872
                                  (coe v3) in
                        coe
                          (case coe v4 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.ScriptValidation.C_Propose_1972
                                          (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22
                                          (coe v5)))
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
                             _ -> MAlonzo.RTE.mazUnreachableError))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3002
                           (coe v2))))))))
-- Ledger.Conway.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_2526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [AgdaAny]
d_witsVKeyNeeded_2526 v0 ~v1 = du_witsVKeyNeeded_2526 v0
du_witsVKeyNeeded_2526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [AgdaAny]
du_witsVKeyNeeded_2526 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getVKeys_2388))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_398
                 (MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2452 (coe v0)))
-- Ledger.Conway.Utxow.scriptsNeeded
d_scriptsNeeded_2528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [AgdaAny]
d_scriptsNeeded_2528 v0 ~v1 = du_scriptsNeeded_2528 v0
du_scriptsNeeded_2528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [AgdaAny]
du_scriptsNeeded_2528 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getScripts_2450))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_398
                 (MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2452 (coe v0)))
-- Ledger.Conway.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2530 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2530
  = C_UTXOW'45'inductive_2630 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Utxow._.txAD
d_txAD_2546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_36131 -> Maybe AgdaAny
d_txAD_2546 ~v0 ~v1 v2 = du_txAD_2546 v2
du_txAD_2546 :: T_GeneralizeTel_36131 -> Maybe AgdaAny
du_txAD_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150
      (coe d_'46'generalizedField'45'tx_36125 (coe v0))
-- Ledger.Conway.Utxow._.body
d_body_2548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_36131 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_2548 ~v0 ~v1 v2 = du_body_2548 v2
du_body_2548 ::
  T_GeneralizeTel_36131 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
du_body_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
      (coe d_'46'generalizedField'45'tx_36125 (coe v0))
-- Ledger.Conway.Utxow._.wits
d_wits_2550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_36131 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3114
d_wits_2550 ~v0 ~v1 v2 = du_wits_2550 v2
du_wits_2550 ::
  T_GeneralizeTel_36131 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3114
du_wits_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
      (coe d_'46'generalizedField'45'tx_36125 (coe v0))
-- Ledger.Conway.Utxow._.refInputs
d_refInputs_2560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_36131 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2560 ~v0 ~v1 v2 = du_refInputs_2560 v2
du_refInputs_2560 ::
  T_GeneralizeTel_36131 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2986
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_36125 (coe v0)))
-- Ledger.Conway.Utxow._.txADhash
d_txADhash_2566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_36131 -> Maybe AgdaAny
d_txADhash_2566 ~v0 ~v1 v2 = du_txADhash_2566 v2
du_txADhash_2566 :: T_GeneralizeTel_36131 -> Maybe AgdaAny
du_txADhash_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3008
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_36125 (coe v0)))
-- Ledger.Conway.Utxow._.txid
d_txid_2576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_36131 -> AgdaAny
d_txid_2576 ~v0 ~v1 v2 = du_txid_2576 v2
du_txid_2576 :: T_GeneralizeTel_36131 -> AgdaAny
du_txid_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3016
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_36125 (coe v0)))
-- Ledger.Conway.Utxow._.txouts
d_txouts_2580 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_36131 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2580 ~v0 ~v1 v2 = du_txouts_2580 v2
du_txouts_2580 ::
  T_GeneralizeTel_36131 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2988
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_36125 (coe v0)))
-- Ledger.Conway.Utxow._.txvldt
d_txvldt_2588 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_36131 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2588 ~v0 ~v1 v2 = du_txvldt_2588 v2
du_txvldt_2588 ::
  T_GeneralizeTel_36131 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2994
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_36125 (coe v0)))
-- Ledger.Conway.Utxow._.scripts
d_scripts_2596 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_36131 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2596 ~v0 ~v1 v2 = du_scripts_2596 v2
du_scripts_2596 ::
  T_GeneralizeTel_36131 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3126
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
         (coe d_'46'generalizedField'45'tx_36125 (coe v0)))
-- Ledger.Conway.Utxow._.txdats
d_txdats_2600 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_36131 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2600 ~v0 ~v1 v2 = du_txdats_2600 v2
du_txdats_2600 ::
  T_GeneralizeTel_36131 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3128
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
         (coe d_'46'generalizedField'45'tx_36125 (coe v0)))
-- Ledger.Conway.Utxow._.vkSigs
d_vkSigs_2604 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_36131 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2604 ~v0 ~v1 v2 = du_vkSigs_2604 v2
du_vkSigs_2604 ::
  T_GeneralizeTel_36131 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3124
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
         (coe d_'46'generalizedField'45'tx_36125 (coe v0)))
-- Ledger.Conway.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2656 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2656 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2656 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2656 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2656 v0 v1 v2
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
                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3016
                          (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3124
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146 (coe v2)))))
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
                             du_scriptsNeeded_2528 v0
                             (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v1))
                             (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2))))
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
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3124
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
                                      (coe v2)))))
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2994
                             (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
                          v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_576
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP1Script_404)
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3258
                     (coe v0) (coe v2)
                     (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v1)))))
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
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3124
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
                                      (coe v2)))))))
                  (coe
                     du_witsVKeyNeeded_2526 v0
                     (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v1))
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2))))
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
                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3126
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
                                         (coe v2))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'65340'__730
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased
                              (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
                           (coe
                              du_scriptsNeeded_2528 v0
                              (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v1))
                              (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
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
                                 (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v1))))))
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
                                   MAlonzo.Code.Axiom.Set.du__'65340'__730
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                      erased
                                      (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                            (coe v0))))
                                   (coe
                                      du_scriptsNeeded_2528 v0
                                      (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v1))
                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
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
                                            MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270
                                            (coe v1)))))))
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
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3126
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146 (coe v2))))))
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
                                   MAlonzo.Code.Class.IsSet.du_dom_548
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3128
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
                                         (coe v2))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Utxo.du_getInputHashes_2168 (coe v0)
                           (coe v2)
                           (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v1))))
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
                                         MAlonzo.Code.Ledger.Conway.Utxo.du_getInputHashes_2168
                                         (coe v0) (coe v2)
                                         (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v1)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.du_getDataHashes_2164
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2988
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                                     (coe v2)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.du_getDataHashes_2164
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
                                                     MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270
                                                     (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2986
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                                        (coe v2))))))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_548
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3128
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146 (coe v2)))))
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
                                         du_allowedLanguages_2390 (coe v0) (coe v2)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v1)))))
                              (coe
                                 du_languages_2374 (coe v0) (coe v2)
                                 (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v1))))
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
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3008
                                 (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
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
d_'46'generalizedField'45's_36123 ::
  T_GeneralizeTel_36131 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260
d_'46'generalizedField'45's_36123 v0
  = case coe v0 of
      C_mkGeneralizeTel_36133 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_36125 ::
  T_GeneralizeTel_36131 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134
d_'46'generalizedField'45'tx_36125 v0
  = case coe v0 of
      C_mkGeneralizeTel_36133 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_36127 ::
  T_GeneralizeTel_36131 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2242
d_'46'generalizedField'45'Γ_36127 v0
  = case coe v0 of
      C_mkGeneralizeTel_36133 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_36129 ::
  T_GeneralizeTel_36131 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260
d_'46'generalizedField'45's''_36129 v0
  = case coe v0 of
      C_mkGeneralizeTel_36133 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow.GeneralizeTel
d_GeneralizeTel_36131 a0 a1 = ()
data T_GeneralizeTel_36131
  = C_mkGeneralizeTel_36133 MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260
                            MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2242
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260
