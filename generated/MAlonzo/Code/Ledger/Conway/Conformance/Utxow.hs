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
import qualified MAlonzo.Code.Class.HasEmptySet
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Credential
d_Credential_48 a0 = ()
-- _.Hashable-Script
d_Hashable'45'Script_182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_182 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))
-- _.THash
d_THash_196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_196 = erased
-- _.Language
d_Language_204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Language_204 = erased
-- _.Script
d_Script_282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_282 = erased
-- _.ScriptHash
d_ScriptHash_290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_290 = erased
-- _.Tx
d_Tx_368 a0 = ()
-- _.TxBody
d_TxBody_370 a0 = ()
-- _.TxOut
d_TxOut_376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_376 = erased
-- _.UTxO
d_UTxO_382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_382 = erased
-- _.isBootstrapAddr
d_isBootstrapAddr_476 a0 a1 = ()
-- _.isBootstrapAddr?
d_isBootstrapAddr'63'_478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_478 ~v0 = du_isBootstrapAddr'63'_478
du_isBootstrapAddr'63'_478 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_478
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- _.isSigned
d_isSigned_498 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_498 = erased
-- _.refScripts
d_refScripts_556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_556 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refScripts_2728 (coe v0)
-- _.txscripts
d_txscripts_586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_586 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txscripts_2780 (coe v0)
-- _.validP1Script
d_validP1Script_590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_590 = erased
-- _.Tx.body
d_body_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_body_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0)
-- _.Tx.isValid
d_isValid_1402 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Bool
d_isValid_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v0)
-- _.Tx.txAD
d_txAD_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Maybe AgdaAny
d_txAD_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2686 (coe v0)
-- _.Tx.wits
d_wits_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650
d_wits_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v0)
-- _.TxBody.collateral
d_collateral_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2644 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe Integer
d_curTreasury_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2638 (coe v0)
-- _.TxBody.mint
d_mint_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
d_mint_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2618 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2612 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> [AgdaAny]
d_reqSigHash_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2646 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe AgdaAny
d_scriptIntHash_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2648 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1422 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe AgdaAny
d_txADhash_1422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2634 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1424 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe AgdaAny
d_txNetworkId_1424 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2636 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1426 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_1426 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2622 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1428 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txdonation_1428 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2630 (coe v0)
-- _.TxBody.txfee
d_txfee_1430 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txfee_1430 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2616 (coe v0)
-- _.TxBody.txid
d_txid_1432 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
d_txid_1432 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2642 (coe v0)
-- _.TxBody.txins
d_txins_1434 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1434 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2610 (coe v0)
-- _.TxBody.txouts
d_txouts_1436 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1436 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2614 (coe v0)
-- _.TxBody.txprop
d_txprop_1438 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776]
d_txprop_1438 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2628 (coe v0)
-- _.TxBody.txsize
d_txsize_1440 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txsize_1440 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2640 (coe v0)
-- _.TxBody.txup
d_txup_1442 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1442 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2632 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1444 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1444 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2620 (coe v0)
-- _.TxBody.txvote
d_txvote_1446 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_1446 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2626 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1448 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1448 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624 (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1522 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_1542 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_1544 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.getDataHashes
d_getDataHashes_1564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1564 ~v0 ~v1 = du_getDataHashes_1564
du_getDataHashes_1564 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1564
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getDataHashes_2026
-- Ledger.Conway.Conformance.Utxow._.getInputHashes
d_getInputHashes_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1566 v0 ~v1 = du_getInputHashes_1566 v0
du_getInputHashes_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getInputHashes_2030
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_1632 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1966 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1976 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_1634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1966 ->
  AgdaAny
d_slot_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_slot_1974 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_1636 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1966 ->
  Integer
d_treasury_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_treasury_1978
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_1640 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1994
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_1642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  Integer
d_donations_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1996
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_1644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  Integer
d_fees_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1992 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_1646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.ScriptPurpose
d_ScriptPurpose_1672 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.d
d_d_1980 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_1980 ~v0 v1 = du_d_1980 v1
du_d_1980 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_1980 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.HasInlineDatum
d_HasInlineDatum_1982 a0 a1 a2 = ()
newtype T_HasInlineDatum_1982 = C_InlineDatum_1986 AgdaAny
-- Ledger.Conway.Conformance.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_1990 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_1990 v2
du_Dec'45'HasInlineDatum_1990 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_1990 v0
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
                                               (coe C_InlineDatum_1986 v8)))
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
d_UsesV3Features_2056 a0 a1 a2 = ()
data T_UsesV3Features_2056
  = C_HasVotes_2058 | C_HasProps_2060 | C_HasDonation_2062 |
    C_HasTreasury_2064
