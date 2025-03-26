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
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.To
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
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208 (coe v0))
-- _.Tx
d_Tx_360 a0 = ()
-- _.coin
d_coin_416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_416 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
-- _.getValueʰ
d_getValue'688'_452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_452 ~v0 = du_getValue'688'_452
du_getValue'688'_452 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_452
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2672
-- _.inject
d_inject_462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_462 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
-- _.netId
d_netId_504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_504 ~v0 = du_netId_504
du_netId_504 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_504 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_566 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2662 (coe v0)
-- _.Tx.body
d_body_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536
d_body_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v0)
-- _.Tx.isValid
d_isValid_1384 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2638 -> Bool
d_isValid_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2652 (coe v0)
-- _.Tx.txAD
d_txAD_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 -> Maybe AgdaAny
d_txAD_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2654 (coe v0)
-- _.Tx.wits
d_wits_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2618
d_wits_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2650 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1516 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2366
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1526 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1526 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2384 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_1878 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1878 v0 ~v1 = du_Dec'45'inInterval_1878 v0
du_Dec'45'inInterval_1878 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1878 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2604 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.To-UTxOState
d_To'45'UTxOState_1894 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'UTxOState_1894 ~v0 ~v1 = du_To'45'UTxOState_1894
du_To'45'UTxOState_1894 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'UTxOState_1894
  = coe MAlonzo.Code.Ledger.Utxo.du_To'45'UTxOState_2046
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_1900 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_1902 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1908 v0 ~v1 = du_balance_1908 v0
du_balance_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1908 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_2064 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1912 v0 ~v1 = du_cbalance_1912 v0
du_cbalance_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1912 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_2070 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> AgdaAny
d_consumed_1922 v0 ~v1 = du_consumed_1922 v0
du_consumed_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> AgdaAny
du_consumed_1922 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2896 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Integer
d_depositRefunds_1926 v0 ~v1 = du_depositRefunds_1926 v0
du_depositRefunds_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Integer
du_depositRefunds_1926 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2880 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_1934 = erased
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_1940 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Integer
d_newDeposits_1956 v0 ~v1 = du_newDeposits_1956 v0
du_newDeposits_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Integer
du_newDeposits_1956 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2888 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1960 ~v0 ~v1 = du_outs_1960
du_outs_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1960 = coe MAlonzo.Code.Ledger.Utxo.du_outs_2058
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> AgdaAny
d_produced_1962 v0 ~v1 = du_produced_1962 v0
du_produced_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> AgdaAny
du_produced_1962 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2904 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 -> Integer
d_refScriptsSize_1966 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2074 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1980 v0 ~v1 = du_updateDeposits_1980 v0
du_updateDeposits_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1980 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2468 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1986 v0 ~v1 = du_utxoEntrySize_1986 v0
du_utxoEntrySize_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1986 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2006 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2006 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2006 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2020 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2008 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 -> AgdaAny
d_slot_2008 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2018 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2010 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 -> Integer
d_treasury_2010 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2022 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2014 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2014 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2038 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2016 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 -> Integer
d_donations_2016 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2040 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2018 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 -> Integer
d_fees_2018 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2036 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2020 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2020 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2034 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2066 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2066
  = C_Scripts'45'Yes_2146 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2226 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2110 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2110 ~v0 ~v1 ~v2 v3 = du_txins_2110 v3
du_txins_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2110 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2578
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2128 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2128 ~v0 v1 ~v2 ~v3 = du_pparams_2128 v1
du_pparams_2128 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2128 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2020 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2142 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2142 ~v0 ~v1 v2 ~v3 = du_utxo_2142 v2
du_utxo_2142 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2142 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2034 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2166 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2166 ~v0 ~v1 ~v2 v3 = du_collateral_2166 v3
du_collateral_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2166 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2612
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2208 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2208 ~v0 v1 ~v2 ~v3 = du_pparams_2208 v1
du_pparams_2208 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2208 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2020 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2222 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2222 ~v0 ~v1 v2 ~v3 = du_utxo_2222 v2
du_utxo_2222 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2222 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2034 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2228 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2228 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2384 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2366
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2020 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2034 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2652 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2652 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2230 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2384 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2366
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2020 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2034 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2652 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2652 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2232 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2232
  = C_UTXO'45'inductive_2328 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536
d_body_2240 ~v0 ~v1 v2 = du_body_2240 v2
du_body_2240 ::
  T_GeneralizeTel_28445 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536
