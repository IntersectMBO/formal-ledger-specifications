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
import qualified MAlonzo.Code.Class.HasEmptySet
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Credential
d_Credential_44 a0 = ()
-- _.Hashable-Script
d_Hashable'45'Script_172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_172 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786 (coe v0))
-- _.THash
d_THash_186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_186 = erased
-- _.Language
d_Language_194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Language_194 = erased
-- _.Script
d_Script_270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_270 = erased
-- _.ScriptHash
d_ScriptHash_278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_278 = erased
-- _.Tx
d_Tx_352 a0 = ()
-- _.TxBody
d_TxBody_354 a0 = ()
-- _.TxOut
d_TxOut_360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_360 = erased
-- _.UTxO
d_UTxO_366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_366 = erased
-- _.isBootstrapAddr
d_isBootstrapAddr_460 a0 a1 = ()
-- _.isBootstrapAddr?
d_isBootstrapAddr'63'_462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_462 ~v0 = du_isBootstrapAddr'63'_462
du_isBootstrapAddr'63'_462 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_462
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- _.isSigned
d_isSigned_482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_482 = erased
-- _.refScripts
d_refScripts_540 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refScripts_2676 (coe v0)
-- _.txscripts
d_txscripts_570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_570 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txscripts_2728 (coe v0)
-- _.validP1Script
d_validP1Script_574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_574 = erased
-- _.Tx.body
d_body_1372 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
d_body_1372 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0)
-- _.Tx.isValid
d_isValid_1374 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Bool
d_isValid_1374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v0)
-- _.Tx.txAD
d_txAD_1376 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Maybe AgdaAny
d_txAD_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2634 (coe v0)
-- _.Tx.wits
d_wits_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598
d_wits_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v0)
-- _.TxBody.collateral
d_collateral_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2592 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe Integer
d_curTreasury_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2586 (coe v0)
-- _.TxBody.mint
d_mint_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
d_mint_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2566 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2560 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1390 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> [AgdaAny]
d_reqSigHash_1390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2594 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1392 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe AgdaAny
d_scriptIntHash_1392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2596 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe AgdaAny
d_txADhash_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2582 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe AgdaAny
d_txNetworkId_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2584 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2570 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txdonation_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2578 (coe v0)
-- _.TxBody.txfee
d_txfee_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txfee_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2564 (coe v0)
-- _.TxBody.txid
d_txid_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
d_txid_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2590 (coe v0)
-- _.TxBody.txins
d_txins_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2558 (coe v0)
-- _.TxBody.txouts
d_txouts_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2562 (coe v0)
-- _.TxBody.txprop
d_txprop_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750]
d_txprop_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2576 (coe v0)
-- _.TxBody.txsize
d_txsize_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txsize_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2588 (coe v0)
-- _.TxBody.txup
d_txup_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2580 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2568 (coe v0)
-- _.TxBody.txvote
d_txvote_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_txvote_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2574 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572 (coe v0)
-- Ledger.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1494 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxow._.UTxOEnv
d_UTxOEnv_1516 a0 a1 = ()
-- Ledger.Utxow._.UTxOState
d_UTxOState_1518 a0 a1 = ()
-- Ledger.Utxow._.getDataHashes
d_getDataHashes_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1552 ~v0 ~v1 = du_getDataHashes_1552
du_getDataHashes_1552 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1552
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1834
-- Ledger.Utxow._.getInputHashes
d_getInputHashes_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1554 v0 ~v1 = du_getInputHashes_1554 v0
du_getInputHashes_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1554 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1838 (coe v0)
-- Ledger.Utxow._.UTxOEnv.pparams
d_pparams_1628 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1912 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1628 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1922 (coe v0)
-- Ledger.Utxow._.UTxOEnv.slot
d_slot_1630 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1912 -> AgdaAny
d_slot_1630 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1920 (coe v0)
-- Ledger.Utxow._.UTxOEnv.treasury
d_treasury_1632 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1912 -> Integer
d_treasury_1632 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1924 (coe v0)
-- Ledger.Utxow._.UTxOState.deposits
d_deposits_1636 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1636 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1940 (coe v0)
-- Ledger.Utxow._.UTxOState.donations
d_donations_1638 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926 -> Integer
d_donations_1638 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1942 (coe v0)
-- Ledger.Utxow._.UTxOState.fees
d_fees_1640 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926 -> Integer
d_fees_1640 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1938 (coe v0)
-- Ledger.Utxow._.UTxOState.utxo
d_utxo_1642 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1642 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v0)
-- Ledger.Utxow._.ScriptPurpose
d_ScriptPurpose_1688 a0 a1 = ()
-- Ledger.Utxow._.d
d_d_2010 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_2010 ~v0 v1 = du_d_2010 v1
du_d_2010 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_2010 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Utxow._.HasInlineDatum
d_HasInlineDatum_2012 a0 a1 a2 = ()
newtype T_HasInlineDatum_2012 = C_InlineDatum_2016 AgdaAny
-- Ledger.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_2020 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_2020 v2
du_Dec'45'HasInlineDatum_2020 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_2020 v0
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
                                               (coe C_InlineDatum_2016 v8)))
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
d_UsesV3Features_2086 a0 a1 a2 = ()
data T_UsesV3Features_2086
  = C_HasVotes_2088 | C_HasProps_2090 | C_HasDonation_2092 |
    C_HasTreasury_2094
