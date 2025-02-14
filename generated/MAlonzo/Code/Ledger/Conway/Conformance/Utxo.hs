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

module MAlonzo.Code.Ledger.Conway.Conformance.Utxo where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _._≤ᵗ_
d__'8804''7511'__20 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__20 = erased
-- _.Dec-isVKey
d_Dec'45'isVKey_66 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_66 ~v0 = du_Dec'45'isVKey_66
du_Dec'45'isVKey_66 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_66
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- _.NetworkId
d_NetworkId_208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_208 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v0))
-- _.Tx
d_Tx_356 a0 = ()
-- _.coin
d_coin_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_412 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v0))
-- _.getValueʰ
d_getValue'688'_448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_448 ~v0 = du_getValue'688'_448
du_getValue'688'_448 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_448
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2652
-- _.inject
d_inject_458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_458 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v0))
-- _.netId
d_netId_502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_502 ~v0 = du_netId_502
du_netId_502 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_502 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_564 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2642 (coe v0)
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
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1506 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2350
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1516 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2368 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._._≡?_
d__'8801''63'__1856 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_1864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1864 v0 ~v1 = du_Dec'45'inInterval_1864 v0
du_Dec'45'inInterval_1864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1864 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2590 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_1882 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_1884 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1890 v0 ~v1 = du_balance_1890 v0
du_balance_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1890 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_2050 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_1894 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1894 v0 ~v1 = du_cbalance_1894 v0
du_cbalance_1894 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1894 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_2056 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
d_consumed_1904 v0 ~v1 = du_consumed_1904 v0
du_consumed_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
du_consumed_1904 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2878 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_depositRefunds_1908 v0 ~v1 = du_depositRefunds_1908 v0
du_depositRefunds_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
du_depositRefunds_1908 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2862 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_1916 = erased
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_1922 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_newDeposits_1938 v0 ~v1 = du_newDeposits_1938 v0
du_newDeposits_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
du_newDeposits_1938 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2870 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1942 ~v0 ~v1 = du_outs_1942
du_outs_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1942 = coe MAlonzo.Code.Ledger.Utxo.du_outs_2044
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
d_produced_1944 v0 ~v1 = du_produced_1944 v0
du_produced_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
du_produced_1944 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2886 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_refScriptsSize_1948 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2060 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1962 v0 ~v1 = du_updateDeposits_1962 v0
du_updateDeposits_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1962 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2454 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1968 v0 ~v1 = du_utxoEntrySize_1968 v0
du_utxoEntrySize_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1968 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1996 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.≟?
d_'8799''63'_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1974 ~v0 ~v1 = du_'8799''63'_1974
du_'8799''63'_1974 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1974 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3088 v1 v2 v3
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2000 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2000 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2010 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2002 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 -> AgdaAny
d_slot_2002 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2008 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2004 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 -> Integer
d_treasury_2004 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2012 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2008 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2008 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2028 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2010 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 -> Integer
d_donations_2010 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2030 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2012 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 -> Integer
d_fees_2012 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2026 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2014 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2014 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2024 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2060 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2060
  = C_Scripts'45'Yes_2140 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2220 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txdonation
