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
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script
import qualified MAlonzo.Code.Ledger.Conway.ScriptValidation
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra
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
d_Hashable'45'Script_222 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
         (coe v0))
-- _.THash
d_THash_256 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_THash_256 = erased
-- _.Language
d_Language_264 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Language_264 = erased
-- _.Script
d_Script_348 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Script_348 = erased
-- _.ScriptHash
d_ScriptHash_356 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_356 = erased
-- _.Tx
d_Tx_428 a0 = ()
-- _.TxBody
d_TxBody_430 a0 = ()
-- _.TxOut
d_TxOut_438 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxOut_438 = erased
-- _.UTxO
d_UTxO_444 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_UTxO_444 = erased
-- _.isBootstrapAddr
d_isBootstrapAddr_546 a0 a1 = ()
-- _.isBootstrapAddr?
d_isBootstrapAddr'63'_548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_548 ~v0 = du_isBootstrapAddr'63'_548
du_isBootstrapAddr'63'_548 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_548
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isBootstrapAddr'63'_184
-- _.isSigned
d_isSigned_570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_570 = erased
-- _.refScripts
d_refScripts_622 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3270 (coe v0)
-- _.txscripts
d_txscripts_662 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3322 (coe v0)
-- _.validP1Script
d_validP1Script_666 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_666 = erased
-- _.Tx.body
d_body_1544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
d_body_1544 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v0)
-- _.Tx.isValid
d_isValid_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Bool
d_isValid_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v0)
-- _.Tx.txAD
d_txAD_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Maybe AgdaAny
d_txAD_1548 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3214 (coe v0)
-- _.Tx.wits
d_wits_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3178
d_wits_1550 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210 (coe v0)
-- _.TxBody.collateral
d_collateral_1554 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3082 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  Maybe Integer
d_curTreasury_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3076 (coe v0)
-- _.TxBody.mint
d_mint_1558 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> AgdaAny
d_mint_1558 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3056 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3050 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> [AgdaAny]
d_reqSigHash_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3084 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  Maybe AgdaAny
d_scriptIntHash_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3086
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  Maybe AgdaAny
d_txADhash_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3072 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  Maybe AgdaAny
d_txNetworkId_1568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3074 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008]
d_txcerts_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3060 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1572 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
d_txdonation_1572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3068 (coe v0)
-- _.TxBody.txfee
d_txfee_1574 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
d_txfee_1574 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3054 (coe v0)
-- _.TxBody.txid
d_txid_1576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> AgdaAny
d_txid_1576 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3080 (coe v0)
-- _.TxBody.txins
d_txins_1578 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1578 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048 (coe v0)
-- _.TxBody.txouts
d_txouts_1580 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1580 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052 (coe v0)
-- _.TxBody.txprop
d_txprop_1582 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840]
d_txprop_1582 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3066 (coe v0)
-- _.TxBody.txsize
d_txsize_1584 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
d_txsize_1584 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3078 (coe v0)
-- _.TxBody.txup
d_txup_1586 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1586 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3070 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1588 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1588 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3058 (coe v0)
-- _.TxBody.txvote
d_txvote_1590 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822]
d_txvote_1590 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3064 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1592 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3062 (coe v0)
-- Ledger.Conway.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1656 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Utxow._.UTxOEnv
d_UTxOEnv_1692 a0 a1 = ()
-- Ledger.Conway.Utxow._.UTxOState
d_UTxOState_1694 a0 a1 = ()
-- Ledger.Conway.Utxow._.getDataHashes
d_getDataHashes_1730 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1730 ~v0 ~v1 = du_getDataHashes_1730
du_getDataHashes_1730 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1730
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_getDataHashes_2200
-- Ledger.Conway.Utxow._.getInputHashes
d_getInputHashes_1732 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1732 v0 ~v1 = du_getInputHashes_1732 v0
du_getInputHashes_1732 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_getInputHashes_2204 (coe v0)
-- Ledger.Conway.Utxow._.UTxOEnv.pparams
d_pparams_1804 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_1804 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288 (coe v0)
-- Ledger.Conway.Utxow._.UTxOEnv.slot
d_slot_1806 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 -> AgdaAny
d_slot_1806 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2286 (coe v0)
-- Ledger.Conway.Utxow._.UTxOEnv.treasury
d_treasury_1808 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 -> Integer
d_treasury_1808 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2290 (coe v0)
-- Ledger.Conway.Utxow._.UTxOState.deposits
d_deposits_1812 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1812 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2310 (coe v0)
-- Ledger.Conway.Utxow._.UTxOState.donations
d_donations_1814 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 -> Integer
d_donations_1814 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2312 (coe v0)
-- Ledger.Conway.Utxow._.UTxOState.fees
d_fees_1816 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 -> Integer
d_fees_1816 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2308 (coe v0)
-- Ledger.Conway.Utxow._.UTxOState.utxo
d_utxo_1818 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1818 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v0)
-- Ledger.Conway.Utxow._.ScriptPurpose
d_ScriptPurpose_1868 a0 a1 = ()
-- Ledger.Conway.Utxow._.d
d_d_2298 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_2298 ~v0 v1 = du_d_2298 v1
du_d_2298 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_2298 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Utxow._.HasInlineDatum
d_HasInlineDatum_2300 a0 a1 a2 = ()
newtype T_HasInlineDatum_2300 = C_InlineDatum_2304 AgdaAny
-- Ledger.Conway.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_2308 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_2308 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_2308 v2
du_Dec'45'HasInlineDatum_2308 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_2308 v0
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
                                               (coe C_InlineDatum_2304 v8)))
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
d_UsesV3Features_2374 a0 a1 a2 = ()
data T_UsesV3Features_2374
  = C_HasVotes_2376 | C_HasProps_2378 | C_HasDonation_2380 |
    C_HasTreasury_2382
