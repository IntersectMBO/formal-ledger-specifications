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
import qualified MAlonzo.Code.Class.Decidable.WithoutK
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Core.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _._≤ᵗ_
d__'8804''7511'__20 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__20 = erased
-- _.Dec-isVKey
d_Dec'45'isVKey_80 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_80 ~v0 = du_Dec'45'isVKey_80
du_Dec'45'isVKey_80 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_80
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- _.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_274 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RewardAddress_274 ~v0
  = du_HasNetworkId'45'RewardAddress_274
du_HasNetworkId'45'RewardAddress_274 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'RewardAddress_274
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_162
-- _.NetworkId
d_NetworkId_354 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_354 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1282
         (coe v0))
-- _.coin
d_coin_586 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_586 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2374
         (coe v0))
-- _.getValueʰ
d_getValue'688'_612 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_612 ~v0 = du_getValue'688'_612
du_getValue'688'_612 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_612
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.du_getValue'688'_3292
-- _.inject
d_inject_622 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_622 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2374
         (coe v0))
-- _.netId
d_netId_672 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_672 ~v0 = du_netId_672
du_netId_672 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_672
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- _.txOutHash
d_txOutHash_730 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_730 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txOutHash_3282
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_1784 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_1784 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2734
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalP2Scripts
d_evalP2Scripts_1788 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_1788 ~v0 v1 = du_evalP2Scripts_1788 v1
du_evalP2Scripts_1788 ::
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2774
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.Tx
d_Tx_1842 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo._.Tx.body
d_body_1878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184
d_body_1878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.Tx.isValid
d_isValid_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  Bool
d_isValid_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_2360
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.Tx.txAD
d_txAD_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  Maybe AgdaAny
d_txAD_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_2362
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.Tx.txsize
d_txsize_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  Integer
d_txsize_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_2358
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.Tx.wits
d_wits_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3254
d_wits_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2356
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_1936 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1936 v0 ~v1 = du_Dec'45'inInterval_1936 v0
du_Dec'45'inInterval_1936 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2984
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_1940 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_1940 ~v0 ~v1 = du_HasCast'45'UTxOState_1940
du_HasCast'45'UTxOState_1940 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_1940
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOState_2434
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_1972 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_1976 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_1986 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1986 v0 ~v1 = du_balance_1986 v0
du_balance_1986 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2452
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_1990 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1990 v0 ~v1 = du_cbalance_1990 v0
du_cbalance_1990 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2458
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.collateralCheck
d_collateralCheck_2000 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_2000 = erased
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2002 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  AgdaAny
d_consumed_2002 v0 ~v1 = du_consumed_2002 v0
du_consumed_2002 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  AgdaAny
du_consumed_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3188
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2006 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  Integer
d_depositRefunds_2006 v0 ~v1 = du_depositRefunds_2006 v0
du_depositRefunds_2006 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  Integer
du_depositRefunds_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_3172
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2014 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_2020 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  Integer
d_minfee_2020 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2468
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2022 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  Integer
d_newDeposits_2022 v0 ~v1 = du_newDeposits_2022 v0
du_newDeposits_2022 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  Integer
du_newDeposits_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_3180
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2026 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2026 ~v0 ~v1 = du_outs_2026
du_outs_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2026
  = coe MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2446
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2028 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  AgdaAny
d_produced_2028 v0 ~v1 = du_produced_2028 v0
du_produced_2028 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  AgdaAny
du_produced_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3196
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2032 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  Integer
d_refScriptsSize_2032 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2462
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2046 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2046 v0 ~v1 = du_updateDeposits_2046 v0
du_updateDeposits_2046 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2856
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2052 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2052 v0 ~v1 = du_utxoEntrySize_2052 v0
du_utxoEntrySize_2052 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2362
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  AgdaAny
d_slot_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2374 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  Integer
d_treasury_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2378
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2396
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  Integer
d_donations_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2398
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  Integer
d_fees_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2394 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2130 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2130
  = C_Scripts'45'Yes_2208 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2286 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2178 ::
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2178 ~v0 ~v1 ~v2 v3 = du_txIns_2178 v3
du_txIns_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2190 ::
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2190 ~v0 v1 ~v2 ~v3 = du_pparams_2190 v1
du_pparams_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
du_pparams_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2204 ::
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2204 ~v0 ~v1 v2 ~v3 = du_utxo_2204 v2
du_utxo_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateralInputs
d_collateralInputs_2230 ::
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2230 ~v0 ~v1 ~v2 v3
  = du_collateralInputs_2230 v3
