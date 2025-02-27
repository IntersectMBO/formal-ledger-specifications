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
d_NetworkId_212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_212 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v0))
-- _.Tx
d_Tx_362 a0 = ()
-- _.coin
d_coin_418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_418 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v0))
-- _.getValueʰ
d_getValue'688'_454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_454 ~v0 = du_getValue'688'_454
du_getValue'688'_454 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_454
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2660
-- _.inject
d_inject_464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_464 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v0))
-- _.netId
d_netId_508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_508 ~v0 = du_netId_508
du_netId_508 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_508 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_570 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2650 (coe v0)
-- _.Tx.body
d_body_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524
d_body_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v0)
-- _.Tx.isValid
d_isValid_1384 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2626 -> Bool
d_isValid_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2640 (coe v0)
-- _.Tx.txAD
d_txAD_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 -> Maybe AgdaAny
d_txAD_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2642 (coe v0)
-- _.Tx.wits
d_wits_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2606
d_wits_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2638 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
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
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1526 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2384 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._._≡?_
d__'8801''63'__1874 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1882 v0 ~v1 = du_Dec'45'inInterval_1882 v0
du_Dec'45'inInterval_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1882 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2608 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.To-UTxOState
d_To'45'UTxOState_1896 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'UTxOState_1896 ~v0 ~v1 = du_To'45'UTxOState_1896
du_To'45'UTxOState_1896 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'UTxOState_1896
  = coe MAlonzo.Code.Ledger.Utxo.du_To'45'UTxOState_2050
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_1902 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_1904 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1910 v0 ~v1 = du_balance_1910 v0
du_balance_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1910 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_2068 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_1914 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1914 v0 ~v1 = du_cbalance_1914 v0
du_cbalance_1914 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1914 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_2074 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> AgdaAny
d_consumed_1924 v0 ~v1 = du_consumed_1924 v0
du_consumed_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> AgdaAny
du_consumed_1924 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2896 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> Integer
d_depositRefunds_1928 v0 ~v1 = du_depositRefunds_1928 v0
du_depositRefunds_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> Integer
du_depositRefunds_1928 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2880 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_1936 = erased
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_1942 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_1958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> Integer
d_newDeposits_1958 v0 ~v1 = du_newDeposits_1958 v0
du_newDeposits_1958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> Integer
du_newDeposits_1958 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2888 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1962 ~v0 ~v1 = du_outs_1962
du_outs_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1962 = coe MAlonzo.Code.Ledger.Utxo.du_outs_2062
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> AgdaAny
d_produced_1964 v0 ~v1 = du_produced_1964 v0
du_produced_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> AgdaAny
du_produced_1964 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2904 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 -> Integer
d_refScriptsSize_1968 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2078 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1982 v0 ~v1 = du_updateDeposits_1982 v0
du_updateDeposits_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1982 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2472 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1988 v0 ~v1 = du_utxoEntrySize_1988 v0
du_utxoEntrySize_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1988 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2012 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.≟?
d_'8799''63'_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1994 ~v0 ~v1 = du_'8799''63'_1994
du_'8799''63'_1994 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1994 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3106 v1 v2 v3
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2020 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2020 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2026 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2022 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 -> AgdaAny
d_slot_2022 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2024 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2024 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 -> Integer
d_treasury_2024 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2028 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2028 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2028 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2044 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2030 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 -> Integer
d_donations_2030 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2046 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2032 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 -> Integer
d_fees_2032 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2042 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2034 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2034 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2040 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2080 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2080
  = C_Scripts'45'Yes_2160 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2240 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2124 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2124 ~v0 ~v1 ~v2 v3 = du_txins_2124 v3
du_txins_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2124 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2566
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2142 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2142 ~v0 v1 ~v2 ~v3 = du_pparams_2142 v1
du_pparams_2142 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2142 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2026 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2156 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2156 ~v0 ~v1 v2 ~v3 = du_utxo_2156 v2
du_utxo_2156 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2156 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2040 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2180 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2180 ~v0 ~v1 ~v2 v3 = du_collateral_2180 v3
du_collateral_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2180 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2600
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2222 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2222 ~v0 v1 ~v2 ~v3 = du_pparams_2222 v1
du_pparams_2222 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2222 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2026 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2236 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2236 ~v0 ~v1 v2 ~v3 = du_utxo_2236 v2
du_utxo_2236 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2236 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2040 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2242 v0 v1 v2 v3 v4
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
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2026 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2040 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2640 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2640 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2244 v0 v1 v2 v3 v4
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
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2026 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2040 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2640 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2640 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2246 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2246
  = C_UTXO'45'inductive_2342 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524
d_body_2254 ~v0 ~v1 v2 = du_body_2254 v2
du_body_2254 ::
  T_GeneralizeTel_28353 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524