-- Ledger.Conway.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_2386 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_2386 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_2386 v2
du_Dec'45'UsesV3Features_2386 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_2386 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Transaction.C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
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
                                               (coe C_HasTreasury_2382)))
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
                                        (coe C_HasDonation_2380)))
                    (:) v21 v22
                      -> coe
                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_HasProps_2378)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v21 v22
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe C_HasVotes_2376)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow.languages
d_languages_2410 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2410 v0 ~v1 v2 v3 = du_languages_2410 v0 v2 v3
du_languages_2410 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2410 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_getLanguage_2420 (coe v0))
      (MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3322
         (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Utxow._.getLanguage
d_getLanguage_2420 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2420 v0 ~v1 ~v2 ~v3 v4 = du_getLanguage_2420 v0 v4
du_getLanguage_2420 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2420 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Ledger.Conway.Script.d_language_260
                (MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                   (coe
                      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                      (coe v0)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow.getVKeys
d_getVKeys_2424 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18] -> [AgdaAny]
d_getVKeys_2424 ~v0 ~v1 = du_getVKeys_2424
du_getVKeys_2424 ::
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18] -> [AgdaAny]
du_getVKeys_2424
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42)
-- Ledger.Conway.Utxow.allowedLanguages
d_allowedLanguages_2426 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2426 v0 ~v1 v2 v3
  = du_allowedLanguages_2426 v0 v2 v3
du_allowedLanguages_2426 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2426 v0 v1 v2
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
         (coe du_os_2480 (coe v0) (coe v1) (coe v2)))
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
              (coe du_Dec'45'UsesV3Features_2386 (coe du_txb_2436 (coe v1)))
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
                            MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210
                            (coe
                               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
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
                         (coe du_Dec'45'HasInlineDatum_2308)
                         (coe
                            MAlonzo.Code.Class.IsSet.d_toSet_490
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
                            (coe du_os_2480 (coe v0) (coe v1) (coe v2))))
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
                                    MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
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
                                    MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                                (coe v0))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
-- Ledger.Conway.Utxow._.txb
d_txb_2436 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
d_txb_2436 ~v0 ~v1 v2 ~v3 = du_txb_2436 v2
du_txb_2436 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
du_txb_2436 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v0)
-- Ledger.Conway.Utxow._.os
d_os_2480 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2480 v0 ~v1 v2 v3 = du_os_2480 v0 v2 v3
du_os_2480 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2480 v0 v1 v2
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
               MAlonzo.Code.Ledger.Conway.Utxo.du_outs_2352
               (coe du_txb_2436 (coe v1))))
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
                        MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                        (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048
                     (coe du_txb_2436 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3050
                     (coe du_txb_2436 (coe v1)))))))
