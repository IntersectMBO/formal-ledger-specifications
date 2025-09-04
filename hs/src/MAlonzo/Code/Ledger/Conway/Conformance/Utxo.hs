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
d_Dec'45'isVKey_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_78 ~v0 = du_Dec'45'isVKey_78
du_Dec'45'isVKey_78 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_78
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- _.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RwdAddr_280 ~v0 = du_HasNetworkId'45'RwdAddr_280
du_HasNetworkId'45'RwdAddr_280 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'RwdAddr_280
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RwdAddr_162
-- _.NetworkId
d_NetworkId_362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_362 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
         (coe v0))
-- _.Tx
d_Tx_518 a0 = ()
-- _.coin
d_coin_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
         (coe v0))
-- _.getValueʰ
d_getValue'688'_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_614 ~v0 = du_getValue'688'_614
du_getValue'688'_614 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_614
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3410
-- _.inject
d_inject_624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
         (coe v0))
-- _.netId
d_netId_676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_676 ~v0 = du_netId_676
du_netId_676 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_676
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- _.txOutHash
d_txOutHash_738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3400
      (coe v0)
-- _.Tx.body
d_body_1710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
d_body_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
      (coe v0)
-- _.Tx.isValid
d_isValid_1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Bool
d_isValid_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
      (coe v0)
-- _.Tx.txAD
d_txAD_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Maybe AgdaAny
d_txAD_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3374
      (coe v0)
-- _.Tx.txsize
d_txsize_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Integer
d_txsize_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3370
      (coe v0)
-- _.Tx.wits
d_wits_1718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332
d_wits_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_1822 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2622
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalP2Scripts
d_evalP2Scripts_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_1826 ~v0 v1 = du_evalP2Scripts_1826 v1
du_evalP2Scripts_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2662
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2330 v0 ~v1 = du_Dec'45'inInterval_2330 v0
du_Dec'45'inInterval_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2920
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2334 ~v0 ~v1 = du_HasCast'45'UTxOState_2334
du_HasCast'45'UTxOState_2334 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2334
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOState_2370
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2366 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2370 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2380 v0 ~v1 = du_balance_2380 v0
du_balance_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2388
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2384 v0 ~v1 = du_cbalance_2384 v0
du_cbalance_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2394
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.collateralCheck
d_collateralCheck_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_2394 = erased
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  AgdaAny
d_consumed_2396 v0 ~v1 = du_consumed_2396 v0
du_consumed_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  AgdaAny
du_consumed_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3124
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
d_depositRefunds_2400 v0 ~v1 = du_depositRefunds_2400 v0
du_depositRefunds_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
du_depositRefunds_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_3108
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2408 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Integer
d_minfee_2414 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2404
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
d_newDeposits_2416 v0 ~v1 = du_newDeposits_2416 v0
du_newDeposits_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
du_newDeposits_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_3116
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2420 ~v0 ~v1 = du_outs_2420
du_outs_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2420
  = coe MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2382
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  AgdaAny
d_produced_2422 v0 ~v1 = du_produced_2422 v0
du_produced_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  AgdaAny
du_produced_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3132
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Integer
d_refScriptsSize_2426 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2398
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2440 v0 ~v1 = du_updateDeposits_2440 v0
du_updateDeposits_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2792
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2446 v0 ~v1 = du_utxoEntrySize_2446 v0
du_utxoEntrySize_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2298
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  AgdaAny
d_slot_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2310 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  Integer
d_treasury_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2314
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2332
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  Integer
d_donations_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2334
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  Integer
d_fees_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2330 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2524 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2524
  = C_Scripts'45'Yes_2602 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2680 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2572 ~v0 ~v1 ~v2 v3 = du_txIns_2572 v3
du_txIns_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2584 ~v0 v1 ~v2 ~v3 = du_pparams_2584 v1
du_pparams_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2598 ~v0 ~v1 v2 ~v3 = du_utxo_2598 v2
du_utxo_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateralInputs
d_collateralInputs_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2624 ~v0 ~v1 ~v2 v3
  = du_collateralInputs_2624 v3
du_collateralInputs_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2662 ~v0 v1 ~v2 ~v3 = du_pparams_2662 v1
du_pparams_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2676 ~v0 ~v1 v2 ~v3 = du_utxo_2676 v2
du_utxo_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2682 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2662
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2622
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2684 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2662
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2622
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2686 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2686
  = C_UTXO'45'inductive_2792 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
d_body_2694 ~v0 ~v1 v2 = du_body_2694 v2
du_body_2694 ::
  T_GeneralizeTel_32223 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