-- Ledger.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_2098 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_2098 v2
du_Dec'45'UsesV3Features_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_2098 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
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
                                               (coe C_HasTreasury_2094)))
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
                                        (coe C_HasDonation_2092)))
                    (:) v21 v22
                      -> coe
                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_HasProps_2090)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v21 v22
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe C_HasVotes_2088)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.languages
d_languages_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2122 v0 ~v1 v2 v3 = du_languages_2122 v0 v2 v3
du_languages_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2122 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_getLanguage_2132 (coe v0))
      (MAlonzo.Code.Ledger.Transaction.d_txscripts_2728
         (coe v0) (coe v1) (coe v2))
-- Ledger.Utxow._.getLanguage
d_getLanguage_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2132 v0 ~v1 ~v2 ~v3 v4 = du_getLanguage_2132 v0 v4
du_getLanguage_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2132 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Ledger.Script.d_language_258
                (MAlonzo.Code.Ledger.Script.d_ps_448
                   (coe
                      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786 (coe v0)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.getVKeys
d_getVKeys_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getVKeys_2136 ~v0 ~v1 = du_getVKeys_2136
du_getVKeys_2136 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getVKeys_2136
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22)
-- Ledger.Utxow.allowedLanguages
d_allowedLanguages_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2138 v0 ~v1 v2 v3
  = du_allowedLanguages_2138 v0 v2 v3
du_allowedLanguages_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2138 v0 v1 v2
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
         (coe du_os_2192 (coe v0) (coe v1) (coe v2)))
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
              (coe du_Dec'45'UsesV3Features_2098 (coe du_txb_2148 (coe v1)))
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
                               MAlonzo.Code.Ledger.Script.d_ps_448
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786 (coe v0))))
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
                         (coe du_Dec'45'HasInlineDatum_2020)
                         (coe
                            MAlonzo.Code.Class.IsSet.d_toSet_490
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
                            (coe du_os_2192 (coe v0) (coe v1) (coe v2))))
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
                                       MAlonzo.Code.Ledger.Script.d_ps_448
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_PlutusV3_208
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_448
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
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
                                       MAlonzo.Code.Ledger.Script.d_ps_448
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_PlutusV2_206
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_448
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_PlutusV3_208
                                          (coe
                                             MAlonzo.Code.Ledger.Script.d_ps_448
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                                (coe v0))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
-- Ledger.Utxow._.txb
d_txb_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
d_txb_2148 ~v0 ~v1 v2 ~v3 = du_txb_2148 v2
du_txb_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
du_txb_2148 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0)
-- Ledger.Utxow._.os
d_os_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2192 v0 ~v1 v2 v3 = du_os_2192 v0 v2 v3
du_os_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2192 v0 v1 v2
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
               MAlonzo.Code.Ledger.Utxo.du_outs_1956 (coe du_txb_2148 (coe v1))))
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2558
                     (coe du_txb_2148 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2560
                     (coe du_txb_2148 (coe v1)))))))
