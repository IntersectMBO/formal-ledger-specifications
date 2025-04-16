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

-- _.Dec-isVKey
d_Dec'45'isVKey_62 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_62 ~v0 = du_Dec'45'isVKey_62
du_Dec'45'isVKey_62 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_62
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- _.NetworkId
d_NetworkId_208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_208 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1190 (coe v0))
-- _.Tx
d_Tx_358 a0 = ()
-- _.coin
d_coin_414 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_414 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_192
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2204 (coe v0))
-- _.getValueʰ
d_getValue'688'_456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_456 ~v0 = du_getValue'688'_456
du_getValue'688'_456 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_456
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2654
-- _.netId
d_netId_508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_508 ~v0 = du_netId_508
du_netId_508 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_508 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_566 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2644 (coe v0)
-- _.Tx.body
d_body_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518
d_body_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v0)
-- _.Tx.isValid
d_isValid_1396 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2620 -> Bool
d_isValid_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2634 (coe v0)
-- _.Tx.txAD
d_txAD_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 -> Maybe AgdaAny
d_txAD_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2636 (coe v0)
-- _.Tx.wits
d_wits_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2600
d_wits_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2632 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1528 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2378
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1538 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2396 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1890 v0 ~v1 = du_Dec'45'inInterval_1890 v0
du_Dec'45'inInterval_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1890 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2616 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.To-UTxOState
d_To'45'UTxOState_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'UTxOState_1906 ~v0 ~v1 = du_To'45'UTxOState_1906
du_To'45'UTxOState_1906 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'UTxOState_1906
  = coe MAlonzo.Code.Ledger.Utxo.du_To'45'UTxOState_2058
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_1912 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_1914 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1920 v0 ~v1 = du_balance_1920 v0
du_balance_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1920 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_2076 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1924 v0 ~v1 = du_cbalance_1924 v0
du_cbalance_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1924 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_2082 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> AgdaAny
d_consumed_1934 v0 ~v1 = du_consumed_1934 v0
du_consumed_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> AgdaAny
du_consumed_1934 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2908 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> Integer
d_depositRefunds_1938 v0 ~v1 = du_depositRefunds_1938 v0
du_depositRefunds_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> Integer
du_depositRefunds_1938 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2892 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_1946 = erased
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_1952 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> Integer
d_newDeposits_1968 v0 ~v1 = du_newDeposits_1968 v0
du_newDeposits_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> Integer
du_newDeposits_1968 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2900 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1972 ~v0 ~v1 = du_outs_1972
du_outs_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1972 = coe MAlonzo.Code.Ledger.Utxo.du_outs_2070
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> AgdaAny
d_produced_1974 v0 ~v1 = du_produced_1974 v0
du_produced_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> AgdaAny
du_produced_1974 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2916 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 -> Integer
d_refScriptsSize_1978 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2086 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1992 v0 ~v1 = du_updateDeposits_1992 v0
du_updateDeposits_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1992 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2480 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1998 v0 ~v1 = du_utxoEntrySize_1998 v0
du_utxoEntrySize_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1998 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2018 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2018 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2018 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2032 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2020 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 -> AgdaAny
d_slot_2020 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2030 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2022 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 -> Integer
d_treasury_2022 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2034 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2026 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2026 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2050 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2028 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 -> Integer
d_donations_2028 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2052 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2030 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 -> Integer
d_fees_2030 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2048 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2032 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2032 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2046 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2078 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2078
  = C_Scripts'45'Yes_2158 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2238 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2122 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2122 ~v0 ~v1 ~v2 v3 = du_txins_2122 v3
du_txins_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2122 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2560
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2140 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2140 ~v0 v1 ~v2 ~v3 = du_pparams_2140 v1
du_pparams_2140 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2140 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2032 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2154 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2154 ~v0 ~v1 v2 ~v3 = du_utxo_2154 v2
du_utxo_2154 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2154 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2046 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2178 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2178 ~v0 ~v1 ~v2 v3 = du_collateral_2178 v3
du_collateral_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2178 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2594
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2220 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2220 ~v0 v1 ~v2 ~v3 = du_pparams_2220 v1
du_pparams_2220 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2220 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2032 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2234 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2234 ~v0 ~v1 v2 ~v3 = du_utxo_2234 v2
du_utxo_2234 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2234 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2046 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2240 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2396 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2378
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2032 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2046 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2634 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2634 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2242 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2396 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2378
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2032 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2046 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2634 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2634 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2244 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2244
  = C_UTXO'45'inductive_2340 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518
d_body_2252 ~v0 ~v1 v2 = du_body_2252 v2
du_body_2252 ::
  T_GeneralizeTel_28319 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518