-- Ledger.Conway.Conformance.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_2068 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_2068 v2
du_Dec'45'UsesV3Features_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_2068 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_17855 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
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
                                               (coe C_HasTreasury_2064)))
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
                                        (coe C_HasDonation_2062)))
                    (:) v21 v22
                      -> coe
                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_HasProps_2060)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v21 v22
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe C_HasVotes_2058)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.languages
d_languages_2092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2092 v0 ~v1 v2 v3 = du_languages_2092 v0 v2 v3
du_languages_2092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2092 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_getLanguage_2102 (coe v0))
      (MAlonzo.Code.Ledger.Transaction.d_txscripts_2780
         (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Utxow._.getLanguage
d_getLanguage_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2102 v0 ~v1 ~v2 ~v3 v4 = du_getLanguage_2102 v0 v4
du_getLanguage_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2102 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Ledger.Script.d_language_258
                (MAlonzo.Code.Ledger.Script.d_ps_452
                   (coe
                      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.getVKeys
d_getVKeys_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getVKeys_2106 ~v0 ~v1 = du_getVKeys_2106
du_getVKeys_2106 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getVKeys_2106
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22)
-- Ledger.Conway.Conformance.Utxow.allowedLanguages
d_allowedLanguages_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2108 v0 ~v1 v2 v3
  = du_allowedLanguages_2108 v0 v2 v3
du_allowedLanguages_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2108 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1638
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (coe du_os_2162 (coe v0) (coe v1) (coe v2)))
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
              MAlonzo.Code.Class.ToBool.du_if_then_else__46
              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
              (coe du_Dec'45'UsesV3Features_2068 (coe du_txb_2118 (coe v1)))
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
                            MAlonzo.Code.Ledger.Script.d_PlutusV3_208
                            (coe
                               MAlonzo.Code.Ledger.Script.d_ps_452
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Class.ToBool.du_if_then_else__46
                      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
                      (coe
                         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1638
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                         (coe du_Dec'45'HasInlineDatum_1990)
                         (coe
                            MAlonzo.Code.Class.IsSet.d_toSet_490
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
                            (coe du_os_2162 (coe v0) (coe v1) (coe v2))))
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
                                    MAlonzo.Code.Ledger.Script.d_PlutusV2_206
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_452
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_PlutusV3_208
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_452
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
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
                                    MAlonzo.Code.Ledger.Script.d_PlutusV1_204
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_452
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_PlutusV2_206
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_452
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_PlutusV3_208
                                          (coe
                                             MAlonzo.Code.Ledger.Script.d_ps_452
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                                (coe v0))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
-- Ledger.Conway.Conformance.Utxow._.txb
d_txb_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_txb_2118 ~v0 ~v1 v2 ~v3 = du_txb_2118 v2
du_txb_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
du_txb_2118 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.os
d_os_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2162 v0 ~v1 v2 v3 = du_os_2162 v0 v2 v3
du_os_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2162 v0 v1 v2
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
               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_outs_2106
               (coe du_txb_2118 (coe v1))))
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
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2610
                     (coe du_txb_2118 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2612
                     (coe du_txb_2118 (coe v1)))))))