du_body_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
      (coe d_'46'generalizedField'45'tx_32215 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> Integer
d_txsize_2696 ~v0 ~v1 v2 = du_txsize_2696 v2
du_txsize_2696 :: T_GeneralizeTel_32223 -> Integer
du_txsize_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3370
      (coe d_'46'generalizedField'45'tx_32215 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.wits
d_wits_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332
d_wits_2698 ~v0 ~v1 v2 = du_wits_2698 v2
du_wits_2698 ::
  T_GeneralizeTel_32223 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332
du_wits_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
      (coe d_'46'generalizedField'45'tx_32215 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.currentTreasury
d_currentTreasury_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> Maybe Integer
d_currentTreasury_2704 ~v0 ~v1 v2 = du_currentTreasury_2704 v2
du_currentTreasury_2704 :: T_GeneralizeTel_32223 -> Maybe Integer
du_currentTreasury_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32215 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> AgdaAny
d_mint_2706 ~v0 ~v1 v2 = du_mint_2706 v2
du_mint_2706 :: T_GeneralizeTel_32223 -> AgdaAny
du_mint_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32215 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2708 ~v0 ~v1 v2 = du_refInputs_2708 v2
du_refInputs_2708 ::
  T_GeneralizeTel_32223 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32215 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txFee
d_txFee_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> Integer
d_txFee_2720 ~v0 ~v1 v2 = du_txFee_2720 v2
du_txFee_2720 :: T_GeneralizeTel_32223 -> Integer
du_txFee_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32215 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2728 ~v0 ~v1 v2 = du_txIns_2728 v2
du_txIns_2728 ::
  T_GeneralizeTel_32223 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32215 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> Maybe AgdaAny
d_txNetworkId_2730 ~v0 ~v1 v2 = du_txNetworkId_2730 v2
du_txNetworkId_2730 :: T_GeneralizeTel_32223 -> Maybe AgdaAny
du_txNetworkId_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32215 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txOuts
d_txOuts_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2732 ~v0 ~v1 v2 = du_txOuts_2732 v2
du_txOuts_2732 ::
  T_GeneralizeTel_32223 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32215 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txVldt
d_txVldt_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2734 ~v0 ~v1 v2 = du_txVldt_2734 v2
du_txVldt_2734 ::
  T_GeneralizeTel_32223 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32215 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txWithdrawals
d_txWithdrawals_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2736 ~v0 ~v1 v2 = du_txWithdrawals_2736 v2
du_txWithdrawals_2736 ::
  T_GeneralizeTel_32223 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32215 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txrdmrs
d_txrdmrs_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2746 ~v0 ~v1 v2 = du_txrdmrs_2746 v2
du_txrdmrs_2746 ::
  T_GeneralizeTel_32223 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3348
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
         (coe d_'46'generalizedField'45'tx_32215 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2752 ~v0 ~v1 v2 = du_pparams_2752 v2
du_pparams_2752 ::
  T_GeneralizeTel_32223 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
      (coe d_'46'generalizedField'45'Γ_32217 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> AgdaAny
d_slot_2754 ~v0 ~v1 v2 = du_slot_2754 v2
du_slot_2754 :: T_GeneralizeTel_32223 -> AgdaAny
du_slot_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2310
      (coe d_'46'generalizedField'45'Γ_32217 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> Integer
d_treasury_2756 ~v0 ~v1 v2 = du_treasury_2756 v2
du_treasury_2756 :: T_GeneralizeTel_32223 -> Integer
du_treasury_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2314
      (coe d_'46'generalizedField'45'Γ_32217 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32223 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2766 ~v0 ~v1 v2 = du_utxo_2766 v2
du_utxo_2766 ::
  T_GeneralizeTel_32223 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
      (coe d_'46'generalizedField'45's_32219 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2838 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1170
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                     (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_444
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_562
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                             (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__682
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3214
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                        (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1170
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__706
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3214
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_444
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2920
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2310 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3228
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                        (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2404
                           (coe v0) (coe v1)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
                              (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328 (coe v4))
                           (coe v2))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3224
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
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
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1170
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_232
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3348
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'8709'_444
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                              (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
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
                                    MAlonzo.Code.Class.IsSet.du_range_564
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                          (coe v4))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3216
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                             (coe v2))))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3026
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3094
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                                (coe v4)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3094
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3026
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_392
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
                                                (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3094
                                                (coe v0) (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                                   (coe v4))))
                                          (coe (100 :: Integer))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1170
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3216
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8709'_444
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3124
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3132
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                       (coe v0))
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3242
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                          (coe v2))))
                                 (coe (0 :: Integer)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3370
                                       (coe v2))
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_344
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
                                          (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2398
                                          (coe v0) (coe v1)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                             (coe v4))
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_376
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
                                             (coe v3))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                                        (coe v0))
                                                     (mulInt
                                                        (coe
                                                           addInt (coe (160 :: Integer))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2298
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_370
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
                                                              (coe v3)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3410
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v5)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                             (coe
                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3400
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                      (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2230
                                                        v1
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3410
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_352
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
                                                           (coe v3)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3400
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
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
                                                   MAlonzo.Code.Class.IsSet.du_range_564
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3400
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                            (coe v2))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v5)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                 (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_range_564
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3400
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                               (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         (\ v5 ->
                                                            coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110
                                                                 (coe v5))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                    (coe v0)))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3226
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3238
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3240
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2314
                                                               (coe v3)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_32215 ::
  T_GeneralizeTel_32223 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
d_'46'generalizedField'45'tx_32215 v0
  = case coe v0 of
      C_mkGeneralizeTel_32225 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_32217 ::
  T_GeneralizeTel_32223 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302
d_'46'generalizedField'45'Γ_32217 v0
  = case coe v0 of
      C_mkGeneralizeTel_32225 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_32219 ::
  T_GeneralizeTel_32223 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
d_'46'generalizedField'45's_32219 v0
  = case coe v0 of
      C_mkGeneralizeTel_32225 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_32221 ::
  T_GeneralizeTel_32223 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
d_'46'generalizedField'45's''_32221 v0
  = case coe v0 of
      C_mkGeneralizeTel_32225 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_32223 a0 a1 = ()
data T_GeneralizeTel_32223
  = C_mkGeneralizeTel_32225 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