d_txdonation_2098 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_txdonation_2098 ~v0 ~v1 ~v2 v3 = du_txdonation_2098 v3
du_txdonation_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
du_txdonation_2098 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2578
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txfee
d_txfee_2100 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_txfee_2100 ~v0 ~v1 ~v2 v3 = du_txfee_2100 v3
du_txfee_2100 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
du_txfee_2100 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2564
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2104 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2104 ~v0 ~v1 ~v2 v3 = du_txins_2104 v3
du_txins_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2104 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2558
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2122 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2122 ~v0 v1 ~v2 ~v3 = du_pparams_2122 v1
du_pparams_2122 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2122 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2010 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2130 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2130 ~v0 ~v1 v2 ~v3 = du_deposits_2130 v2
du_deposits_2130 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2130 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2028 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2132 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_donations_2132 ~v0 ~v1 v2 ~v3 = du_donations_2132 v2
du_donations_2132 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 -> Integer
du_donations_2132 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2030 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2134 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_fees_2134 ~v0 ~v1 v2 ~v3 = du_fees_2134 v2
du_fees_2134 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 -> Integer
du_fees_2134 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2026 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2136 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2136 ~v0 ~v1 v2 ~v3 = du_utxo_2136 v2
du_utxo_2136 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2136 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2024 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2160 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2160 ~v0 ~v1 ~v2 v3 = du_collateral_2160 v3
du_collateral_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2160 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2592
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2202 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2202 ~v0 v1 ~v2 ~v3 = du_pparams_2202 v1
du_pparams_2202 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2202 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2010 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2210 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2210 ~v0 ~v1 v2 ~v3 = du_deposits_2210 v2
du_deposits_2210 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2210 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2028 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2212 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_donations_2212 ~v0 ~v1 v2 ~v3 = du_donations_2212 v2
du_donations_2212 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 -> Integer
du_donations_2212 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2030 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2214 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_fees_2214 ~v0 ~v1 v2 ~v3 = du_fees_2214 v2
du_fees_2214 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 -> Integer
du_fees_2214 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2026 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2216 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2216 ~v0 ~v1 v2 ~v3 = du_utxo_2216 v2
du_utxo_2216 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2216 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2024 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2222 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2222 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2368 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2350
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2010 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2024 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2224 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2368 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2350
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2010 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2024 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2226 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2226
  = C_UTXO'45'inductive_2322 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2234 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
d_body_2234 ~v0 ~v1 v2 = du_body_2234 v2
du_body_2234 ::
  T_GeneralizeTel_16873 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