-- Ledger.Conway.Conformance.Utxow.getScripts
d_getScripts_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getScripts_2168 ~v0 ~v1 = du_getScripts_2168
du_getScripts_2168 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getScripts_2168
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32)
-- Ledger.Conway.Conformance.Utxow.credsNeeded
d_credsNeeded_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2170 v0 ~v1 v2 v3 = du_credsNeeded_2170 v0 v2 v3
du_credsNeeded_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2170 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Spend_1742
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 MAlonzo.Code.Ledger.Address.du_payCred_108
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
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0))))
               (coe v1)
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2610 (coe v2)))))
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
                    MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Rwrd_1738
                    (coe v3))
                 (coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v3)))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_548
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624 (coe v2)))))
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
                       MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Cert_1736
                       (coe v3))
                    (coe MAlonzo.Code.Ledger.Certs.d_cwitness_872 (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_428
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2622 (coe v2))))
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
                          MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Mint_1740
                          (coe v3))
                       (coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_mint_2618 (coe v2))))
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
                             MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Vote_1744
                             (coe v3))
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
                              MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v3))
                           (MAlonzo.Code.Ledger.Transaction.d_txvote_2626 (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_576
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.C_Propose_1746
                                          (coe v3))
                                       (coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v5)))
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
                             _ -> MAlonzo.RTE.mazUnreachableError))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2628 (coe v2))))))))
-- Ledger.Conway.Conformance.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> [AgdaAny]
d_witsVKeyNeeded_2242 v0 ~v1 = du_witsVKeyNeeded_2242 v0
du_witsVKeyNeeded_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> [AgdaAny]
du_witsVKeyNeeded_2242 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getVKeys_2106))
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
         (coe du_credsNeeded_2170 (coe v0)))