du_body_2254 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2636
      (coe d_'46'generalizedField'45'tx_28345 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 -> Maybe Integer
d_curTreasury_2262 ~v0 ~v1 v2 = du_curTreasury_2262 v2
du_curTreasury_2262 :: T_GeneralizeTel_28353 -> Maybe Integer
du_curTreasury_2262 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2594
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_28345 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 -> AgdaAny
d_mint_2264 ~v0 ~v1 v2 = du_mint_2264 v2
du_mint_2264 :: T_GeneralizeTel_28353 -> AgdaAny
du_mint_2264 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2574
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_28345 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2266 ~v0 ~v1 v2 = du_refInputs_2266 v2
du_refInputs_2266 ::
  T_GeneralizeTel_28353 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2266 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2568
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_28345 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 -> Maybe AgdaAny
d_txNetworkId_2274 ~v0 ~v1 v2 = du_txNetworkId_2274 v2
du_txNetworkId_2274 :: T_GeneralizeTel_28353 -> Maybe AgdaAny
du_txNetworkId_2274 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2592
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_28345 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2284 ~v0 ~v1 v2 = du_txins_2284 v2
du_txins_2284 ::
  T_GeneralizeTel_28353 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2284 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2566
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_28345 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2286 ~v0 ~v1 v2 = du_txouts_2286 v2
du_txouts_2286 ::
  T_GeneralizeTel_28353 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2286 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2570
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_28345 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 -> Integer
d_txsize_2290 ~v0 ~v1 v2 = du_txsize_2290 v2
du_txsize_2290 :: T_GeneralizeTel_28353 -> Integer
du_txsize_2290 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2596
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_28345 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2294 ~v0 ~v1 v2 = du_txvldt_2294 v2
du_txvldt_2294 ::
  T_GeneralizeTel_28353 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2294 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2576
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_28345 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2298 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2298 ~v0 ~v1 v2 = du_txwdrls_2298 v2
du_txwdrls_2298 ::
  T_GeneralizeTel_28353 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2298 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2580
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_28345 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2302 ~v0 ~v1 v2 = du_pparams_2302 v2
du_pparams_2302 ::
  T_GeneralizeTel_28353 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2302 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_2026
      (coe d_'46'generalizedField'45'Γ_28347 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 -> AgdaAny
d_slot_2304 ~v0 ~v1 v2 = du_slot_2304 v2
du_slot_2304 :: T_GeneralizeTel_28353 -> AgdaAny
du_slot_2304 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_2024
      (coe d_'46'generalizedField'45'Γ_28347 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 -> Integer
d_treasury_2306 ~v0 ~v1 v2 = du_treasury_2306 v2
du_treasury_2306 :: T_GeneralizeTel_28353 -> Integer
du_treasury_2306 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_2028
      (coe d_'46'generalizedField'45'Γ_28347 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_28353 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2316 ~v0 ~v1 v2 = du_utxo_2316 v2
du_utxo_2316 ::
  T_GeneralizeTel_28353 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2316 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2040
      (coe d_'46'generalizedField'45's_28349 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2386 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2566
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v2)))
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
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2040 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2566
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2568
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182 (coe v0))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2566
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2568
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2608 (coe v0)
                     (coe MAlonzo.Code.Ledger.Utxo.d_slot_2024 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2576
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (MAlonzo.Code.Ledger.Utxo.d_minfee_2084
                              (coe v0) (coe v1)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2026 (coe v3))
                              (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2040 (coe v4)) (coe v2))
                           (MAlonzo.Code.Ledger.Transaction.d_txfee_2572
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v2))))
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
                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182
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
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1790
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1790
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2622
                                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_2638 (coe v2))))
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
                                    (coe v2) (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2040 (coe v4))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2714
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Utxo.du_bal_2866 (coe v0) (coe v2)
                                             (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2040 (coe v4)))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.du_bal_2866 (coe v0)
                                                     (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_utxo_2040
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2714 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txfee_2572
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2636
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.d_pparams_2026 (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.du_bal_2866 (coe v0)
                                                (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_2040 (coe v4))))
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
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_collateral_2600
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2636
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
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_consumed_2896 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2026 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_produced_2904 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2026 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2574
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2596
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_314
                                    (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2026 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2078
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2040 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342
                                       (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2026 (coe v3))))
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
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2012
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_2026
                                                           (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2660
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
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2650
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2570
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2636
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
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2660
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_322
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_2026
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
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2650
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2570
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2636
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
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2650
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2570
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2636
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
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_112
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2650
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2570
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2636
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_82
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2580
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2636
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3106
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2592
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2636
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3106
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2594
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2636
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Utxo.d_treasury_2028
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_28345 ::
  T_GeneralizeTel_28353 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2626
d_'46'generalizedField'45'tx_28345 v0
  = case coe v0 of
      C_mkGeneralizeTel_28355 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_28347 ::
  T_GeneralizeTel_28353 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016
d_'46'generalizedField'45'Γ_28347 v0
  = case coe v0 of
      C_mkGeneralizeTel_28355 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_28349 ::
  T_GeneralizeTel_28353 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
d_'46'generalizedField'45's_28349 v0
  = case coe v0 of
      C_mkGeneralizeTel_28355 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_28351 ::
  T_GeneralizeTel_28353 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
d_'46'generalizedField'45's''_28351 v0
  = case coe v0 of
      C_mkGeneralizeTel_28355 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_28353 a0 a1 = ()
data T_GeneralizeTel_28353
  = C_mkGeneralizeTel_28355 MAlonzo.Code.Ledger.Transaction.T_Tx_2626
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2016
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