du_collateralInputs_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_2226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2268 ::
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2268 ~v0 v1 ~v2 ~v3 = du_pparams_2268 v1
du_pparams_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
du_pparams_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2282 ::
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2282 ~v0 ~v1 v2 ~v3 = du_utxo_2282 v2
du_utxo_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2288 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2288 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2774
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2734
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_2360
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_2360
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2290 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2290 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2774
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2734
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_2360
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_2360
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2292 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2292
  = C_UTXO'45'inductive_2398 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2300 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184
d_body_2300 ~v0 ~v1 v2 = du_body_2300 v2
du_body_2300 ::
  T_GeneralizeTel_31797 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184
du_body_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
      (coe d_'46'generalizedField'45'tx_31789 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2302 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> Integer
d_txsize_2302 ~v0 ~v1 v2 = du_txsize_2302 v2
du_txsize_2302 :: T_GeneralizeTel_31797 -> Integer
du_txsize_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_2358
      (coe d_'46'generalizedField'45'tx_31789 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.wits
d_wits_2304 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3254
d_wits_2304 ~v0 ~v1 v2 = du_wits_2304 v2
du_wits_2304 ::
  T_GeneralizeTel_31797 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3254
du_wits_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2356
      (coe d_'46'generalizedField'45'tx_31789 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.currentTreasury
d_currentTreasury_2310 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> Maybe Integer
d_currentTreasury_2310 ~v0 ~v1 v2 = du_currentTreasury_2310 v2
du_currentTreasury_2310 :: T_GeneralizeTel_31797 -> Maybe Integer
du_currentTreasury_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_2250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe d_'46'generalizedField'45'tx_31789 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2312 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> AgdaAny
d_mint_2312 ~v0 ~v1 v2 = du_mint_2312 v2
du_mint_2312 :: T_GeneralizeTel_31797 -> AgdaAny
du_mint_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_2252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe d_'46'generalizedField'45'tx_31789 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2314 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2314 ~v0 ~v1 v2 = du_refInputs_2314 v2
du_refInputs_2314 ::
  T_GeneralizeTel_31797 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe d_'46'generalizedField'45'tx_31789 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txFee
d_txFee_2326 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> Integer
d_txFee_2326 ~v0 ~v1 v2 = du_txFee_2326 v2
du_txFee_2326 :: T_GeneralizeTel_31797 -> Integer
du_txFee_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_2234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe d_'46'generalizedField'45'tx_31789 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2334 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2334 ~v0 ~v1 v2 = du_txIns_2334 v2
du_txIns_2334 ::
  T_GeneralizeTel_31797 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe d_'46'generalizedField'45'tx_31789 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2336 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> Maybe AgdaAny
d_txNetworkId_2336 ~v0 ~v1 v2 = du_txNetworkId_2336 v2
du_txNetworkId_2336 :: T_GeneralizeTel_31797 -> Maybe AgdaAny
du_txNetworkId_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_2248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe d_'46'generalizedField'45'tx_31789 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txOuts
d_txOuts_2338 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2338 ~v0 ~v1 v2 = du_txOuts_2338 v2
du_txOuts_2338 ::
  T_GeneralizeTel_31797 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe d_'46'generalizedField'45'tx_31789 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txVldt
d_txVldt_2340 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2340 ~v0 ~v1 v2 = du_txVldt_2340 v2
du_txVldt_2340 ::
  T_GeneralizeTel_31797 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_2238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe d_'46'generalizedField'45'tx_31789 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txWithdrawals
d_txWithdrawals_2342 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2342 ~v0 ~v1 v2 = du_txWithdrawals_2342 v2
du_txWithdrawals_2342 ::
  T_GeneralizeTel_31797 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_2236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe d_'46'generalizedField'45'tx_31789 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txrdmrs
d_txrdmrs_2352 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2352 ~v0 ~v1 v2 = du_txrdmrs_2352 v2
du_txrdmrs_2352 ::
  T_GeneralizeTel_31797 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2352 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txrdmrs_3270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2356
         (coe d_'46'generalizedField'45'tx_31789 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2358 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2358 ~v0 ~v1 v2 = du_pparams_2358 v2
du_pparams_2358 ::
  T_GeneralizeTel_31797 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
du_pparams_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
      (coe d_'46'generalizedField'45'Γ_31791 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2360 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> AgdaAny
d_slot_2360 ~v0 ~v1 v2 = du_slot_2360 v2
du_slot_2360 :: T_GeneralizeTel_31797 -> AgdaAny
du_slot_2360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2374
      (coe d_'46'generalizedField'45'Γ_31791 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2362 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> Integer
d_treasury_2362 ~v0 ~v1 v2 = du_treasury_2362 v2
du_treasury_2362 :: T_GeneralizeTel_31797 -> Integer
du_treasury_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2378
      (coe d_'46'generalizedField'45'Γ_31791 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2372 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_GeneralizeTel_31797 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2372 ~v0 ~v1 v2 = du_utxo_2372 v2
du_utxo_2372 ::
  T_GeneralizeTel_31797 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392
      (coe d_'46'generalizedField'45's_31793 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2444 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2444 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1266
                        (coe v0))
                     (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1264
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2222
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                     (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_470
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1266
                             (coe v0))
                          (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1264
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_586
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392
                             (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2222
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2224
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                        (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1266
                           (coe v0))
                        (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1264
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__732
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1266
                              (coe v0))
                           (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1264
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2222
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2224
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_470
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2984
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2374 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_2238
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                        (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2468
                           (coe v0) (coe v1)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
                              (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392 (coe v4))
                           (coe v2))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_2234
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Tag_22
                                          (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1264
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_200
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_320
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1894
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'ExUnits_234
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_320
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1894
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txrdmrs_3270
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2356
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'8709'_470
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                              (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_range_588
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1266
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1264
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392
                                          (coe v4))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_2226
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                             (coe v2))))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1316
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3090
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_policies_218
                                          (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2374
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3158
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392
                                                (coe v4)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1316
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_policies_218
                                                  (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2374
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3158
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3090
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_2234
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_396
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
                                                (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_coin_214
                                             (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2374
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3158
                                                (coe v0) (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392
                                                   (coe v4))))
                                          (coe (100 :: Integer))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1266
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1264
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_2226
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8709'_470
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2374
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3188
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3196
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_coin_214
                                    (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2374
                                       (coe v0))
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_2252
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                          (coe v2))))
                                 (coe (0 :: Integer)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_2358
                                       (coe v2))
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_348
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
                                          (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2462
                                          (coe v0) (coe v1)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2392
                                             (coe v4))
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_380
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
                                             (coe v3))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
                                                  (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2374
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_inject_216
                                                     (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2374
                                                        (coe v0))
                                                     (mulInt
                                                        (coe
                                                           addInt (coe (160 :: Integer))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2362
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_374
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
                                                              (coe v3)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Transaction.du_getValue'688'_3292
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v5)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                             (coe
                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txOutHash_3282
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2228
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                                      (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Abstract.d_serSize_2282
                                                        v1
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.du_getValue'688'_3292
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_356
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2376
                                                           (coe v3)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txOutHash_3282
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2228
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.WithoutK.du_Dec'45''8846'All_42
                                                        (coe
                                                           (\ v6 ->
                                                              MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                        (coe
                                                           (\ v6 ->
                                                              coe
                                                                MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
                                                                   (coe v6))
                                                                (64 :: Integer)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v5))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_range_588
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txOutHash_3282
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2228
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                                            (coe v2))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1282
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v5)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1282
                                                                 (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_range_588
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txOutHash_3282
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2228
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                                               (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         (\ v5 ->
                                                            coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1282
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110
                                                                 (coe v5))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1282
                                                                    (coe v0)))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_2236
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_2248
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1282
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1282
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_2250
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2378
                                                               (coe v3)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_31789 ::
  T_GeneralizeTel_31797 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342
d_'46'generalizedField'45'tx_31789 v0
  = case coe v0 of
      C_mkGeneralizeTel_31799 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_31791 ::
  T_GeneralizeTel_31797 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366
d_'46'generalizedField'45'Γ_31791 v0
  = case coe v0 of
      C_mkGeneralizeTel_31799 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_31793 ::
  T_GeneralizeTel_31797 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382
d_'46'generalizedField'45's_31793 v0
  = case coe v0 of
      C_mkGeneralizeTel_31799 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_31795 ::
  T_GeneralizeTel_31797 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382
d_'46'generalizedField'45's''_31795 v0
  = case coe v0 of
      C_mkGeneralizeTel_31799 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_31797 a0 a1 = ()
data T_GeneralizeTel_31797
  = C_mkGeneralizeTel_31799 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2366
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382