-- Ledger.Conway.Conformance.Utxow.scriptsNeeded
d_scriptsNeeded_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> [AgdaAny]
d_scriptsNeeded_2244 v0 ~v1 = du_scriptsNeeded_2244 v0
du_scriptsNeeded_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> [AgdaAny]
du_scriptsNeeded_2244 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getScripts_2168))
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
         (coe du_credsNeeded_2170 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2246 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2246
  = C_UTXOW'45'inductive_2352 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_32675 -> Maybe AgdaAny
d_txAD_2260 ~v0 ~v1 v2 = du_txAD_2260 v2
du_txAD_2260 :: T_GeneralizeTel_32675 -> Maybe AgdaAny
du_txAD_2260 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2686
      (coe d_'46'generalizedField'45'tx_32667 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_32675 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_body_2262 ~v0 ~v1 v2 = du_body_2262 v2
du_body_2262 ::
  T_GeneralizeTel_32675 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
du_body_2262 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2680
      (coe d_'46'generalizedField'45'tx_32667 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_32675 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650
d_wits_2264 ~v0 ~v1 v2 = du_wits_2264 v2
du_wits_2264 ::
  T_GeneralizeTel_32675 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650
du_wits_2264 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2682
      (coe d_'46'generalizedField'45'tx_32667 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_32675 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2274 ~v0 ~v1 v2 = du_refInputs_2274 v2
du_refInputs_2274 ::
  T_GeneralizeTel_32675 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2274 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2612
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_32667 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_32675 -> Maybe AgdaAny
d_txADhash_2280 ~v0 ~v1 v2 = du_txADhash_2280 v2
du_txADhash_2280 :: T_GeneralizeTel_32675 -> Maybe AgdaAny
du_txADhash_2280 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2634
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_32667 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txid
d_txid_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_32675 -> AgdaAny
d_txid_2290 ~v0 ~v1 v2 = du_txid_2290 v2
du_txid_2290 :: T_GeneralizeTel_32675 -> AgdaAny
du_txid_2290 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2642
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_32667 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txouts
d_txouts_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_32675 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2294 ~v0 ~v1 v2 = du_txouts_2294 v2
du_txouts_2294 ::
  T_GeneralizeTel_32675 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2294 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2614
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_32667 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txvldt
d_txvldt_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_32675 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2302 ~v0 ~v1 v2 = du_txvldt_2302 v2
du_txvldt_2302 ::
  T_GeneralizeTel_32675 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2302 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2620
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_32667 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_32675 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2310 ~v0 ~v1 v2 = du_scripts_2310 v2
du_scripts_2310 ::
  T_GeneralizeTel_32675 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2310 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2662
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2682
         (coe d_'46'generalizedField'45'tx_32667 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2314 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_32675 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2314 ~v0 ~v1 v2 = du_txdats_2314 v2
du_txdats_2314 ::
  T_GeneralizeTel_32675 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2314 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdats_2664
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2682
         (coe d_'46'generalizedField'45'tx_32667 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_32675 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2318 ~v0 ~v1 v2 = du_vkSigs_2318 v2
du_vkSigs_2318 ::
  T_GeneralizeTel_32675 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2318 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2660
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2682
         (coe d_'46'generalizedField'45'tx_32667 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_32675 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2328 ~v0 ~v1 v2 = du_utxo_2328 v2
du_utxo_2328 ::
  T_GeneralizeTel_32675 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990
      (coe d_'46'generalizedField'45's_32669 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2378 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2378 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2378 v0 v1 v2
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
                    MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
                    (MAlonzo.Code.Ledger.Crypto.d_pkk_172
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_txidBytes_2376 v0
                       (MAlonzo.Code.Ledger.Transaction.d_txid_2642
                          (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2660
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v1)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                  (MAlonzo.Code.Ledger.Script.d_p1s_428
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_398
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (MAlonzo.Code.Interface.Hashable.d_hash_16
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))))
                     (coe
                        MAlonzo.Code.Class.IsSet.du_dom_548
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_vkSigs_2660
                           (coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v1)))))
                  (MAlonzo.Code.Ledger.Transaction.d_txvldt_2620
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1))))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_576
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Transaction.d_txscripts_2780
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990
                        (coe v2)))))
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
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                          (coe v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_398
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_vkSigs_2660
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v1)))))))
                  (coe
                     du_witsVKeyNeeded_2242 v0
                     (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1))))
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
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_398
                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Transaction.d_scripts_2662
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v1))))))
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
                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                           (coe
                              du_scriptsNeeded_2244 v0
                              (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990 (coe v2))
                              (MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_398
                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Transaction.d_refScripts_2728
                                 (coe v0) (coe v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990
                                    (coe v2))))))
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
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
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
                                      (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                            (coe v0))))
                                   (coe
                                      du_scriptsNeeded_2244 v0
                                      (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990
                                         (coe v2))
                                      (MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_398
                                      (MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.Hashable.d_hash_16
                                         (coe
                                            MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Transaction.d_refScripts_2728
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990
                                            (coe v2)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_398
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_2662
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v1))))))
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
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                      (coe
                                         MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_ps_452
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
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
                                      MAlonzo.Code.Ledger.Transaction.d_txdats_2664
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v1))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getInputHashes_2030
                           (coe v0) (coe v1)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990 (coe v2))))
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
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                            (coe
                                               MAlonzo.Code.Ledger.Script.d_ps_452
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getInputHashes_2030
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990
                                            (coe v2)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getDataHashes_2026
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_txouts_2614
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_getDataHashes_2026
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
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990
                                                     (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2612
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_548
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2664
                                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v1)))))
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
                                         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_ps_452
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         du_allowedLanguages_2108 (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990
                                            (coe v2)))))
                              (coe
                                 du_languages_2092 (coe v0) (coe v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1210
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txADhash_2634
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1210
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_txAD_2686 (coe v1)))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_32667 ::
  T_GeneralizeTel_32675 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2670
d_'46'generalizedField'45'tx_32667 v0
  = case coe v0 of
      C_mkGeneralizeTel_32677 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_32669 ::
  T_GeneralizeTel_32675 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
d_'46'generalizedField'45's_32669 v0
  = case coe v0 of
      C_mkGeneralizeTel_32677 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_32671 ::
  T_GeneralizeTel_32675 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1966
d_'46'generalizedField'45'Γ_32671 v0
  = case coe v0 of
      C_mkGeneralizeTel_32677 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_32673 ::
  T_GeneralizeTel_32675 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
d_'46'generalizedField'45's''_32673 v0
  = case coe v0 of
      C_mkGeneralizeTel_32677 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_32675 a0 a1 = ()
data T_GeneralizeTel_32675
  = C_mkGeneralizeTel_32677 MAlonzo.Code.Ledger.Transaction.T_Tx_2670
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1966
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
