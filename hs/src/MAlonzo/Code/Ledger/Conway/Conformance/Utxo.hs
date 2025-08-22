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
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _._≤ᵗ_
d__'8804''7511'__20 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__20 = erased
-- _.Dec-isVKey
d_Dec'45'isVKey_70 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_70 ~v0 = du_Dec'45'isVKey_70
du_Dec'45'isVKey_70 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_70
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_212
-- _.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_114
d_HasNetworkId'45'RwdAddr_212 ~v0 = du_HasNetworkId'45'RwdAddr_212
du_HasNetworkId'45'RwdAddr_212 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_114
du_HasNetworkId'45'RwdAddr_212
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RwdAddr_150
-- _.NetworkId
d_NetworkId_274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_274 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_298
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1228
         (coe v0))
-- _.Tx
d_Tx_414 a0 = ()
-- _.coin
d_coin_480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_202
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2272
         (coe v0))
-- _.getValueʰ
d_getValue'688'_508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_508 ~v0 = du_getValue'688'_508
du_getValue'688'_508 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3172
-- _.inject
d_inject_518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_204
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2272
         (coe v0))
-- _.netId
d_netId_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_566 ~v0 = du_netId_566
du_netId_566 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_566
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_180
-- _.txOutHash
d_txOutHash_630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3162
      (coe v0)
-- _.Tx.body
d_body_1506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954
d_body_1506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
      (coe v0)
-- _.Tx.isValid
d_isValid_1508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  Bool
d_isValid_1508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3138
      (coe v0)
-- _.Tx.txAD
d_txAD_1510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  Maybe AgdaAny
d_txAD_1510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3140
      (coe v0)
-- _.Tx.txsize
d_txsize_1512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  Integer
d_txsize_1512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3136
      (coe v0)
-- _.Tx.wits
d_wits_1514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3100
d_wits_1514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3134
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_1616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_1616 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2376
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalP2Scripts
d_evalP2Scripts_1620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_1620 ~v0 v1 = du_evalP2Scripts_1620 v1
du_evalP2Scripts_1620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2416
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2086 v0 ~v1 = du_Dec'45'inInterval_2086 v0
du_Dec'45'inInterval_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2744
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2090 ~v0 ~v1 = du_HasCast'45'UTxOState_2090
du_HasCast'45'UTxOState_2090 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2090
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOState_2194
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2120 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2122 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2130 v0 ~v1 = du_balance_2130 v0
du_balance_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2212
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2134 v0 ~v1 = du_cbalance_2134 v0
du_cbalance_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2218
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.collateralCheck
d_collateralCheck_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_2144 = erased
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  AgdaAny
d_consumed_2146 v0 ~v1 = du_consumed_2146 v0
du_consumed_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  AgdaAny
du_consumed_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_2948
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  Integer
d_depositRefunds_2150 v0 ~v1 = du_depositRefunds_2150 v0
du_depositRefunds_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  Integer
du_depositRefunds_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_2932
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2158 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  Integer
d_minfee_2164 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2228
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  Integer
d_newDeposits_2166 v0 ~v1 = du_newDeposits_2166 v0
du_newDeposits_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  Integer
du_newDeposits_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_2940
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2170 ~v0 ~v1 = du_outs_2170
du_outs_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2170
  = coe MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2206
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  AgdaAny
d_produced_2172 v0 ~v1 = du_produced_2172 v0
du_produced_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  AgdaAny
du_produced_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_2956
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  Integer
d_refScriptsSize_2176 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2222
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2190 v0 ~v1 = du_updateDeposits_2190 v0
du_updateDeposits_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2616
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2196 v0 ~v1 = du_utxoEntrySize_2196 v0
du_utxoEntrySize_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2054
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.Emax
d_Emax_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  AgdaAny
d_Emax_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_382
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.a
d_a_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_a_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_354
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.a0
d_a0_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_386
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.b
d_b_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_b_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_356
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.ccMaxTermLength
d_ccMaxTermLength_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_ccMaxTermLength_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_398
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.ccMinSize
d_ccMinSize_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_ccMinSize_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_396
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.coinsPerUTxOByte
d_coinsPerUTxOByte_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_coinsPerUTxOByte_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_366
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.collateralPercentage
d_collateralPercentage_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_collateralPercentage_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_388
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.costmdls
d_costmdls_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  AgdaAny
d_costmdls_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_390
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.drepActivity
d_drepActivity_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  AgdaAny
d_drepActivity_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_406
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.drepDeposit
d_drepDeposit_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_drepDeposit_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_404
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.drepThresholds
d_drepThresholds_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202
d_drepThresholds_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_394
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.govActionDeposit
d_govActionDeposit_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_govActionDeposit_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_402
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.govActionLifetime
d_govActionLifetime_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_govActionLifetime_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_400
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.keyDeposit
d_keyDeposit_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_keyDeposit_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_358
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.maxBlockExUnits
d_maxBlockExUnits_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  AgdaAny
d_maxBlockExUnits_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_346
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.maxBlockSize
d_maxBlockSize_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_maxBlockSize_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_338
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.maxCollateralInputs
d_maxCollateralInputs_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_maxCollateralInputs_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_350
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.maxHeaderSize
d_maxHeaderSize_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_maxHeaderSize_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_342
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_maxRefScriptSizePerBlock_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_374
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_maxRefScriptSizePerTx_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_372
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.maxTxExUnits
d_maxTxExUnits_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  AgdaAny
d_maxTxExUnits_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_344
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.maxTxSize
d_maxTxSize_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_maxTxSize_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.maxValSize
d_maxValSize_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_maxValSize_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_348
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_370
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.minUTxOValue
d_minUTxOValue_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_minUTxOValue_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_380
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.monetaryExpansion
d_monetaryExpansion_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_362
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.nopt
d_nopt_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_nopt_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_384
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.poolDeposit
d_poolDeposit_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_poolDeposit_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_360
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.poolThresholds
d_poolThresholds_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_244
d_poolThresholds_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_392
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
d_pparams_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.prices
d_prices_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  AgdaAny
d_prices_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_368
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pv
d_pv_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_352
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.refScriptCostMultiplier
d_refScriptCostMultiplier_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_378
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.refScriptCostStride
d_refScriptCostStride_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_376
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  AgdaAny
d_slot_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2066 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  Integer
d_treasury_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2070
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasuryCut
d_treasuryCut_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_364
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
         (coe v0))
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2160
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  Integer
d_donations_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2162
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  Integer
d_fees_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2158 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2344 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2344
  = C_Scripts'45'Yes_2492 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2640 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2392 ~v0 ~v1 ~v2 v3 = du_txIns_2392 v3