du_body_2240 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2648
      (coe d_'46'generalizedField'45'tx_28437 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 -> Maybe Integer
d_curTreasury_2248 ~v0 ~v1 v2 = du_curTreasury_2248 v2
du_curTreasury_2248 :: T_GeneralizeTel_28445 -> Maybe Integer
du_curTreasury_2248 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2606
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_28437 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 -> AgdaAny
d_mint_2250 ~v0 ~v1 v2 = du_mint_2250 v2
du_mint_2250 :: T_GeneralizeTel_28445 -> AgdaAny
du_mint_2250 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2586
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_28437 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2252 ~v0 ~v1 v2 = du_refInputs_2252 v2
du_refInputs_2252 ::
  T_GeneralizeTel_28445 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2252 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2580
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_28437 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 -> Maybe AgdaAny
d_txNetworkId_2260 ~v0 ~v1 v2 = du_txNetworkId_2260 v2
du_txNetworkId_2260 :: T_GeneralizeTel_28445 -> Maybe AgdaAny
du_txNetworkId_2260 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2604
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_28437 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2270 ~v0 ~v1 v2 = du_txins_2270 v2
du_txins_2270 ::
  T_GeneralizeTel_28445 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2270 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2578
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_28437 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2272 ~v0 ~v1 v2 = du_txouts_2272 v2
du_txouts_2272 ::
  T_GeneralizeTel_28445 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2272 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2582
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_28437 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 -> Integer
d_txsize_2276 ~v0 ~v1 v2 = du_txsize_2276 v2
du_txsize_2276 :: T_GeneralizeTel_28445 -> Integer
du_txsize_2276 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2608
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_28437 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2280 ~v0 ~v1 v2 = du_txvldt_2280 v2
du_txvldt_2280 ::
  T_GeneralizeTel_28445 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2280 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_28437 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2284 ~v0 ~v1 v2 = du_txwdrls_2284 v2
du_txwdrls_2284 ::
  T_GeneralizeTel_28445 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2284 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2592
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_28437 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2288 ~v0 ~v1 v2 = du_pparams_2288 v2
du_pparams_2288 ::
  T_GeneralizeTel_28445 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2288 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_2020
      (coe d_'46'generalizedField'45'Γ_28439 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 -> AgdaAny
d_slot_2290 ~v0 ~v1 v2 = du_slot_2290 v2
du_slot_2290 :: T_GeneralizeTel_28445 -> AgdaAny
du_slot_2290 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_2018
      (coe d_'46'generalizedField'45'Γ_28439 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 -> Integer
d_treasury_2292 ~v0 ~v1 v2 = du_treasury_2292 v2
du_treasury_2292 :: T_GeneralizeTel_28445 -> Integer
du_treasury_2292 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_2022
      (coe d_'46'generalizedField'45'Γ_28439 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28445 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2302 ~v0 ~v1 v2 = du_utxo_2302 v2
du_utxo_2302 ::
  T_GeneralizeTel_28445 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2302 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2034
      (coe d_'46'generalizedField'45's_28441 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2372 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2578
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v2)))
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
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2034 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2578
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2580
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2578
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2580
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2604 (coe v0)
                     (coe MAlonzo.Code.Ledger.Utxo.d_slot_2018 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2588
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (MAlonzo.Code.Ledger.Utxo.d_minfee_2080
                              (coe v0) (coe v1)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2020 (coe v3))
                              (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2034 (coe v4)) (coe v2))
                           (MAlonzo.Code.Ledger.Transaction.d_txfee_2584
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v2))))
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
                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190
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
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1798
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1798
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2634
                                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_2650 (coe v2))))
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
                                    MAlonzo.Code.Ledger.Utxo.du_collateralRange_2864 (coe v0)
                                    (coe v2) (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2034 (coe v4))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1232
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2710
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Utxo.du_bal_2866 (coe v0) (coe v2)
                                             (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2034 (coe v4)))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1232
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.du_bal_2866 (coe v0)
                                                     (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_utxo_2034
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2710 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txfee_2584
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2648
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.PParams.d_collateralPercentage_366
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.d_pparams_2020 (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.du_bal_2866 (coe v0)
                                                (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_2034 (coe v4))))
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
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_collateral_2612
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2648
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
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_consumed_2896 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2020 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_produced_2904 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2020 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2586
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2608
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_318
                                    (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2020 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2074
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2034 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_350
                                       (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2020 (coe v3))))
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
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2006
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_344
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_2020
                                                           (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2672
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
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2662
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2582
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2648
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
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1738 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2672
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_326
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_2020
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
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2662
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2582
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2648
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
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2662
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2582
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2648
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
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_112
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2662
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2582
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2648
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_82
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2592
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2648
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_46
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2604
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2648
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_46
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2606
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2648
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Utxo.d_treasury_2022
                                                            (coe v3)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_28437 ::
  T_GeneralizeTel_28445 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2638
d_'46'generalizedField'45'tx_28437 v0
  = case coe v0 of
      C_mkGeneralizeTel_28447 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_28439 ::
  T_GeneralizeTel_28445 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010
d_'46'generalizedField'45'Γ_28439 v0
  = case coe v0 of
      C_mkGeneralizeTel_28447 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_28441 ::
  T_GeneralizeTel_28445 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
d_'46'generalizedField'45's_28441 v0
  = case coe v0 of
      C_mkGeneralizeTel_28447 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_28443 ::
  T_GeneralizeTel_28445 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
d_'46'generalizedField'45's''_28443 v0
  = case coe v0 of
      C_mkGeneralizeTel_28447 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_28445 a0 a1 = ()
data T_GeneralizeTel_28445
  = C_mkGeneralizeTel_28447 MAlonzo.Code.Ledger.Transaction.T_Tx_2638
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2010
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