-- Ledger.Conway.Utxow.getScripts
d_getScripts_2486 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18] -> [AgdaAny]
d_getScripts_2486 ~v0 ~v1 = du_getScripts_2486
du_getScripts_2486 ::
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18] -> [AgdaAny]
du_getScripts_2486
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52)
-- Ledger.Conway.Utxow.credsNeeded
d_credsNeeded_2488 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2488 v0 ~v1 v2 v3 = du_credsNeeded_2488 v0 v2 v3
du_credsNeeded_2488 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2488 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Conway.ScriptValidation.C_Spend_2004
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
                        MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                        (coe v0))))
               (coe v1)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048 (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3082
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
                    MAlonzo.Code.Ledger.Conway.ScriptValidation.C_Rwrd_2000 (coe v3))
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
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3062 (coe v2)))))
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
                            MAlonzo.Code.Ledger.Conway.ScriptValidation.C_Cert_1998 (coe v3))
                         (coe v4))
                    (coe MAlonzo.Code.Ledger.Conway.Certs.du_cwitness_1026 (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_428
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3060 (coe v2))))
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
                          MAlonzo.Code.Ledger.Conway.ScriptValidation.C_Mint_2002 (coe v3))
                       (coe MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22 (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3056 (coe v2))))
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
                             MAlonzo.Code.Ledger.Conway.ScriptValidation.C_Vote_2006 (coe v3))
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
                              MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_834 (coe v3))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3064 (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_576
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        let v4
                              = MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_858
                                  (coe v3) in
                        coe
                          (case coe v4 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.ScriptValidation.C_Propose_2008
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
                           MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3066
                           (coe v2))))))))
-- Ledger.Conway.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_2562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> [AgdaAny]
d_witsVKeyNeeded_2562 v0 ~v1 = du_witsVKeyNeeded_2562 v0
du_witsVKeyNeeded_2562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> [AgdaAny]
du_witsVKeyNeeded_2562 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getVKeys_2424))
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
         (coe du_credsNeeded_2488 (coe v0)))
-- Ledger.Conway.Utxow.scriptsNeeded
d_scriptsNeeded_2564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> [AgdaAny]
d_scriptsNeeded_2564 v0 ~v1 = du_scriptsNeeded_2564 v0
du_scriptsNeeded_2564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> [AgdaAny]
du_scriptsNeeded_2564 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getScripts_2486))
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
         (coe du_credsNeeded_2488 (coe v0)))
-- Ledger.Conway.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2566 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2566
  = C_UTXOW'45'inductive_2666 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Utxow._.txAD
d_txAD_2582 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_36291 -> Maybe AgdaAny
d_txAD_2582 ~v0 ~v1 v2 = du_txAD_2582 v2
du_txAD_2582 :: T_GeneralizeTel_36291 -> Maybe AgdaAny
du_txAD_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3214
      (coe d_'46'generalizedField'45'tx_36285 (coe v0))
-- Ledger.Conway.Utxow._.body
d_body_2584 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_36291 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
d_body_2584 ~v0 ~v1 v2 = du_body_2584 v2
du_body_2584 ::
  T_GeneralizeTel_36291 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
du_body_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
      (coe d_'46'generalizedField'45'tx_36285 (coe v0))
-- Ledger.Conway.Utxow._.wits
d_wits_2586 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_36291 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3178
d_wits_2586 ~v0 ~v1 v2 = du_wits_2586 v2
du_wits_2586 ::
  T_GeneralizeTel_36291 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3178
du_wits_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
      (coe d_'46'generalizedField'45'tx_36285 (coe v0))
-- Ledger.Conway.Utxow._.refInputs
d_refInputs_2596 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_36291 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2596 ~v0 ~v1 v2 = du_refInputs_2596 v2
du_refInputs_2596 ::
  T_GeneralizeTel_36291 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3050
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_36285 (coe v0)))
-- Ledger.Conway.Utxow._.txADhash
d_txADhash_2602 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_36291 -> Maybe AgdaAny
d_txADhash_2602 ~v0 ~v1 v2 = du_txADhash_2602 v2
du_txADhash_2602 :: T_GeneralizeTel_36291 -> Maybe AgdaAny
du_txADhash_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3072
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_36285 (coe v0)))
-- Ledger.Conway.Utxow._.txid
d_txid_2612 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_36291 -> AgdaAny
d_txid_2612 ~v0 ~v1 v2 = du_txid_2612 v2
du_txid_2612 :: T_GeneralizeTel_36291 -> AgdaAny
du_txid_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3080
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_36285 (coe v0)))
-- Ledger.Conway.Utxow._.txouts
d_txouts_2616 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_36291 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2616 ~v0 ~v1 v2 = du_txouts_2616 v2
du_txouts_2616 ::
  T_GeneralizeTel_36291 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_36285 (coe v0)))