-- Ledger.Utxow.getScripts
d_getScripts_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getScripts_2198 ~v0 ~v1 = du_getScripts_2198
du_getScripts_2198 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getScripts_2198
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32)
-- Ledger.Utxow.credsNeeded
d_credsNeeded_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2200 v0 ~v1 v2 v3 = du_credsNeeded_2200 v0 v2 v3
du_credsNeeded_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2200 v0 v1 v2
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
                 MAlonzo.Code.Ledger.ScriptValidation.C_Spend_1724
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0))))
               (coe v1)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txins_2558 (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_collateral_2592 (coe v2))))))
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
                 (coe MAlonzo.Code.Ledger.ScriptValidation.C_Rwrd_1720 (coe v3))
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
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572 (coe v2)))))
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
                         (coe MAlonzo.Code.Ledger.ScriptValidation.C_Cert_1718 (coe v3))
                         (coe v4))
                    (coe MAlonzo.Code.Ledger.Certs.du_cwitness_850 (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_428
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2570 (coe v2))))
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
                       (coe MAlonzo.Code.Ledger.ScriptValidation.C_Mint_1722 (coe v3))
                       (coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_mint_2566 (coe v2))))
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
                          (coe MAlonzo.Code.Ledger.ScriptValidation.C_Vote_1726 (coe v3))
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
                              MAlonzo.Code.Ledger.GovernanceActions.d_voter_744 (coe v3))
                           (MAlonzo.Code.Ledger.Transaction.d_txvote_2574 (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_576
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        let v4
                              = MAlonzo.Code.Ledger.GovernanceActions.d_policy_768 (coe v3) in
                        coe
                          (case coe v4 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.ScriptValidation.C_Propose_1728
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
                        (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2576 (coe v2))))))))
-- Ledger.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> [AgdaAny]
d_witsVKeyNeeded_2274 v0 ~v1 = du_witsVKeyNeeded_2274 v0
du_witsVKeyNeeded_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> [AgdaAny]
du_witsVKeyNeeded_2274 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getVKeys_2136))
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
         (coe du_credsNeeded_2200 (coe v0)))
-- Ledger.Utxow.scriptsNeeded
d_scriptsNeeded_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> [AgdaAny]
d_scriptsNeeded_2276 v0 ~v1 = du_scriptsNeeded_2276 v0
du_scriptsNeeded_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> [AgdaAny]
du_scriptsNeeded_2276 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getScripts_2198))
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
         (coe du_credsNeeded_2200 (coe v0)))
-- Ledger.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2278 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2278
  = C_UTXOW'45'inductive_2386 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxow._.txAD
d_txAD_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_34349 -> Maybe AgdaAny
d_txAD_2292 ~v0 ~v1 v2 = du_txAD_2292 v2
du_txAD_2292 :: T_GeneralizeTel_34349 -> Maybe AgdaAny
du_txAD_2292 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2634
      (coe d_'46'generalizedField'45'tx_34341 (coe v0))
-- Ledger.Utxow._.body
d_body_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_34349 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
d_body_2294 ~v0 ~v1 v2 = du_body_2294 v2
du_body_2294 ::
  T_GeneralizeTel_34349 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
du_body_2294 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2628
      (coe d_'46'generalizedField'45'tx_34341 (coe v0))
-- Ledger.Utxow._.wits
d_wits_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_34349 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598
d_wits_2296 ~v0 ~v1 v2 = du_wits_2296 v2
du_wits_2296 ::
  T_GeneralizeTel_34349 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598
du_wits_2296 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2630
      (coe d_'46'generalizedField'45'tx_34341 (coe v0))
-- Ledger.Utxow._.refInputs
d_refInputs_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_34349 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2306 ~v0 ~v1 v2 = du_refInputs_2306 v2
du_refInputs_2306 ::
  T_GeneralizeTel_34349 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2306 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2560
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_34341 (coe v0)))
-- Ledger.Utxow._.txADhash
d_txADhash_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_34349 -> Maybe AgdaAny
d_txADhash_2312 ~v0 ~v1 v2 = du_txADhash_2312 v2
du_txADhash_2312 :: T_GeneralizeTel_34349 -> Maybe AgdaAny
du_txADhash_2312 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2582
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_34341 (coe v0)))
-- Ledger.Utxow._.txid
d_txid_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_34349 -> AgdaAny
d_txid_2322 ~v0 ~v1 v2 = du_txid_2322 v2
du_txid_2322 :: T_GeneralizeTel_34349 -> AgdaAny
du_txid_2322 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_34341 (coe v0)))
-- Ledger.Utxow._.txouts
d_txouts_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_34349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2326 ~v0 ~v1 v2 = du_txouts_2326 v2
du_txouts_2326 ::
  T_GeneralizeTel_34349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2326 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2562
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_34341 (coe v0)))
-- Ledger.Utxow._.txvldt
d_txvldt_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_34349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2334 ~v0 ~v1 v2 = du_txvldt_2334 v2
du_txvldt_2334 ::
  T_GeneralizeTel_34349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2334 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2568
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_34341 (coe v0)))
-- Ledger.Utxow._.scripts
d_scripts_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_34349 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2342 ~v0 ~v1 v2 = du_scripts_2342 v2
du_scripts_2342 ::
  T_GeneralizeTel_34349 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2342 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2610
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2630
         (coe d_'46'generalizedField'45'tx_34341 (coe v0)))