du_txIns_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2992
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
d_pparams_2464 ~v0 v1 ~v2 ~v3 = du_pparams_2464 v1
du_pparams_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
du_pparams_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2488 ~v0 ~v1 v2 ~v3 = du_utxo_2488 v2
du_utxo_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateralInputs
d_collateralInputs_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2514 ~v0 ~v1 ~v2 v3
  = du_collateralInputs_2514 v3
du_collateralInputs_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_2996
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
d_pparams_2612 ~v0 v1 ~v2 ~v3 = du_pparams_2612 v1
du_pparams_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
du_pparams_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2636 ~v0 ~v1 v2 ~v3 = du_utxo_2636 v2
du_utxo_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2642 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2416
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2376
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3138
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3138
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2644 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2416
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2376
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3138
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3138
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2646 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2646
  = C_UTXO'45'inductive_2822 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954
d_body_2654 ~v0 ~v1 v2 = du_body_2654 v2
du_body_2654 ::
  T_GeneralizeTel_32993 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954
du_body_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
      (coe d_'46'generalizedField'45'tx_32985 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> Integer
d_txsize_2656 ~v0 ~v1 v2 = du_txsize_2656 v2
du_txsize_2656 :: T_GeneralizeTel_32993 -> Integer
du_txsize_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3136
      (coe d_'46'generalizedField'45'tx_32985 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.wits
d_wits_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3100
d_wits_2658 ~v0 ~v1 v2 = du_wits_2658 v2
du_wits_2658 ::
  T_GeneralizeTel_32993 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3100
du_wits_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3134
      (coe d_'46'generalizedField'45'tx_32985 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.currentTreasury
d_currentTreasury_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> Maybe Integer
d_currentTreasury_2664 ~v0 ~v1 v2 = du_currentTreasury_2664 v2
du_currentTreasury_2664 :: T_GeneralizeTel_32993 -> Maybe Integer
du_currentTreasury_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3020
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe d_'46'generalizedField'45'tx_32985 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> AgdaAny
d_mint_2666 ~v0 ~v1 v2 = du_mint_2666 v2
du_mint_2666 :: T_GeneralizeTel_32993 -> AgdaAny
du_mint_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3022
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe d_'46'generalizedField'45'tx_32985 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2668 ~v0 ~v1 v2 = du_refInputs_2668 v2
du_refInputs_2668 ::
  T_GeneralizeTel_32993 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2994
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe d_'46'generalizedField'45'tx_32985 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txFee
d_txFee_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> Integer
d_txFee_2680 ~v0 ~v1 v2 = du_txFee_2680 v2
du_txFee_2680 :: T_GeneralizeTel_32993 -> Integer
du_txFee_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3004
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe d_'46'generalizedField'45'tx_32985 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2688 ~v0 ~v1 v2 = du_txIns_2688 v2
du_txIns_2688 ::
  T_GeneralizeTel_32993 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2992
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe d_'46'generalizedField'45'tx_32985 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> Maybe AgdaAny
d_txNetworkId_2690 ~v0 ~v1 v2 = du_txNetworkId_2690 v2
du_txNetworkId_2690 :: T_GeneralizeTel_32993 -> Maybe AgdaAny
du_txNetworkId_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3018
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe d_'46'generalizedField'45'tx_32985 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txOuts
d_txOuts_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2692 ~v0 ~v1 v2 = du_txOuts_2692 v2
du_txOuts_2692 ::
  T_GeneralizeTel_32993 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2998
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe d_'46'generalizedField'45'tx_32985 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txVldt
d_txVldt_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2694 ~v0 ~v1 v2 = du_txVldt_2694 v2
du_txVldt_2694 ::
  T_GeneralizeTel_32993 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3008
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe d_'46'generalizedField'45'tx_32985 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txWdrls
d_txWdrls_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWdrls_2696 ~v0 ~v1 v2 = du_txWdrls_2696 v2
du_txWdrls_2696 ::
  T_GeneralizeTel_32993 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWdrls_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWdrls_3006
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe d_'46'generalizedField'45'tx_32985 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txrdmrs
d_txrdmrs_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2706 ~v0 ~v1 v2 = du_txrdmrs_2706 v2
du_txrdmrs_2706 ::
  T_GeneralizeTel_32993 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3116
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3134
         (coe d_'46'generalizedField'45'tx_32985 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
d_pparams_2772 ~v0 ~v1 v2 = du_pparams_2772 v2
du_pparams_2772 ::
  T_GeneralizeTel_32993 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
du_pparams_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
      (coe d_'46'generalizedField'45'Γ_32987 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> AgdaAny
d_slot_2782 ~v0 ~v1 v2 = du_slot_2782 v2
du_slot_2782 :: T_GeneralizeTel_32993 -> AgdaAny
du_slot_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2066
      (coe d_'46'generalizedField'45'Γ_32987 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> Integer
d_treasury_2784 ~v0 ~v1 v2 = du_treasury_2784 v2
du_treasury_2784 :: T_GeneralizeTel_32993 -> Integer
du_treasury_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2070
      (coe d_'46'generalizedField'45'Γ_32987 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_32993 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2796 ~v0 ~v1 v2 = du_utxo_2796 v2
du_utxo_2796 ::
  T_GeneralizeTel_32993 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156
      (coe d_'46'generalizedField'45's_32989 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2868 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1212
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1210
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2992
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                     (coe v2)))
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
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1212
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1210
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156
                             (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2992
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2994
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                        (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1212
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1210
                           (coe v0))))
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
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1212
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1210
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2992
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2994
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2744
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2066 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3008
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                        (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2228
                           (coe v0) (coe v1)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
                              (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156 (coe v4))
                           (coe v2))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3004
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
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
                                          erased
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1210
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1808
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_230
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1808
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3116
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3134
                                          (coe v2))))
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
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_212
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_176
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
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
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1212
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1210
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156
                                          (coe v4))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_2996
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                                             (coe v2))))))
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
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1258
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_2850
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_206
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2272
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_2918
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156
                                                (coe v4)))))
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
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1258
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_206
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2272
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_2918
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_2850
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3004
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_388
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
                                                (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_202
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2272
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_2918
                                                (coe v0) (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156
                                                   (coe v4))))
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1212
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1210
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_2996
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8709'_442
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_216
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2272
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_2948
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_2956
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_202
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2272
                                       (coe v0))
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3022
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                                          (coe v2))))
                                 (coe (0 :: Integer)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3136
                                       (coe v2))
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_340
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
                                          (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2222
                                          (coe v0) (coe v1)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156
                                             (coe v4))
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_372
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
                                             (coe v3))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_218
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2272
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_204
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2272
                                                        (coe v0))
                                                     (mulInt
                                                        (coe
                                                           addInt (coe (160 :: Integer))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2054
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_366
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
                                                              (coe v3)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3172
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v5)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                             (coe
                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3162
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2998
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_1986
                                                        v1
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3172
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_348
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2068
                                                           (coe v3)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3162
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2998
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
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
                                                                (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_96
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
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3162
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2998
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_282
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1228
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_180
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v5)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_298
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1228
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3162
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2998
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_282
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1228
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_net_104
                                                                 (coe v5))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_298
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1228
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWdrls_3006
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3018
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_298
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1228
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_282
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1228
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3020
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2070
                                                               (coe v3)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_32985 ::
  T_GeneralizeTel_32993 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120
d_'46'generalizedField'45'tx_32985 v0
  = case coe v0 of
      C_mkGeneralizeTel_32995 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_32987 ::
  T_GeneralizeTel_32993 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058
d_'46'generalizedField'45'Γ_32987 v0
  = case coe v0 of
      C_mkGeneralizeTel_32995 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_32989 ::
  T_GeneralizeTel_32993 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
d_'46'generalizedField'45's_32989 v0
  = case coe v0 of
      C_mkGeneralizeTel_32995 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_32991 ::
  T_GeneralizeTel_32993 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
d_'46'generalizedField'45's''_32991 v0
  = case coe v0 of
      C_mkGeneralizeTel_32995 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_32993 a0 a1 = ()
data T_GeneralizeTel_32993
  = C_mkGeneralizeTel_32995 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2058
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