-- Ledger.Conway.Utxow._.txvldt
d_txvldt_2624 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_36291 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2624 ~v0 ~v1 v2 = du_txvldt_2624 v2
du_txvldt_2624 ::
  T_GeneralizeTel_36291 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3058
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_36285 (coe v0)))
-- Ledger.Conway.Utxow._.scripts
d_scripts_2632 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_36291 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2632 ~v0 ~v1 v2 = du_scripts_2632 v2
du_scripts_2632 ::
  T_GeneralizeTel_36291 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3190
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
         (coe d_'46'generalizedField'45'tx_36285 (coe v0)))
-- Ledger.Conway.Utxow._.txdats
d_txdats_2636 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_36291 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2636 ~v0 ~v1 v2 = du_txdats_2636 v2
du_txdats_2636 ::
  T_GeneralizeTel_36291 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3192
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
         (coe d_'46'generalizedField'45'tx_36285 (coe v0)))
-- Ledger.Conway.Utxow._.vkSigs
d_vkSigs_2640 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_36291 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2640 ~v0 ~v1 v2 = du_vkSigs_2640 v2
du_vkSigs_2640 ::
  T_GeneralizeTel_36291 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3188
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
         (coe d_'46'generalizedField'45'tx_36285 (coe v0)))
-- Ledger.Conway.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2692 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2692 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2692 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2692 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2692 v0 v1 v2
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
                          MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Transaction.d_txidBytes_2466 v0
                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3080
                          (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3188
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210 (coe v2)))))
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
                                MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.Hashable.d_hash_16
                             (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                      (coe v0))))
                             v3)
                          (coe
                             du_scriptsNeeded_2564 v0
                             (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v1))
                             (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
                          (MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
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
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3188
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
                                      (coe v2)))))
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3058
                             (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2)))
                          v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_576
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3322
                     (coe v0) (coe v2)
                     (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v1)))))
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
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0))))
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
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3188
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
                                      (coe v2)))))))
                  (coe
                     du_witsVKeyNeeded_2562 v0
                     (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v1))
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2))))
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
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
                                      (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_398
                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3190
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
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
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0))))
                           (coe
                              du_scriptsNeeded_2564 v0
                              (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v1))
                              (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_398
                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3270
                                 (coe v0) (coe v2)
                                 (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v1))))))
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
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
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
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
                                            (coe v0))))
                                   (coe
                                      du_scriptsNeeded_2564 v0
                                      (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v1))
                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_398
                                      (MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.Hashable.d_hash_16
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3270
                                         (coe v0) (coe v2)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306
                                            (coe v1)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_398
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3190
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210 (coe v2))))))
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
                                         MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
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
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3192
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
                                         (coe v2))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Utxo.du_getInputHashes_2204 (coe v0)
                           (coe v2)
                           (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v1))))
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
                                            MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Utxo.du_getInputHashes_2204
                                         (coe v0) (coe v2)
                                         (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v1)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.du_getDataHashes_2200
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                                     (coe v2)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.du_getDataHashes_2200
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
                                                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306
                                                     (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3050
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                                        (coe v2))))))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_548
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3192
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210 (coe v2)))))
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
                                         MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         du_allowedLanguages_2426 (coe v0) (coe v2)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v1)))))
                              (coe
                                 du_languages_2410 (coe v0) (coe v2)
                                 (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v1))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1256
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3072
                                 (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1256
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3214
                                    (coe v2)))))))))))
-- Ledger.Conway.Utxow..generalizedField-s
d_'46'generalizedField'45's_36283 ::
  T_GeneralizeTel_36291 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
d_'46'generalizedField'45's_36283 v0
  = case coe v0 of
      C_mkGeneralizeTel_36293 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_36285 ::
  T_GeneralizeTel_36291 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
d_'46'generalizedField'45'tx_36285 v0
  = case coe v0 of
      C_mkGeneralizeTel_36293 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_36287 ::
  T_GeneralizeTel_36291 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278
d_'46'generalizedField'45'Γ_36287 v0
  = case coe v0 of
      C_mkGeneralizeTel_36293 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_36289 ::
  T_GeneralizeTel_36291 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
d_'46'generalizedField'45's''_36289 v0
  = case coe v0 of
      C_mkGeneralizeTel_36293 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxow.GeneralizeTel
d_GeneralizeTel_36291 a0 a1 = ()
data T_GeneralizeTel_36291
  = C_mkGeneralizeTel_36293 MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
                            MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