du_body_2252 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2630
      (coe d_'46'generalizedField'45'tx_28311 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 -> Maybe Integer
d_curTreasury_2260 ~v0 ~v1 v2 = du_curTreasury_2260 v2
du_curTreasury_2260 :: T_GeneralizeTel_28319 -> Maybe Integer
du_curTreasury_2260 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_28311 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 -> AgdaAny
d_mint_2262 ~v0 ~v1 v2 = du_mint_2262 v2
du_mint_2262 :: T_GeneralizeTel_28319 -> AgdaAny
du_mint_2262 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2568
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_28311 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2264 ~v0 ~v1 v2 = du_refInputs_2264 v2
du_refInputs_2264 ::
  T_GeneralizeTel_28319 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2264 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2562
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_28311 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 -> Maybe AgdaAny
d_txNetworkId_2272 ~v0 ~v1 v2 = du_txNetworkId_2272 v2
du_txNetworkId_2272 :: T_GeneralizeTel_28319 -> Maybe AgdaAny
du_txNetworkId_2272 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2586
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_28311 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2282 ~v0 ~v1 v2 = du_txins_2282 v2
du_txins_2282 ::
  T_GeneralizeTel_28319 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2282 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2560
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_28311 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2284 ~v0 ~v1 v2 = du_txouts_2284 v2
du_txouts_2284 ::
  T_GeneralizeTel_28319 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2284 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2564
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_28311 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 -> Integer
d_txsize_2288 ~v0 ~v1 v2 = du_txsize_2288 v2
du_txsize_2288 :: T_GeneralizeTel_28319 -> Integer
du_txsize_2288 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_28311 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2292 ~v0 ~v1 v2 = du_txvldt_2292 v2
du_txvldt_2292 ::
  T_GeneralizeTel_28319 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2292 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2570
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_28311 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2296 ~v0 ~v1 v2 = du_txwdrls_2296 v2
du_txwdrls_2296 ::
  T_GeneralizeTel_28319 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2296 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2574
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_28311 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2300 ~v0 ~v1 v2 = du_pparams_2300 v2
du_pparams_2300 ::
  T_GeneralizeTel_28319 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2300 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_2032
      (coe d_'46'generalizedField'45'Γ_28313 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 -> AgdaAny
d_slot_2302 ~v0 ~v1 v2 = du_slot_2302 v2
du_slot_2302 :: T_GeneralizeTel_28319 -> AgdaAny
du_slot_2302 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_2030
      (coe d_'46'generalizedField'45'Γ_28313 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 -> Integer
d_treasury_2304 ~v0 ~v1 v2 = du_treasury_2304 v2
du_treasury_2304 :: T_GeneralizeTel_28319 -> Integer
du_treasury_2304 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_2034
      (coe d_'46'generalizedField'45'Γ_28313 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2314 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_28319 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2314 ~v0 ~v1 v2 = du_utxo_2314 v2
du_utxo_2314 ::
  T_GeneralizeTel_28319 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2314 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2046
      (coe d_'46'generalizedField'45's_28315 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2384 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1174 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1172 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2560
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v2)))
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
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1174 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1172 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2046 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2560
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2562
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1174 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1172 (coe v0))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1174 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1172 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2560
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2562
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2616 (coe v0)
                     (coe MAlonzo.Code.Ledger.Utxo.d_slot_2030 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2570
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (MAlonzo.Code.Ledger.Utxo.d_minfee_2092
                              (coe v0) (coe v1)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2032 (coe v3))
                              (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2046 (coe v4)) (coe v2))
                           (MAlonzo.Code.Ledger.Transaction.d_txfee_2566
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v2))))
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
                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1172
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
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1772
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1772
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2616
                                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_2632 (coe v2))))
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
                                    MAlonzo.Code.Ledger.Utxo.du_collateralRange_2876 (coe v0)
                                    (coe v2) (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2046 (coe v4))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1214
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2722
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_196
                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2204
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Utxo.du_bal_2878 (coe v0) (coe v2)
                                             (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2046 (coe v4)))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1214
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_196
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2204
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.du_bal_2878 (coe v0)
                                                     (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_utxo_2046
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2722 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txfee_2566
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2630
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.PParams.d_collateralPercentage_366
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.d_pparams_2032 (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_192
                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2204
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.du_bal_2878 (coe v0)
                                                (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_2046 (coe v4))))
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
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1174
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1172
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_collateral_2594
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2630
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
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_204
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2204 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_consumed_2908 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2032 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_produced_2916 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2032 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_192
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2204 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2568
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2590
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_318
                                    (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2032 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2086
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2046 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_350
                                       (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2032 (coe v3))))
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
                                               (mulInt
                                                  (coe
                                                     addInt (coe (160 :: Integer))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2018
                                                        (coe v0)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_344
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_2032
                                                        (coe v3))))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_coin_192
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2204
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2654
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v5))))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2644
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2564
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2630
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
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1750 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2654
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_326
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_2032
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
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2644
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2564
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2630
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
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2644
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2564
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2630
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
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1190
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_112
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1190
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2644
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2564
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2630
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1190
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_82
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1190
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2574
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2630
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2586
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2630
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1190
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1190
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2588
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2630
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Utxo.d_treasury_2034
                                                            (coe v3)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_28311 ::
  T_GeneralizeTel_28319 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2620
d_'46'generalizedField'45'tx_28311 v0
  = case coe v0 of
      C_mkGeneralizeTel_28321 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_28313 ::
  T_GeneralizeTel_28319 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022
d_'46'generalizedField'45'Γ_28313 v0
  = case coe v0 of
      C_mkGeneralizeTel_28321 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_28315 ::
  T_GeneralizeTel_28319 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
d_'46'generalizedField'45's_28315 v0
  = case coe v0 of
      C_mkGeneralizeTel_28321 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_28317 ::
  T_GeneralizeTel_28319 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
d_'46'generalizedField'45's''_28317 v0
  = case coe v0 of
      C_mkGeneralizeTel_28321 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_28319 a0 a1 = ()
data T_GeneralizeTel_28319
  = C_mkGeneralizeTel_28321 MAlonzo.Code.Ledger.Transaction.T_Tx_2620
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