du_body_2234 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2628
      (coe d_'46'generalizedField'45'tx_16865 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 -> Maybe Integer
d_curTreasury_2242 ~v0 ~v1 v2 = du_curTreasury_2242 v2
du_curTreasury_2242 :: T_GeneralizeTel_16873 -> Maybe Integer
du_curTreasury_2242 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2586
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_16865 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 -> AgdaAny
d_mint_2244 ~v0 ~v1 v2 = du_mint_2244 v2
du_mint_2244 :: T_GeneralizeTel_16873 -> AgdaAny
du_mint_2244 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2566
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_16865 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2246 ~v0 ~v1 v2 = du_refInputs_2246 v2
du_refInputs_2246 ::
  T_GeneralizeTel_16873 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2246 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2560
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_16865 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 -> Maybe AgdaAny
d_txNetworkId_2254 ~v0 ~v1 v2 = du_txNetworkId_2254 v2
du_txNetworkId_2254 :: T_GeneralizeTel_16873 -> Maybe AgdaAny
du_txNetworkId_2254 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2584
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_16865 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2264 ~v0 ~v1 v2 = du_txins_2264 v2
du_txins_2264 ::
  T_GeneralizeTel_16873 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2264 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2558
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_16865 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2266 ~v0 ~v1 v2 = du_txouts_2266 v2
du_txouts_2266 ::
  T_GeneralizeTel_16873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2266 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2562
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_16865 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 -> Integer
d_txsize_2270 ~v0 ~v1 v2 = du_txsize_2270 v2
du_txsize_2270 :: T_GeneralizeTel_16873 -> Integer
du_txsize_2270 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_16865 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2274 ~v0 ~v1 v2 = du_txvldt_2274 v2
du_txvldt_2274 ::
  T_GeneralizeTel_16873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2274 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2568
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_16865 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2278 ~v0 ~v1 v2 = du_txwdrls_2278 v2
du_txwdrls_2278 ::
  T_GeneralizeTel_16873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2278 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_16865 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2282 ~v0 ~v1 v2 = du_pparams_2282 v2
du_pparams_2282 ::
  T_GeneralizeTel_16873 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2282 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_2010
      (coe d_'46'generalizedField'45'Γ_16867 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 -> AgdaAny
d_slot_2284 ~v0 ~v1 v2 = du_slot_2284 v2
du_slot_2284 :: T_GeneralizeTel_16873 -> AgdaAny
du_slot_2284 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_2008
      (coe d_'46'generalizedField'45'Γ_16867 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 -> Integer
d_treasury_2286 ~v0 ~v1 v2 = du_treasury_2286 v2
du_treasury_2286 :: T_GeneralizeTel_16873 -> Integer
du_treasury_2286 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_2012
      (coe d_'46'generalizedField'45'Γ_16867 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_16873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2296 ~v0 ~v1 v2 = du_utxo_2296 v2
du_utxo_2296 ::
  T_GeneralizeTel_16873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2296 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2024
      (coe d_'46'generalizedField'45's_16869 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2366 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1182 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2558
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_442
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1182 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2024 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2558
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2560
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1182 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180 (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__704
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1182 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2558
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2560
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2590 (coe v0)
                     (coe MAlonzo.Code.Ledger.Utxo.d_slot_2008 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2568
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (MAlonzo.Code.Ledger.Utxo.d_minfee_2066
                              (coe v0) (coe v1)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2010 (coe v3))
                              (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2024 (coe v4)) (coe v2))
                           (MAlonzo.Code.Ledger.Transaction.d_txfee_2564
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                                (coe
                                                   MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_ps_448
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2614
                                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v2))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'8709'_442
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                              (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
                                         (coe
                                            MAlonzo.Code.Ledger.Address.du_payCred_108
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.du_collateralRange_2846 (coe v0)
                                    (coe v2) (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2024 (coe v4))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2696
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Utxo.du_bal_2848 (coe v0) (coe v2)
                                             (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2024 (coe v4)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.du_bal_2848 (coe v0)
                                                     (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_utxo_2024
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2696 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txfee_2564
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.d_pparams_2010 (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.du_bal_2848 (coe v0)
                                                (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_2024 (coe v4))))
                                          (coe (100 :: Integer))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1182
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_collateral_2592
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8709'_442
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_consumed_2878 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2010 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_produced_2886 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2010 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2566
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2588
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_312
                                    (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2010 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2060
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2024 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340
                                       (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2010 (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1996
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_2010
                                                           (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2652
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2642
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2562
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                   (coe v2))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                  (coe
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1722 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2652
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_320
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_2010
                                                        (coe v3)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2642
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2562
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                      (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'All_28
                                                     (coe
                                                        (\ v6 ->
                                                           MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                                                     (coe
                                                        (\ v6 ->
                                                           coe
                                                             MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                             (MAlonzo.Code.Ledger.Address.d_attrsSize_74
                                                                (coe v6))
                                                             (64 :: Integer)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v5))))
                                             (coe
                                                MAlonzo.Code.Class.IsSet.du_range_550
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2642
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2562
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_112
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                              (coe v0)))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_range_550
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2642
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2562
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                            (coe v2))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_82
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                                 (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_548
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3088
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2584
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3088
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2586
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Utxo.d_treasury_2012
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_16865 ::
  T_GeneralizeTel_16873 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2618
d_'46'generalizedField'45'tx_16865 v0
  = case coe v0 of
      C_mkGeneralizeTel_16875 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_16867 ::
  T_GeneralizeTel_16873 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000
d_'46'generalizedField'45'Γ_16867 v0
  = case coe v0 of
      C_mkGeneralizeTel_16875 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_16869 ::
  T_GeneralizeTel_16873 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_'46'generalizedField'45's_16869 v0
  = case coe v0 of
      C_mkGeneralizeTel_16875 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_16871 ::
  T_GeneralizeTel_16873 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_'46'generalizedField'45's''_16871 v0
  = case coe v0 of
      C_mkGeneralizeTel_16875 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_16873 a0 a1 = ()
data T_GeneralizeTel_16873
  = C_mkGeneralizeTel_16875 MAlonzo.Code.Ledger.Transaction.T_Tx_2618
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