-- Ledger.Utxow._.txdats
d_txdats_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_34349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2346 ~v0 ~v1 v2 = du_txdats_2346 v2
du_txdats_2346 ::
  T_GeneralizeTel_34349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2346 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdats_2612
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2630
         (coe d_'46'generalizedField'45'tx_34341 (coe v0)))
-- Ledger.Utxow._.vkSigs
d_vkSigs_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_34349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2350 ~v0 ~v1 v2 = du_vkSigs_2350 v2
du_vkSigs_2350 ::
  T_GeneralizeTel_34349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2350 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2608
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2630
         (coe d_'46'generalizedField'45'tx_34341 (coe v0)))
-- Ledger.Utxow._.utxo
d_utxo_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_34349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2360 ~v0 ~v1 v2 = du_utxo_2360 v2
du_utxo_2360 ::
  T_GeneralizeTel_34349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2360 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1936
      (coe d_'46'generalizedField'45's_34343 (coe v0))
-- Ledger.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2412 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2412 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2412 v0 v1 v2
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
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_txidBytes_2320 v0
                       (MAlonzo.Code.Ledger.Transaction.d_txid_2590
                          (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2608
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v1)))))
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
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.Hashable.d_hash_16
                             (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                                (coe
                                   MAlonzo.Code.Ledger.Script.d_p1s_426
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                      (coe v0))))
                             v3)
                          (coe
                             du_scriptsNeeded_2276 v0
                             (MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v2))
                             (MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v1))))
                       (coe
                          MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                          (MAlonzo.Code.Ledger.Script.d_p1s_426
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786 (coe v0)))
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
                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_vkSigs_2608
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v1)))))
                          (MAlonzo.Code.Ledger.Transaction.d_txvldt_2568
                             (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v1)))
                          v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_576
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Transaction.d_txscripts_2728
                     (coe v0) (coe v1)
                     (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v2)))))
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
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
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
                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_vkSigs_2608
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v1)))))))
                  (coe
                     du_witsVKeyNeeded_2274 v0
                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v1))))
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
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_398
                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Transaction.d_scripts_2610
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v1))))))
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
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                           (coe
                              du_scriptsNeeded_2276 v0
                              (MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v2))
                              (MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_fromList_428
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_refScripts_2676
                                    (coe v0) (coe v1)
                                    (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v2)))))))
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
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))
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
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                            (coe v0))))
                                   (coe
                                      du_scriptsNeeded_2276 v0
                                      (MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v2))
                                      (MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_fromList_428
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                         MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                         MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                         (MAlonzo.Code.Interface.Hashable.d_hash_16
                                            (coe
                                               MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                                  (coe v0))))
                                         (MAlonzo.Code.Ledger.Transaction.d_refScripts_2676
                                            (coe v0) (coe v1)
                                            (coe
                                               MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v2))))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_398
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_2610
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v1))))))
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
                                            MAlonzo.Code.Ledger.Script.d_ps_448
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
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
                                      MAlonzo.Code.Ledger.Transaction.d_txdats_2612
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v1))))))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1838 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v2))))
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
                                               MAlonzo.Code.Ledger.Script.d_ps_448
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1838 (coe v0)
                                         (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v2)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1834
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_txouts_2562
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1834
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
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2560
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_548
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2612
                                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v1)))))
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
                                            MAlonzo.Code.Ledger.Script.d_ps_448
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         du_allowedLanguages_2138 (coe v0) (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v2)))))
                              (coe
                                 du_languages_2122 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1936 (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1182
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txADhash_2582
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1182
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_txAD_2634 (coe v1)))))))))))
-- Ledger.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_34341 ::
  T_GeneralizeTel_34349 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2618
d_'46'generalizedField'45'tx_34341 v0
  = case coe v0 of
      C_mkGeneralizeTel_34351 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s
d_'46'generalizedField'45's_34343 ::
  T_GeneralizeTel_34349 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
d_'46'generalizedField'45's_34343 v0
  = case coe v0 of
      C_mkGeneralizeTel_34351 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_34345 ::
  T_GeneralizeTel_34349 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1912
d_'46'generalizedField'45'Γ_34345 v0
  = case coe v0 of
      C_mkGeneralizeTel_34351 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_34347 ::
  T_GeneralizeTel_34349 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
d_'46'generalizedField'45's''_34347 v0
  = case coe v0 of
      C_mkGeneralizeTel_34351 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.GeneralizeTel
d_GeneralizeTel_34349 a0 a1 = ()
data T_GeneralizeTel_34349
  = C_mkGeneralizeTel_34351 MAlonzo.Code.Ledger.Transaction.T_Tx_2618
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1912
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1926
