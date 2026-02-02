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

module MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Deposits where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.PParams
d_PParams_436 a0 = ()
-- _.Tx
d_Tx_584 a0 = ()
-- _.PParams.Emax
d_Emax_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_Emax_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_396
      (coe v0)
-- _.PParams.a
d_a_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_a_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_368 (coe v0)
-- _.PParams.a0
d_a0_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_400 (coe v0)
-- _.PParams.b
d_b_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_b_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_370 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMaxTermLength_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_412
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMinSize_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_410
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_coinsPerUTxOByte_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_380
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_collateralPercentage_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_402
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_404
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_drepActivity_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_420
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_drepDeposit_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_418
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210
d_drepThresholds_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_408
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionDeposit_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionLifetime_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_414
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_keyDeposit_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxBlockExUnits_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_360
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxBlockSize_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_352
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1394 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxCollateralInputs_1394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_364
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1396 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxHeaderSize_1396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_356
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerBlock_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_388
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1400 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerTx_1400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_386
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1402 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxTxExUnits_1402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_358
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1404 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxTxSize_1404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_354
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1406 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxValSize_1406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_362
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1408 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_384
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1410 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_minUTxOValue_1410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_394
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_376
      (coe v0)
-- _.PParams.nopt
d_nopt_1414 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_nopt_1414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_398
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_poolDeposit_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1418 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254
d_poolThresholds_1418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_406
      (coe v0)
-- _.PParams.prices
d_prices_1420 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_prices_1420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_382
      (coe v0)
-- _.PParams.pv
d_pv_1422 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_366 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_392
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_390
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_378
      (coe v0)
-- _.Tx.body
d_body_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3334
d_body_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
      (coe v0)
-- _.Tx.isValid
d_isValid_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  Bool
d_isValid_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3532
      (coe v0)
-- _.Tx.txAD
d_txAD_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  Maybe AgdaAny
d_txAD_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3534
      (coe v0)
-- _.Tx.txsize
d_txsize_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  Integer
d_txsize_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3530
      (coe v0)
-- _.Tx.wits
d_wits_1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3492
d_wits_1860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3528
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.LState
d_LState_2002 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.LState.certState
d_certState_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418
d_certState_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2872
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.LState.govSt
d_govSt_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2870
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.LState.utxoSt
d_utxoSt_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420
d_utxoSt_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2868
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.ValidCertDeposits
d_ValidCertDeposits_2100 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.updateCertDeposits
d_updateCertDeposits_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2162 v0 ~v1 = du_updateCertDeposits_2162 v0
du_updateCertDeposits_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateCertDeposits_2804
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.updateDeposits
d_updateDeposits_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2164 v0 ~v1 = du_updateDeposits_2164 v0
du_updateDeposits_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2894
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.updateProposalDeposits
d_updateProposalDeposits_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2166 v0 ~v1
  = du_updateProposalDeposits_2166 v0
du_updateProposalDeposits_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.DCert
d_DCert_2280 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.DepositPurpose
d_DepositPurpose_2302 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.Deposits
d_Deposits_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  ()
d_Deposits_2304 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits.C._.updateCertDeposit
d_updateCertDeposit_3052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_3052 v0 ~v1 = du_updateCertDeposit_3052 v0
du_updateCertDeposit_3052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposit_3052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*
d_CertDeps'42'_3254 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits._.ValidDepsᵈ
d_ValidDeps'7496'_3288 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits._.ValidDepsᵍ
d_ValidDeps'7501'_3290 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits._.updateCertDeps*
d_updateCertDeps'42'_3332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_3044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_3044
d_updateCertDeps'42'_3332 v0 ~v1 = du_updateCertDeps'42'_3332 v0
du_updateCertDeps'42'_3332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_3044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_3044
du_updateCertDeps'42'_3332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.du_updateCertDeps'42'_3174
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*.depsᵈ
d_deps'7496'_3338 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_3044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deps'7496'_3338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.d_deps'7496'_3058
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*.depsᵍ
d_deps'7501'_3340 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_3044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deps'7501'_3340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.d_deps'7501'_3060
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*.validᵈ
d_valid'7496'_3342 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_3044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2878
d_valid'7496'_3342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.d_valid'7496'_3062
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*.validᵍ
d_valid'7501'_3344 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_3044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2962
d_valid'7501'_3344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.d_valid'7501'_3064
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_3394 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits._.IsCommutativeSemigroup.comm
d_comm_3402 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_3402 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_3412 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_3412 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_576 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.Coin-Semigroup
d_Coin'45'Semigroup_3430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_Coin'45'Semigroup_3430 ~v0 = du_Coin'45'Semigroup_3430
du_Coin'45'Semigroup_3430 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_Coin'45'Semigroup_3430
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'isCommutativeSemigroup_3462
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateDDep
d_updateDDep_3432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDDep_3432 v0 ~v1 v2 v3 v4 = du_updateDDep_3432 v0 v2 v3 v4
du_updateDDep_3432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDDep_3432 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1316 v4 v5 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1318 v4 v5
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1330 v4 v5
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      _ -> coe v3
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateDDeps
d_updateDDeps_3458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDDeps_3458 v0 ~v1 v2 v3 v4
  = du_updateDDeps_3458 v0 v2 v3 v4
du_updateDDeps_3458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDDeps_3458 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             du_updateDDeps_3458 (coe v0) (coe v1) (coe v5)
             (coe du_updateDDep_3432 (coe v0) (coe v1) (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateGDep
d_updateGDep_3472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateGDep_3472 v0 ~v1 v2 v3 v4 = du_updateGDep_3472 v0 v2 v3 v4
du_updateGDep_3472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateGDep_3472 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1324 v4 v5 v6
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1326 v4 v5
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      _ -> coe v3
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateGDeps
d_updateGDeps_3492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateGDeps_3492 v0 ~v1 v2 v3 v4
  = du_updateGDeps_3492 v0 v2 v3 v4
du_updateGDeps_3492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateGDeps_3492 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             du_updateGDeps_3492 (coe v0) (coe v1) (coe v5)
             (coe du_updateGDep_3472 (coe v0) (coe v1) (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateLedgerDeps
d_updateLedgerDeps_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateLedgerDeps_3506 v0 ~v1 v2 v3 v4
  = du_updateLedgerDeps_3506 v0 v2 v3 v4
du_updateLedgerDeps_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateLedgerDeps_3506 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_updateDDeps_3458 (coe v0) (coe v1) (coe du_certs_3522 (coe v2))
                (coe v4))
             (coe
                du_updateGDeps_3492 (coe v0) (coe v1) (coe du_certs_3522 (coe v2))
                (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits._.certs
d_certs_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
d_certs_3522 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_certs_3522 v3
du_certs_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
du_certs_3522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits.DPurpose
d_DPurpose_3524 a0 a1 a2 = ()
data T_DPurpose_3524 = C_CredentialDeposit_3528
-- Ledger.Conway.Conformance.Equivalence.Deposits.GPurpose
d_GPurpose_3530 a0 a1 a2 = ()
data T_GPurpose_3530 = C_DRepDeposit_3534
-- Ledger.Conway.Conformance.Equivalence.Deposits.Dec-DPurpose?
d_Dec'45'DPurpose'63'_3538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1146 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'DPurpose'63'_3538 ~v0 ~v1 v2
  = du_Dec'45'DPurpose'63'_3538 v2
du_Dec'45'DPurpose'63'_3538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1146 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'DPurpose'63'_3538 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_CredentialDeposit_3528)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.Dec-GPurpose?
d_Dec'45'GPurpose'63'_3542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1146 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'GPurpose'63'_3542 ~v0 ~v1 v2
  = du_Dec'45'GPurpose'63'_3542 v2
du_Dec'45'GPurpose'63'_3542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1146 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'GPurpose'63'_3542 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_DRepDeposit_3534)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.certDDeps
d_certDDeps_3544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDDeps_3544 ~v0 ~v1 v2 = du_certDDeps_3544 v2
du_certDDeps_3544 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDDeps_3544 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v1 ->
         coe
           du_Dec'45'DPurpose'63'_3538
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Deposits.certGDeps
d_certGDeps_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certGDeps_3552 ~v0 ~v1 v2 = du_certGDeps_3552 v2
du_certGDeps_3552 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certGDeps_3552 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v1 ->
         coe
           du_Dec'45'GPurpose'63'_3542
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateCertDeposit
d_cong'45'updateCertDeposit_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateCertDeposit_3568 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateCertDeposit_3568 v0 v2 v3 v4 v5 v6
du_cong'45'updateCertDeposit_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateCertDeposit_3568 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1316 v6 v7 v8 v9
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45'r_3822
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                   (coe v0)))
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Axiom.Set.d_listing_244
                      (MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      erased
                      (coe
                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                               (coe v6))
                            (coe v9)))))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                            (coe v6))
                         (coe v9)))))
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1318 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_restrict'45'cong_4054
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                   (coe v0)))
             (coe v3) (coe v4)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                (MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                   (coe v6)))
             (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1320 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45'r_3822
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                   (coe v0)))
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Axiom.Set.d_listing_244
                      (MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      erased
                      (coe
                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                               (coe v6))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                               (coe v1))))))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                            (coe v6))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                            (coe v1))))))
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1322 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1324 v6 v7 v8
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45'r_3822
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                   (coe v0)))
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Axiom.Set.d_listing_244
                      (MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      erased
                      (coe
                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                               (coe v6))
                            (coe v7)))))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                            (coe v6))
                         (coe v7)))))
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1326 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_restrict'45'cong_4054
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                   (coe v0)))
             (coe v3) (coe v4)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                (MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                   (coe v6)))
             (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1328 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1330 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45'r_3822
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                   (coe v0)))
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Axiom.Set.d_listing_244
                      (MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      erased
                      (coe
                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                               (coe v6))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                               (coe v1))))))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                            (coe v6))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                            (coe v1))))))
             (coe v3) (coe v4) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-certDDeps
d_cong'45'certDDeps_3652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'certDDeps_3652 ~v0 ~v1 = du_cong'45'certDDeps_3652
du_cong'45'certDDeps_3652 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'certDDeps_3652
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_cong'45'filter'7504'_4190
      (coe du_Dec'45'DPurpose'63'_3538)
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-certGDeps
d_cong'45'certGDeps_3658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'certGDeps_3658 ~v0 ~v1 = du_cong'45'certGDeps_3658
du_cong'45'certGDeps_3658 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'certGDeps_3658
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_cong'45'filter'7504'_4190
      (coe du_Dec'45'GPurpose'63'_3542)
-- Ledger.Conway.Conformance.Equivalence.Deposits.castValidDepsᵈ
d_castValidDeps'7496'_3668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2878 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2878
d_castValidDeps'7496'_3668 v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_castValidDeps'7496'_3668 v0 v2 v3 v4 v5 v6 v7
du_castValidDeps'7496'_3668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2878 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2878
du_castValidDeps'7496'_3668 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_'91''93'_2884
        -> coe v6
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2896 v12
        -> case coe v4 of
             (:) v13 v14
               -> case coe v13 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1316 v15 v16 v17 v18
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2896
                           (coe
                              du_castValidDeps'7496'_3668 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_replacement_236
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (\ v19 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v19))
                                            (coe
                                               MAlonzo.Code.Data.These.Base.du_fold_92
                                               (coe (\ v20 -> v20)) (coe (\ v20 -> v20))
                                               (coe addInt)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                        (coe v0)))
                                                  (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                           (coe v15))
                                                        (coe v18)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v19))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v19)))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                         (coe v15))
                                                      (coe v18))))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                    (coe v0))
                                 (coe v1) (coe v13) (coe v3))
                              (coe v14)
                              (coe
                                 du_cong'45'updateCertDeposit_3568 (coe v0) (coe v1) (coe v13)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2906 v9 v11 v12 v13
        -> case coe v4 of
             (:) v14 v15
               -> case coe v14 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1318 v16 v17
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2906
                           v9
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                    (coe v16))
                                 (coe v9))
                              v11)
                           v12
                           (coe
                              du_castValidDeps'7496'_3668 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                          (MAlonzo.Code.Axiom.Set.d_sp_188
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                          erased erased erased
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                             (MAlonzo.Code.Axiom.Set.d_sp_188
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                             erased erased
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased
                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                      (coe v16)))))
                                          (\ v18 ->
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v18)))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                    (coe v0))
                                 (coe v1) (coe v14) (coe v3))
                              (coe v15)
                              (coe
                                 du_cong'45'updateCertDeposit_3568 (coe v0) (coe v1) (coe v14)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v13))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2916 v11
        -> case coe v4 of
             (:) v12 v13
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2916
                    (coe
                       du_castValidDeps'7496'_3668 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v13) (coe v5) (coe v11))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2924 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2924
                    (coe
                       du_castValidDeps'7496'_3668 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2932 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2932
                    (coe
                       du_castValidDeps'7496'_3668 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2940 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2940
                    (coe
                       du_castValidDeps'7496'_3668 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2948 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2948
                    (coe
                       du_castValidDeps'7496'_3668 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2956 v10
        -> case coe v4 of
             (:) v11 v12
               -> case coe v11 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1330 v13 v14
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2956
                           (coe
                              du_castValidDeps'7496'_3668 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_replacement_236
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (\ v15 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v15))
                                            (coe
                                               MAlonzo.Code.Data.These.Base.du_fold_92
                                               (coe (\ v16 -> v16)) (coe (\ v16 -> v16))
                                               (coe addInt)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                        (coe v0)))
                                                  (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                           (coe v13))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                           (coe v1))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v15))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v15)))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                         (coe v13))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                         (coe v1)))))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                    (coe v0))
                                 (coe v1) (coe v11) (coe v3))
                              (coe v12)
                              (coe
                                 du_cong'45'updateCertDeposit_3568 (coe v0) (coe v1) (coe v11)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.castValidDepsᵍ
d_castValidDeps'7501'_3732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2962 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2962
d_castValidDeps'7501'_3732 v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_castValidDeps'7501'_3732 v0 v2 v3 v4 v5 v6 v7
du_castValidDeps'7501'_3732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2962 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2962
du_castValidDeps'7501'_3732 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_'91''93'_2968
        -> coe v6
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2978 v11
        -> case coe v4 of
             (:) v12 v13
               -> case coe v12 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1324 v14 v15 v16
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2978
                           (coe
                              du_castValidDeps'7501'_3732 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_replacement_236
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (\ v17 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v17))
                                            (coe
                                               MAlonzo.Code.Data.These.Base.du_fold_92
                                               (coe (\ v18 -> v18)) (coe (\ v18 -> v18))
                                               (coe addInt)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                        (coe v0)))
                                                  (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                           (coe v14))
                                                        (coe v15)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v17))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v17)))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                         (coe v14))
                                                      (coe v15))))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                    (coe v0))
                                 (coe v1) (coe v12) (coe v3))
                              (coe v13)
                              (coe
                                 du_cong'45'updateCertDeposit_3568 (coe v0) (coe v1) (coe v12)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2986 v10 v11
        -> case coe v4 of
             (:) v12 v13
               -> case coe v12 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1326 v14 v15
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2986
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                    (coe v14))
                                 (coe v15))
                              v10)
                           (coe
                              du_castValidDeps'7501'_3732 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                          (MAlonzo.Code.Axiom.Set.d_sp_188
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                          erased erased erased
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                             (MAlonzo.Code.Axiom.Set.d_sp_188
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                             erased erased
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased
                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                      (coe v14)))))
                                          (\ v16 ->
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v16)))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                    (coe v0))
                                 (coe v1) (coe v12) (coe v3))
                              (coe v13)
                              (coe
                                 du_cong'45'updateCertDeposit_3568 (coe v0) (coe v1) (coe v12)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2998 v12
        -> case coe v4 of
             (:) v13 v14
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2998
                    (coe
                       du_castValidDeps'7501'_3732 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v14) (coe v5) (coe v12))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_3006 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_3006
                    (coe
                       du_castValidDeps'7501'_3732 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_3014 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_3014
                    (coe
                       du_castValidDeps'7501'_3732 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_3022 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_3022
                    (coe
                       du_castValidDeps'7501'_3732 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_3030 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_3030
                    (coe
                       du_castValidDeps'7501'_3732 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_3038 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_3038
                    (coe
                       du_castValidDeps'7501'_3732 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.validDDeps
d_validDDeps_3788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_ValidCertDeposits_2544 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2878
d_validDDeps_3788 v0 ~v1 v2 v3 v4 v5
  = du_validDDeps_3788 v0 v2 v3 v4 v5
du_validDDeps_3788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_ValidCertDeposits_2544 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2878
du_validDDeps_3788 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'91''93'_2550
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_'91''93'_2884
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_delegate_2562 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v11 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1316 v13 v14 v15 v16
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2896
                           (coe
                              du_castValidDeps'7496'_3668 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                      (coe v13))
                                                   (coe v16)))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v17 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3538
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v17)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                    (coe v0))
                                 (coe v1) (coe v11) (coe du_certDDeps_3544 (coe v3)))
                              (coe v12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'DPurpose'63'_3538)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                    (coe v13))
                                 (coe v3) (coe v16) (coe C_CredentialDeposit_3528))
                              (coe
                                 du_validDDeps_3788 (coe v0) (coe v1) (coe v12)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_236
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v17 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v17))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v18 -> v18)) (coe (\ v18 -> v18))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                              (coe v13))
                                                           (coe v16)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v17))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v17)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                            (coe v13))
                                                         (coe v16))))))))
                                    erased)
                                 (coe v10)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_regpool_2570 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1320 v11 v12
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2932
                           (coe
                              du_castValidDeps'7496'_3668 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                                      (coe v11))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v13 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3538
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v13)))))))
                                 erased)
                              (coe du_certDDeps_3544 (coe v3)) (coe v10)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'DPurpose'63'_3538)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                    (coe v11))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                    (coe v1))
                                 (coe v3))
                              (coe
                                 du_validDDeps_3788 (coe v0) (coe v1) (coe v10)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_236
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v13 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v13))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v14 -> v14)) (coe (\ v14 -> v14))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                                              (coe v1))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v13))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v13)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                                            (coe v11))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                                            (coe v1)))))))))
                                    erased)
                                 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_regdrep_2580 v9
        -> case coe v2 of
             (:) v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1324 v12 v13 v14
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2916
                           (coe
                              du_castValidDeps'7496'_3668 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                      (coe v12))
                                                   (coe v13)))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v15 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3538
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v15)))))))
                                 erased)
                              (coe du_certDDeps_3544 (coe v3)) (coe v11)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'DPurpose'63'_3538)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                    (coe v12))
                                 (coe v13) (coe v3))
                              (coe
                                 du_validDDeps_3788 (coe v0) (coe v1) (coe v11)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_236
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v15 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v15))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v16 -> v16)) (coe (\ v16 -> v16))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                              (coe v12))
                                                           (coe v13)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v15))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v15)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                            (coe v12))
                                                         (coe v13))))))))
                                    erased)
                                 (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_reg_2588 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1330 v11 v12
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2956
                           (coe
                              du_castValidDeps'7496'_3668 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                      (coe v11))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v13 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3538
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v13)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                    (coe v0))
                                 (coe v1) (coe v9) (coe du_certDDeps_3544 (coe v3)))
                              (coe v10)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'DPurpose'63'_3538)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                    (coe v11))
                                 (coe v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                    (coe v1))
                                 (coe C_CredentialDeposit_3528))
                              (coe
                                 du_validDDeps_3788 (coe v0) (coe v1) (coe v10)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_236
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v13 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v13))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v14 -> v14)) (coe (\ v14 -> v14))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                              (coe v1))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v13))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v13)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                            (coe v11))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                            (coe v1)))))))))
                                    erased)
                                 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_dereg_2598 v7 v9 v10 v11
        -> case coe v2 of
             (:) v12 v13
               -> case coe v12 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1318 v14 v15
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2906
                           v7
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45''8712'_4182
                              (coe du_Dec'45'DPurpose'63'_3538) v3
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                 (coe v14))
                              v7 (coe C_CredentialDeposit_3528) v9)
                           v10
                           (coe
                              du_castValidDeps'7496'_3668 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (let v16
                                                 = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                        (coe v0)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v16)
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                      (coe v14))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v16 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3538
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v16)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                    (coe v0))
                                 (coe v1) (coe v12) (coe du_certDDeps_3544 (coe v3)))
                              (coe v13)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                       (coe v0)))
                                 (coe du_Dec'45'DPurpose'63'_3538) (coe v3)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    erased
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                       (coe v14))))
                              (coe
                                 du_validDDeps_3788 (coe v0) (coe v1) (coe v13)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_specification_214
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v3))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                             (MAlonzo.Code.Axiom.Set.d_sp_188
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                             erased erased erased
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                (MAlonzo.Code.Axiom.Set.d_sp_188
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      erased
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                         (coe v14)))))
                                             (\ v16 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v16)))))
                                    erased)
                                 (coe v11)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_deregdrep_2606 v8 v9
        -> case coe v2 of
             (:) v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1326 v12 v13
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2924
                           (coe
                              du_castValidDeps'7496'_3668 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (let v14
                                                 = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                        (coe v0)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v14)
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                      (coe v12))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v14 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3538
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v14)))))))
                                 erased)
                              (coe du_certDDeps_3544 (coe v3)) (coe v11)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                       (coe v0)))
                                 (coe du_Dec'45'DPurpose'63'_3538)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                    (coe v12))
                                 (coe v3))
                              (coe
                                 du_validDDeps_3788 (coe v0) (coe v1) (coe v11)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_specification_214
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v3))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                             (MAlonzo.Code.Axiom.Set.d_sp_188
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                             erased erased erased
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                (MAlonzo.Code.Axiom.Set.d_sp_188
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                         (coe v12)))))
                                             (\ v14 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v14)))))
                                    erased)
                                 (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_ccreghot_2614 v8
        -> case coe v2 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2948
                    (coe
                       du_validDDeps_3788 (coe v0) (coe v1) (coe v10) (coe v3) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_retirepool_2622 v8
        -> case coe v2 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2940
                    (coe
                       du_validDDeps_3788 (coe v0) (coe v1) (coe v10) (coe v3) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.validGDeps
d_validGDeps_3822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_ValidCertDeposits_2544 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2962
d_validGDeps_3822 v0 ~v1 v2 v3 v4 v5
  = du_validGDeps_3822 v0 v2 v3 v4 v5
du_validGDeps_3822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_ValidCertDeposits_2544 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2962
du_validGDeps_3822 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'91''93'_2550
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_'91''93'_2968
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_delegate_2562 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v11 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1316 v13 v14 v15 v16
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2998
                           (coe
                              du_castValidDeps'7501'_3732 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                      (coe v13))
                                                   (coe v16)))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v17 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3542
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v17)))))))
                                 erased)
                              (coe du_certGDeps_3552 (coe v3)) (coe v12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'GPurpose'63'_3542)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                    (coe v13))
                                 (coe v16) (coe v3))
                              (coe
                                 du_validGDeps_3822 (coe v0) (coe v1) (coe v12)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_236
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v17 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v17))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v18 -> v18)) (coe (\ v18 -> v18))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                              (coe v13))
                                                           (coe v16)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v17))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v17)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                            (coe v13))
                                                         (coe v16))))))))
                                    erased)
                                 (coe v10)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_regpool_2570 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1320 v11 v12
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_3014
                           (coe
                              du_castValidDeps'7501'_3732 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                                      (coe v11))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v13 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3542
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v13)))))))
                                 erased)
                              (coe du_certGDeps_3552 (coe v3)) (coe v10)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'GPurpose'63'_3542)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                    (coe v11))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                    (coe v1))
                                 (coe v3))
                              (coe
                                 du_validGDeps_3822 (coe v0) (coe v1) (coe v10)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_236
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v13 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v13))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v14 -> v14)) (coe (\ v14 -> v14))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                                              (coe v1))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v13))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v13)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                                            (coe v11))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                                            (coe v1)))))))))
                                    erased)
                                 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_regdrep_2580 v9
        -> case coe v2 of
             (:) v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1324 v12 v13 v14
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2978
                           (coe
                              du_castValidDeps'7501'_3732 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                      (coe v12))
                                                   (coe v13)))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v15 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3542
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v15)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                    (coe v0))
                                 (coe v1) (coe v10) (coe du_certGDeps_3552 (coe v3)))
                              (coe v11)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'GPurpose'63'_3542)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                    (coe v12))
                                 (coe v3) (coe v13) (coe C_DRepDeposit_3534))
                              (coe
                                 du_validGDeps_3822 (coe v0) (coe v1) (coe v11)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_236
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v15 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v15))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v16 -> v16)) (coe (\ v16 -> v16))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                              (coe v12))
                                                           (coe v13)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v15))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v15)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                            (coe v12))
                                                         (coe v13))))))))
                                    erased)
                                 (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_reg_2588 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1330 v11 v12
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_3038
                           (coe
                              du_castValidDeps'7501'_3732 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                      (coe v11))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v13 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3542
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v13)))))))
                                 erased)
                              (coe du_certGDeps_3552 (coe v3)) (coe v10)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'GPurpose'63'_3542)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                    (coe v11))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                    (coe v1))
                                 (coe v3))
                              (coe
                                 du_validGDeps_3822 (coe v0) (coe v1) (coe v10)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_236
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v13 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v13))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v14 -> v14)) (coe (\ v14 -> v14))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                              (coe v1))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v13))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v13)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                            (coe v11))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                            (coe v1)))))))))
                                    erased)
                                 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_dereg_2598 v7 v9 v10 v11
        -> case coe v2 of
             (:) v12 v13
               -> case coe v12 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1318 v14 v15
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_3006
                           (coe
                              du_castValidDeps'7501'_3732 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (let v16
                                                 = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                        (coe v0)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v16)
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                      (coe v14))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v16 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3542
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v16)))))))
                                 erased)
                              (coe du_certGDeps_3552 (coe v3)) (coe v13)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                       (coe v0)))
                                 (coe du_Dec'45'GPurpose'63'_3542)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                    (coe v14))
                                 (coe v3))
                              (coe
                                 du_validGDeps_3822 (coe v0) (coe v1) (coe v13)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_specification_214
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v3))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                             (MAlonzo.Code.Axiom.Set.d_sp_188
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                             erased erased erased
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                (MAlonzo.Code.Axiom.Set.d_sp_188
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                         (coe v14)))))
                                             (\ v16 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v16)))))
                                    erased)
                                 (coe v11)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_deregdrep_2606 v8 v9
        -> case coe v2 of
             (:) v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1326 v12 v13
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2986
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45''8712'_4182
                              (coe du_Dec'45'GPurpose'63'_3542) v3
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                 (coe v12))
                              v13 (coe C_DRepDeposit_3534) v8)
                           (coe
                              du_castValidDeps'7501'_3732 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_214
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (let v14
                                                 = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                        (coe v0)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v14)
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                      (coe v12))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v14 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3542
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v14)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1622
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                    (coe v0))
                                 (coe v1) (coe v10) (coe du_certGDeps_3552 (coe v3)))
                              (coe v11)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                       (coe v0)))
                                 (coe du_Dec'45'GPurpose'63'_3542) (coe v3)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    erased
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                       (coe v12))))
                              (coe
                                 du_validGDeps_3822 (coe v0) (coe v1) (coe v11)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_specification_214
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v3))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                             (MAlonzo.Code.Axiom.Set.d_sp_188
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                             erased erased erased
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                (MAlonzo.Code.Axiom.Set.d_sp_188
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      erased
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                         (coe v12)))))
                                             (\ v14 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v14)))))
                                    erased)
                                 (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_ccreghot_2614 v8
        -> case coe v2 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_3030
                    (coe
                       du_validGDeps_3822 (coe v0) (coe v1) (coe v10) (coe v3) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_retirepool_2622 v8
        -> case coe v2 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_3022
                    (coe
                       du_validGDeps_3822 (coe v0) (coe v1) (coe v10) (coe v3) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-prop-ddeps
d_lem'45'upd'45'prop'45'ddeps_3854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'prop'45'ddeps_3854 v0 ~v1 v2 v3 v4 v5
  = du_lem'45'upd'45'prop'45'ddeps_3854 v0 v2 v3 v4 v5
du_lem'45'upd'45'prop'45'ddeps_3854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'prop'45'ddeps_3854 v0 v1 v2 v3 v4
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
             (coe (\ v5 v6 -> v6))
      (:) v5 v6
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v7 v8 v9 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
             (coe
                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                (coe du_certDDeps_3544 (coe v4)))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                (coe
                   du_certDDeps_3544
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1516
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                  (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                            (coe v2))))))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      (\ v7 v8 v9 v10 v11 ->
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              (\ v12 v13 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v12 v13)))
                           (coe
                              (\ v12 v13 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v12
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12 v13))))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                   (coe du_certDDeps_3544 (coe v4)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                   (coe
                      du_certDDeps_3544
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                   (coe
                      du_certDDeps_3544
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         (coe
                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                               (coe v0)))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                            (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1516
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                     (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                               (coe v2))))))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         (\ v7 v8 v9 v10 v11 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12 v13))))))
                   (\ v7 v8 v9 ->
                      case coe v9 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11) (coe v10)
                        _ -> MAlonzo.RTE.mazUnreachableError)
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                      (coe
                         du_certDDeps_3544
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                            (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                      (coe
                         du_certDDeps_3544
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                               (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                        (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                  (coe v2))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                      (coe
                         du_certDDeps_3544
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                               (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                        (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                  (coe v2))))))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                         (coe
                            (\ v7 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v8 v9 -> v9))
                                 (coe (\ v8 v9 -> v9)))))
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                         (coe
                            du_certDDeps_3544
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                               (coe
                                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                               (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                     (coe v0)))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                                  (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                           (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                     (coe v2)))))))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                      (coe du_Dec'45'DPurpose'63'_3538)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                            (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                      (coe v2)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                (coe
                   du_lem'45'upd'45'prop'45'ddeps_3854 (coe v0) (coe v1) (coe v2)
                   (coe v6) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-prop-gdeps
d_lem'45'upd'45'prop'45'gdeps_3920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'prop'45'gdeps_3920 v0 ~v1 v2 v3 v4 v5
  = du_lem'45'upd'45'prop'45'gdeps_3920 v0 v2 v3 v4 v5
du_lem'45'upd'45'prop'45'gdeps_3920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'prop'45'gdeps_3920 v0 v1 v2 v3 v4
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
             (coe (\ v5 v6 -> v6))
      (:) v5 v6
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v7 v8 v9 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
             (coe
                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                (coe du_certGDeps_3552 (coe v4)))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                (coe
                   du_certGDeps_3552
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1516
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                  (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                            (coe v2))))))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      (\ v7 v8 v9 v10 v11 ->
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              (\ v12 v13 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v12 v13)))
                           (coe
                              (\ v12 v13 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v12
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12 v13))))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                   (coe du_certGDeps_3552 (coe v4)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                   (coe
                      du_certGDeps_3552
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                   (coe
                      du_certGDeps_3552
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         (coe
                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                               (coe v0)))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                            (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1516
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                     (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                               (coe v2))))))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         (\ v7 v8 v9 v10 v11 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12 v13))))))
                   (\ v7 v8 v9 ->
                      case coe v9 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11) (coe v10)
                        _ -> MAlonzo.RTE.mazUnreachableError)
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                      (coe
                         du_certGDeps_3552
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                            (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                      (coe
                         du_certGDeps_3552
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                               (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                        (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                  (coe v2))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                      (coe
                         du_certGDeps_3552
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                               (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                        (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                  (coe v2))))))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                         (coe
                            (\ v7 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v8 v9 -> v9))
                                 (coe (\ v8 v9 -> v9)))))
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                         (coe
                            du_certGDeps_3552
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                               (coe
                                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                               (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                     (coe v0)))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                                  (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                           (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                     (coe v2)))))))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                      (coe du_Dec'45'GPurpose'63'_3542)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1154
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                            (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                      (coe v2)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                (coe
                   du_lem'45'upd'45'prop'45'gdeps_3920 (coe v0) (coe v1) (coe v2)
                   (coe v6) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-ddeps
d_lem'45'ddeps_3984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_3044 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lem'45'ddeps_3984 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-gdeps
d_lem'45'gdeps_4062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_3044 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lem'45'gdeps_4062 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits.certDeposits
d_certDeposits_4134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposits_4134 ~v0 ~v1 v2 = du_certDeposits_4134 v2
du_certDeposits_4134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposits_4134 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_certDDeps_3544 (coe du_deps_4142 (coe v0)))
      (coe du_certGDeps_3552 (coe du_deps_4142 (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.deps
d_deps_4142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deps_4142 ~v0 ~v1 v2 = du_deps_4142 v2
du_deps_4142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deps_4142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2434
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2868
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._≡ᵈ_
d__'8801''7496'__4148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7496'__4148 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits.≡ᵈ-isEquivalence
d_'8801''7496''45'isEquivalence_4150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_'8801''7496''45'isEquivalence_4150 ~v0 ~v1
  = du_'8801''7496''45'isEquivalence_4150
du_'8801''7496''45'isEquivalence_4150 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_'8801''7496''45'isEquivalence_4150
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_46
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v1 v2 -> v2))
                 (coe (\ v1 v2 -> v2)))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v1 v2 -> v2))
                 (coe (\ v1 v2 -> v2)))))
      (coe
         (\ v0 v1 v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                -> coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (case coe v3 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v5)
                        _ -> MAlonzo.RTE.mazUnreachableError)
                     (case coe v4 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v5)
                        _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 v1 v2 v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                            -> coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       (\ v9 v10 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v4 v9 v10)))
                                    (coe
                                       (\ v9 v10 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v4 v9
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                                               v10))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       (\ v9 v10 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5 v9 v10)))
                                    (coe
                                       (\ v9 v10 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v5 v9
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9
                                               v10))))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateDDep
d_cong'45'updateDDep_4172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateDDep_4172 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateDDep_4172 v0 v2 v3 v4 v5 v6
du_cong'45'updateDDep_4172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateDDep_4172 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1316 v6 v7 v8 v9
        -> coe
             du_cong'45'updateCertDeposit_3568 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1318 v6 v7
        -> coe
             du_cong'45'updateCertDeposit_3568 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1320 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1322 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1324 v6 v7 v8
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1326 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1328 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1330 v6 v7
        -> coe
             du_cong'45'updateCertDeposit_3568 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateDDeps
d_cong'45'updateDDeps_4230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateDDeps_4230 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateDDeps_4230 v0 v2 v3 v4 v5 v6
du_cong'45'updateDDeps_4230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateDDeps_4230 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      [] -> coe v5
      (:) v6 v7
        -> coe
             du_cong'45'updateDDeps_4230 (coe v0) (coe v1) (coe v7)
             (coe du_updateDDep_3432 (coe v0) (coe v1) (coe v6) (coe v3))
             (coe du_updateDDep_3432 (coe v0) (coe v1) (coe v6) (coe v4))
             (coe
                du_cong'45'updateDDep_4172 (coe v0) (coe v1) (coe v6) (coe v3)
                (coe v4) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateGDep
d_cong'45'updateGDep_4248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateGDep_4248 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateGDep_4248 v0 v2 v3 v4 v5 v6
du_cong'45'updateGDep_4248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateGDep_4248 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1316 v6 v7 v8 v9
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1318 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1320 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1322 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1324 v6 v7 v8
        -> coe
             du_cong'45'updateCertDeposit_3568 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1326 v6 v7
        -> coe
             du_cong'45'updateCertDeposit_3568 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1328 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1330 v6 v7
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateGDeps
d_cong'45'updateGDeps_4286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateGDeps_4286 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateGDeps_4286 v0 v2 v3 v4 v5 v6
du_cong'45'updateGDeps_4286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateGDeps_4286 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      [] -> coe v5
      (:) v6 v7
        -> coe
             du_cong'45'updateGDeps_4286 (coe v0) (coe v1) (coe v7)
             (coe du_updateGDep_3472 (coe v0) (coe v1) (coe v6) (coe v3))
             (coe du_updateGDep_3472 (coe v0) (coe v1) (coe v6) (coe v4))
             (coe
                du_cong'45'updateGDep_4248 (coe v0) (coe v1) (coe v6) (coe v3)
                (coe v4) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-cert-ddeps
d_lem'45'upd'45'cert'45'ddeps_4328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'cert'45'ddeps_4328 v0 ~v1 v2 v3 v4
  = du_lem'45'upd'45'cert'45'ddeps_4328 v0 v2 v3 v4
du_lem'45'upd'45'cert'45'ddeps_4328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'cert'45'ddeps_4328 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v4 v5 -> v5))
             (coe (\ v4 v5 -> v5))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1316 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v10 v11 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                        (coe v0)))
                                  v2 (coe du_dep_4350 (coe v6) (coe v9)))
                               (coe v5))
                            v10
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v12
                                      = coe
                                          du_cong'45'updateDDeps_4230 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                  (coe v6))
                                                               (coe v9)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v12 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3538
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v12)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_replacement_236
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (\ v12 ->
                                                      coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v12))
                                                        (coe
                                                           MAlonzo.Code.Data.These.Base.du_fold_92
                                                           (coe (\ v13 -> v13)) (coe (\ v13 -> v13))
                                                           (coe addInt)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                                 (\ v13 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3538
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v13)))
                                                                 v2)
                                                              (coe
                                                                 MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                                 (coe
                                                                    MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                       (coe v6))
                                                                    (coe v9)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v12))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v12)))))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                               (\ v12 ->
                                                                  coe
                                                                    du_Dec'45'DPurpose'63'_3538
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v12)))
                                                               v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                     (coe v6))
                                                                  (coe v9))))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'DPurpose'63'_3538)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                (coe v6))
                                             (coe v2) (coe v9) (coe C_CredentialDeposit_3528)) in
                                coe
                                  (case coe v12 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v14)
                                            (coe v13)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v10 v11)))
                    (coe
                       (\ v10 v11 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v12
                                   = coe
                                       du_cong'45'updateDDeps_4230 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                               (coe v6))
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v12 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3538
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v12)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_replacement_236
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (\ v12 ->
                                                   coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v12))
                                                     (coe
                                                        MAlonzo.Code.Data.These.Base.du_fold_92
                                                        (coe (\ v13 -> v13)) (coe (\ v13 -> v13))
                                                        (coe addInt)
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                              (\ v13 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3538
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v13)))
                                                              v2)
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                              (coe
                                                                 MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                    (coe v6))
                                                                 (coe v9)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v12))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v12)))))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                            (\ v12 ->
                                                               coe
                                                                 du_Dec'45'DPurpose'63'_3538
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v12)))
                                                            v2))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                  (coe v6))
                                                               (coe v9))))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'DPurpose'63'_3538)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                             (coe v6))
                                          (coe v2) (coe v9) (coe C_CredentialDeposit_3528)) in
                             coe
                               (case coe v12 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v14)
                                         (coe v13)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v10
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                           (coe v0)))
                                     v2 (coe du_dep_4350 (coe v6) (coe v9)))
                                  (coe v5))
                               v10 v11)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1318 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     erased
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                           (coe v0))))
                                  (coe v2) (coe du_cs_4366 (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateDDeps_4230 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (let v10
                                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                    (coe v0)) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v10)
                                                            (coe v2) (coe du_cs_4366 (coe v6)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3538
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3538
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))
                                                         v2))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                      (MAlonzo.Code.Axiom.Set.d_sp_188
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      erased erased erased
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                         (MAlonzo.Code.Axiom.Set.d_sp_188
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         erased erased
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased
                                                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                  (coe v0)))
                                                            (coe du_cs_4366 (coe v6))))
                                                      (\ v10 ->
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v10)))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe du_Dec'45'DPurpose'63'_3538) (coe v2)
                                             (coe du_cs_4366 (coe v6))) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateDDeps_4230 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                 (coe v0)) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v10)
                                                         (coe v2) (coe du_cs_4366 (coe v6)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3538
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3538
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))
                                                      v2))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                   (MAlonzo.Code.Axiom.Set.d_sp_188
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                   erased erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                      (MAlonzo.Code.Axiom.Set.d_sp_188
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      erased erased
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                               (coe v0)))
                                                         (coe du_cs_4366 (coe v6))))
                                                   (\ v10 ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v10)))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe du_Dec'45'DPurpose'63'_3538) (coe v2)
                                          (coe du_cs_4366 (coe v6))) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                        erased
                                        (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                              (coe v0))))
                                     (coe v2) (coe du_cs_4366 (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1320 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     erased
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                           (coe v0))))
                                  (coe v2) (coe du_dep_4398 (coe v1) (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateDDeps_4230 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased
                                                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                  (coe v0))))
                                                         (coe v2)
                                                         (coe du_dep_4398 (coe v1) (coe v6))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3538
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3538
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du_add'45'excluded'45''8746''737''45'l_784
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased
                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                                (coe v6))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                (coe du_Dec'45'DPurpose'63'_3538))
                                             (coe v2)) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateDDeps_4230 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                               (coe v0))))
                                                      (coe v2) (coe du_dep_4398 (coe v1) (coe v6))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3538
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3538
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.Dec.du_add'45'excluded'45''8746''737''45'l_784
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                             (coe v6))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                             (coe du_Dec'45'DPurpose'63'_3538))
                                          (coe v2)) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                        erased
                                        (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                              (coe v0))))
                                     (coe v2) (coe du_dep_4398 (coe v1) (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1322 v6 v7
               -> coe
                    du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1) (coe v2)
                    (coe v5)
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1324 v6 v7 v8
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                        (coe v0)))
                                  v2 (coe du_dep_4418 (coe v6) (coe v7)))
                               (coe v5))
                            v9
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v11
                                      = coe
                                          du_cong'45'updateDDeps_4230 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                  (coe v6))
                                                               (coe v7)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v11 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3538
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v11)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v11 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3538
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v11)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'DPurpose'63'_3538)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                (coe v6))
                                             (coe v7) (coe v2)) in
                                coe
                                  (case coe v11 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v13)
                                            (coe v12)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v9 v10)))
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v11
                                   = coe
                                       du_cong'45'updateDDeps_4230 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                               (coe v6))
                                                            (coe v7)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v11 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3538
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v11)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v11 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3538
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v11)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'DPurpose'63'_3538)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                             (coe v6))
                                          (coe v7) (coe v2)) in
                             coe
                               (case coe v11 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v13)
                                         (coe v12)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v9
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                           (coe v0)))
                                     v2 (coe du_dep_4418 (coe v6) (coe v7)))
                                  (coe v5))
                               v9 v10)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1326 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     erased
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                           (coe v0))))
                                  (coe v2) (coe du_cs_4434 (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateDDeps_4230 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (let v10
                                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                    (coe v0)) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v10)
                                                            (coe v2)
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                  (coe v6))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3538
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3538
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe du_Dec'45'DPurpose'63'_3538)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                (coe v6))
                                             (coe v2)) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateDDeps_4230 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                 (coe v0)) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v10)
                                                         (coe v2)
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                               (coe v6))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3538
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3538
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe du_Dec'45'DPurpose'63'_3538)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                             (coe v6))
                                          (coe v2)) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                        erased
                                        (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                              (coe v0))))
                                     (coe v2) (coe du_cs_4434 (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1328 v6 v7
               -> coe
                    du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1) (coe v2)
                    (coe v5)
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1330 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                        (coe v0)))
                                  v2 (coe du_dep_4382 (coe v1) (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateDDeps_4230 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                                  (coe v1))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3538
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_replacement_236
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (\ v10 ->
                                                      coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v10))
                                                        (coe
                                                           MAlonzo.Code.Data.These.Base.du_fold_92
                                                           (coe (\ v11 -> v11)) (coe (\ v11 -> v11))
                                                           (coe addInt)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                                 (\ v11 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3538
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v11)))
                                                                 v2)
                                                              (coe
                                                                 MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                                 (coe
                                                                    MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                       (coe v6))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                                       (coe v1))))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v10)))))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                               (\ v10 ->
                                                                  coe
                                                                    du_Dec'45'DPurpose'63'_3538
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v10)))
                                                               v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                     (coe v6))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                                     (coe v1)))))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'DPurpose'63'_3538)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                (coe v6))
                                             (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                (coe v1))
                                             (coe C_CredentialDeposit_3528)) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateDDeps_4230 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                               (coe v6))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                               (coe v1))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3538
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_replacement_236
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (\ v10 ->
                                                   coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v10))
                                                     (coe
                                                        MAlonzo.Code.Data.These.Base.du_fold_92
                                                        (coe (\ v11 -> v11)) (coe (\ v11 -> v11))
                                                        (coe addInt)
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                              (\ v11 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3538
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v11)))
                                                              v2)
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                              (coe
                                                                 MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                    (coe v6))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                                    (coe v1))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v10)))))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                            (\ v10 ->
                                                               coe
                                                                 du_Dec'45'DPurpose'63'_3538
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v10)))
                                                            v2))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                                  (coe v1)))))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'DPurpose'63'_3538)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                             (coe v6))
                                          (coe v2)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                             (coe v1))
                                          (coe C_CredentialDeposit_3528)) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                           (coe v0)))
                                     v2 (coe du_dep_4382 (coe v1) (coe v6)))
                                  (coe v5))
                               v8 v9)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_964 ->
  Maybe AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4350 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 ~v8 = du_dep_4350 v4 v7
du_dep_4350 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4350 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.cs
d_cs_4366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1146]
d_cs_4366 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_cs_4366 v4
du_cs_4366 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1146]
du_cs_4366 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      erased
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4382 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 = du_dep_4382 v2 v4
du_dep_4382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4382 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
            (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1122 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4398 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 = du_dep_4398 v2 v4
du_dep_4398 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4398 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
            (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_916 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4418 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 = du_dep_4418 v4 v5
du_dep_4418 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4418 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.cs
d_cs_4434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1146]
d_cs_4434 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_cs_4434 v4
du_cs_4434 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1146]
du_cs_4434 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      erased
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-cert-gdeps
d_lem'45'upd'45'cert'45'gdeps_4450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'cert'45'gdeps_4450 v0 ~v1 v2 v3 v4
  = du_lem'45'upd'45'cert'45'gdeps_4450 v0 v2 v3 v4
du_lem'45'upd'45'cert'45'gdeps_4450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'cert'45'gdeps_4450 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v4 v5 -> v5))
             (coe (\ v4 v5 -> v5))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1316 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v10 v11 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                        (coe v0)))
                                  v2 (coe du_dep_4472 (coe v6) (coe v9)))
                               (coe v5))
                            v10
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v12
                                      = coe
                                          du_cong'45'updateGDeps_4286 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                  (coe v6))
                                                               (coe v9)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v12 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3542
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v12)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v12 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3542
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v12)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'GPurpose'63'_3542)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                (coe v6))
                                             (coe v9) (coe v2)) in
                                coe
                                  (case coe v12 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v14)
                                            (coe v13)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v10 v11)))
                    (coe
                       (\ v10 v11 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v12
                                   = coe
                                       du_cong'45'updateGDeps_4286 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                               (coe v6))
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v12 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3542
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v12)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v12 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3542
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v12)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'GPurpose'63'_3542)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                             (coe v6))
                                          (coe v9) (coe v2)) in
                             coe
                               (case coe v12 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v14)
                                         (coe v13)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v10
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                           (coe v0)))
                                     v2 (coe du_dep_4472 (coe v6) (coe v9)))
                                  (coe v5))
                               v10 v11)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1318 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     erased
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                           (coe v0))))
                                  (coe v2) (coe du_cs_4488 (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateGDeps_4286 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (let v10
                                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                    (coe v0)) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v10)
                                                            (coe v2)
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                  (coe v6))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3542
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3542
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe du_Dec'45'GPurpose'63'_3542)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                (coe v6))
                                             (coe v2)) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateGDeps_4286 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                 (coe v0)) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v10)
                                                         (coe v2)
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                               (coe v6))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3542
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3542
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe du_Dec'45'GPurpose'63'_3542)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                             (coe v6))
                                          (coe v2)) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                        erased
                                        (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                              (coe v0))))
                                     (coe v2) (coe du_cs_4488 (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1320 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     erased
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                           (coe v0))))
                                  (coe v2) (coe du_dep_4520 (coe v1) (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateGDeps_4286 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased
                                                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                  (coe v0))))
                                                         (coe v2)
                                                         (coe du_dep_4520 (coe v1) (coe v6))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3542
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3542
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du_add'45'excluded'45''8746''737''45'l_784
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased
                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                                (coe v6))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                (coe du_Dec'45'GPurpose'63'_3542))
                                             (coe v2)) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateGDeps_4286 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                               (coe v0))))
                                                      (coe v2) (coe du_dep_4520 (coe v1) (coe v6))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3542
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3542
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.Dec.du_add'45'excluded'45''8746''737''45'l_784
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                             (coe v6))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                             (coe du_Dec'45'GPurpose'63'_3542))
                                          (coe v2)) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                        erased
                                        (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                              (coe v0))))
                                     (coe v2) (coe du_dep_4520 (coe v1) (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1322 v6 v7
               -> coe
                    du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1) (coe v2)
                    (coe v5)
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1324 v6 v7 v8
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                        (coe v0)))
                                  v2 (coe du_dep_4540 (coe v6) (coe v7)))
                               (coe v5))
                            v9
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v11
                                      = coe
                                          du_cong'45'updateGDeps_4286 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                  (coe v6))
                                                               (coe v7)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v11 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3542
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v11)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_replacement_236
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (\ v11 ->
                                                      coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v11))
                                                        (coe
                                                           MAlonzo.Code.Data.These.Base.du_fold_92
                                                           (coe (\ v12 -> v12)) (coe (\ v12 -> v12))
                                                           (coe addInt)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                                 (\ v12 ->
                                                                    coe
                                                                      du_Dec'45'GPurpose'63'_3542
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v12)))
                                                                 v2)
                                                              (coe
                                                                 MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                                 (coe
                                                                    MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                       (coe v6))
                                                                    (coe v7)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v11))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v11)))))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                               (\ v11 ->
                                                                  coe
                                                                    du_Dec'45'GPurpose'63'_3542
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v11)))
                                                               v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                     (coe v6))
                                                                  (coe v7))))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'GPurpose'63'_3542)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                (coe v6))
                                             (coe v2) (coe v7) (coe C_DRepDeposit_3534)) in
                                coe
                                  (case coe v11 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v13)
                                            (coe v12)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v9 v10)))
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v11
                                   = coe
                                       du_cong'45'updateGDeps_4286 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                               (coe v6))
                                                            (coe v7)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v11 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3542
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v11)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_replacement_236
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (\ v11 ->
                                                   coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v11))
                                                     (coe
                                                        MAlonzo.Code.Data.These.Base.du_fold_92
                                                        (coe (\ v12 -> v12)) (coe (\ v12 -> v12))
                                                        (coe addInt)
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_412
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                              (\ v12 ->
                                                                 coe
                                                                   du_Dec'45'GPurpose'63'_3542
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v12)))
                                                              v2)
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                              (coe
                                                                 MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                    (coe v6))
                                                                 (coe v7)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v11)))))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_incl'45'set_1758
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du_d_494
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                            (\ v11 ->
                                                               coe
                                                                 du_Dec'45'GPurpose'63'_3542
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v11)))
                                                            v2))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                  (coe v6))
                                                               (coe v7))))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'GPurpose'63'_3542)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                             (coe v6))
                                          (coe v2) (coe v7) (coe C_DRepDeposit_3534)) in
                             coe
                               (case coe v11 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v13)
                                         (coe v12)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v9
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                           (coe v0)))
                                     v2 (coe du_dep_4540 (coe v6) (coe v7)))
                                  (coe v5))
                               v9 v10)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1326 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     erased
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                           (coe v0))))
                                  (coe v2) (coe du_cs_4556 (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateGDeps_4286 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (let v10
                                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                    (coe v0)) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v10)
                                                            (coe v2) (coe du_cs_4556 (coe v6)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3542
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3542
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))
                                                         v2))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                      (MAlonzo.Code.Axiom.Set.d_sp_188
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      erased erased erased
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                         (MAlonzo.Code.Axiom.Set.d_sp_188
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         erased erased
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased
                                                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                  (coe v0)))
                                                            (coe du_cs_4556 (coe v6))))
                                                      (\ v10 ->
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v10)))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe du_Dec'45'GPurpose'63'_3542) (coe v2)
                                             (coe du_cs_4556 (coe v6))) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateGDeps_4286 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                 (coe v0)) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v10)
                                                         (coe v2) (coe du_cs_4556 (coe v6)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3542
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3542
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))
                                                      v2))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                   (MAlonzo.Code.Axiom.Set.d_sp_188
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                   erased erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                      (MAlonzo.Code.Axiom.Set.d_sp_188
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      erased erased
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                               (coe v0)))
                                                         (coe du_cs_4556 (coe v6))))
                                                   (\ v10 ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v10)))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe du_Dec'45'GPurpose'63'_3542) (coe v2)
                                          (coe du_cs_4556 (coe v6))) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                        erased
                                        (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                              (coe v0))))
                                     (coe v2) (coe du_cs_4556 (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1328 v6 v7
               -> coe
                    du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1) (coe v2)
                    (coe v5)
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1330 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                        (coe v0)))
                                  v2 (coe du_dep_4504 (coe v1) (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateGDeps_4286 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                                  (coe v1))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3542
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3542
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'GPurpose'63'_3542)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                (coe v6))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                (coe v1))
                                             (coe v2)) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateGDeps_4286 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                               (coe v6))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                               (coe v1))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3542
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_214
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3542
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'GPurpose'63'_3542)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                             (coe v6))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                             (coe v1))
                                          (coe v2)) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                           (coe v0)))
                                     v2 (coe du_dep_4504 (coe v1) (coe v6)))
                                  (coe v5))
                               v8 v9)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_964 ->
  Maybe AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4472 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 ~v8 = du_dep_4472 v4 v7
du_dep_4472 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4472 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.cs
d_cs_4488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1146]
d_cs_4488 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_cs_4488 v4
du_cs_4488 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1146]
du_cs_4488 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      erased
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4504 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 = du_dep_4504 v2 v4
du_dep_4504 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4504 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
            (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1122 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4520 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 = du_dep_4520 v2 v4
du_dep_4520 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4520 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
            (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_916 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4540 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 = du_dep_4540 v4 v5
du_dep_4540 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4540 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.cs
d_cs_4556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1146]
d_cs_4556 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_cs_4556 v4
du_cs_4556 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1146]
du_cs_4556 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      erased
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.txCerts
d_txCerts_4574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
d_txCerts_4574 ~v0 ~v1 ~v2 v3 = du_txCerts_4574 v3
du_txCerts_4574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
du_txCerts_4574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-ddeps
d_lem'45'upd'45'ddeps_4576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'ddeps_4576 v0 ~v1 v2 v3 v4
  = du_lem'45'upd'45'ddeps_4576 v0 v2 v3 v4
du_lem'45'upd'45'ddeps_4576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'ddeps_4576 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            du_updateDDeps_3458 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                  (coe v3)))
            (coe du_certDDeps_3544 (coe v2))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            du_certDDeps_3544
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2894
               (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                  (coe v3))
               (coe v2))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               (\ v4 v5 v6 v7 v8 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9 v10))))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               du_updateDDeps_3458 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                     (coe v3)))
               (coe du_certDDeps_3544 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               du_updateDDeps_3458 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                     (coe v3)))
               (coe du_certDDeps_3544 (coe du_updateProp_4670 v0 v1 v3 v2))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               du_certDDeps_3544
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2894
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                     (coe v3))
                  (coe v2))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  (\ v4 v5 v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          (\ v9 v10 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                       (coe
                          (\ v9 v10 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9 v10))))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  du_updateDDeps_3458 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                        (coe v3)))
                  (coe du_certDDeps_3544 (coe du_updateProp_4670 v0 v1 v3 v2))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  du_certDDeps_3544
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2894
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                        (coe v3))
                     (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  du_certDDeps_3544
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2894
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                        (coe v3))
                     (coe v2))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                          (coe (\ v5 v6 -> v6)))))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                  (coe
                     du_certDDeps_3544
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2894
                        (coe v0) (coe v1)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                           (coe v3))
                        (coe v2)))))
            (coe
               du_lem'45'upd'45'cert'45'ddeps_4328 (coe v0) (coe v1)
               (coe du_updateProp_4670 v0 v1 v3 v2)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                     (coe v3)))))
         (coe
            du_cong'45'updateDDeps_4230 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                  (coe v3)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_specification_214
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased erased
                     (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                        (coe
                           (\ v4 ->
                              coe
                                du_Dec'45'DPurpose'63'_3538
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))))
               erased)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_specification_214
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased erased
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3396
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3380
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
                              (coe v1))
                           (coe v2)))
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                        (coe
                           (\ v4 ->
                              coe
                                du_Dec'45'DPurpose'63'_3538
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))))
               erased)
            (coe
               du_lem'45'upd'45'prop'45'ddeps_3854 (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3380
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                     (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3396
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                     (coe v3)))
               (coe v2))))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.updateProp
d_updateProp_4670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProp_4670 v0 ~v1 v2 ~v3 v4 = du_updateProp_4670 v0 v2 v4
du_updateProp_4670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProp_4670 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
      (coe v0)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3396
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3380
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.txCerts
d_txCerts_4680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
d_txCerts_4680 ~v0 ~v1 ~v2 v3 = du_txCerts_4680 v3
du_txCerts_4680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
du_txCerts_4680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-gdeps
d_lem'45'upd'45'gdeps_4682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'gdeps_4682 v0 ~v1 v2 v3 v4
  = du_lem'45'upd'45'gdeps_4682 v0 v2 v3 v4
du_lem'45'upd'45'gdeps_4682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'gdeps_4682 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            du_updateGDeps_3492 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                  (coe v3)))
            (coe du_certGDeps_3552 (coe v2))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            du_certGDeps_3552
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2894
               (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                  (coe v3))
               (coe v2))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               (\ v4 v5 v6 v7 v8 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9 v10))))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               du_updateGDeps_3492 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                     (coe v3)))
               (coe du_certGDeps_3552 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               du_updateGDeps_3492 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                     (coe v3)))
               (coe du_certGDeps_3552 (coe du_updateProp_4776 v0 v1 v3 v2))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               du_certGDeps_3552
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2894
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                     (coe v3))
                  (coe v2))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  (\ v4 v5 v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          (\ v9 v10 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                       (coe
                          (\ v9 v10 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9 v10))))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  du_updateGDeps_3492 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                        (coe v3)))
                  (coe du_certGDeps_3552 (coe du_updateProp_4776 v0 v1 v3 v2))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  du_certGDeps_3552
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2894
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                        (coe v3))
                     (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  du_certGDeps_3552
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2894
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                        (coe v3))
                     (coe v2))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                          (coe (\ v5 v6 -> v6)))))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                  (coe
                     du_certGDeps_3552
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2894
                        (coe v0) (coe v1)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                           (coe v3))
                        (coe v2)))))
            (coe
               du_lem'45'upd'45'cert'45'gdeps_4450 (coe v0) (coe v1)
               (coe du_updateProp_4776 v0 v1 v3 v2)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                     (coe v3)))))
         (coe
            du_cong'45'updateGDeps_4286 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                  (coe v3)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_specification_214
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased erased
                     (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                        (coe
                           (\ v4 ->
                              coe
                                du_Dec'45'GPurpose'63'_3542
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))))
               erased)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_specification_214
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased erased
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3396
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3380
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
                              (coe v1))
                           (coe v2)))
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                        (coe
                           (\ v4 ->
                              coe
                                du_Dec'45'GPurpose'63'_3542
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))))
               erased)
            (coe
               du_lem'45'upd'45'prop'45'gdeps_3920 (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3380
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                     (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3396
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
                     (coe v3)))
               (coe v2))))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.updateProp
d_updateProp_4776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProp_4776 v0 ~v1 v2 ~v3 v4 = du_updateProp_4776 v0 v2 v4
du_updateProp_4776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProp_4776 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2882
      (coe v0)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3396
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3380
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits.lemUpdCert
d_lemUpdCert_4790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lemUpdCert_4790 v0 ~v1 v2 v3 v4 v5 v6
  = du_lemUpdCert_4790 v0 v2 v3 v4 v5 v6
du_lemUpdCert_4790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lemUpdCert_4790 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1316 v8 v9 v10 v11
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v14 v15 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v16
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'DPurpose'63'_3538)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                    (coe v8))
                                                 (coe v3) (coe v11)
                                                 (coe C_CredentialDeposit_3528) in
                                       coe
                                         (case coe v16 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v18) (coe v17)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v14
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3704
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_244
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                              (coe v8))
                                                           (coe v11)))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                           (coe v8))
                                                        (coe v11)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_214
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                        (coe
                                                           (\ v16 ->
                                                              coe
                                                                du_Dec'45'DPurpose'63'_3538
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v16)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_specification_214
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                              (coe v3))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                              (coe
                                                                 (\ v16 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3538
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v16)))))))
                                                     (coe
                                                        (\ v16 v17 v18 v19 v20 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             v3 v16 v17 v18
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                      (coe
                                                                         (\ v21 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3538
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v21)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v16) (coe v17)))
                                                                (\ v21 v22 -> v21) v19 v20)
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                (\ v21 v22 -> v22)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                      (coe
                                                                         (\ v21 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3538
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v21)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v16) (coe v18)))
                                                                v19 v20)))))))
                                         v14
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45''8838''737'_3744
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_244
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                              (coe v8))
                                                           (coe v11)))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                           (coe v8))
                                                        (coe v11)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v6)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_214
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                        (coe
                                                           (\ v16 ->
                                                              coe
                                                                du_Dec'45'DPurpose'63'_3538
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v16)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_specification_214
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                              (coe v3))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                              (coe
                                                                 (\ v16 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3538
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v16)))))))
                                                     (coe
                                                        (\ v16 v17 v18 v19 v20 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             v3 v16 v17 v18
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                      (coe
                                                                         (\ v21 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3538
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v21)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v16) (coe v17)))
                                                                (\ v21 v22 -> v21) v19 v20)
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                (\ v21 v22 -> v22)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                      (coe
                                                                         (\ v21 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3538
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v21)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v16) (coe v18)))
                                                                v19 v20))))))
                                            (coe v12)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3704
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                     (coe
                                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v6))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v6)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_listing_244
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                    (coe v8))
                                                                 (coe v11)))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                 (coe v8))
                                                              (coe v11))))))
                                               v14 v15)))))
                              (coe
                                 (\ v14 v15 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3704
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                            (coe
                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_244
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                           (coe v8))
                                                        (coe v11)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                        (coe v8))
                                                     (coe v11)))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))))
                                      v14
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45''8838''737'_3744
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                            (coe
                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_244
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                           (coe v8))
                                                        (coe v11)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                        (coe v8))
                                                     (coe v11)))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_specification_214
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased erased
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                     (coe
                                                        (\ v16 ->
                                                           coe
                                                             du_Dec'45'DPurpose'63'_3538
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v16)))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_specification_214
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                           (coe
                                                              (\ v16 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3538
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v16)))))))
                                                  (coe
                                                     (\ v16 v17 v18 v19 v20 ->
                                                        coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          v3 v16 v17 v18
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                   (coe
                                                                      (\ v21 ->
                                                                         coe
                                                                           du_Dec'45'DPurpose'63'_3538
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v21)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v3))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v16) (coe v17)))
                                                             (\ v21 v22 -> v21) v19 v20)
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                             (\ v21 v22 -> v22)
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                   (coe
                                                                      (\ v21 ->
                                                                         coe
                                                                           du_Dec'45'DPurpose'63'_3538
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v21)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v3))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v16) (coe v18)))
                                                             v19 v20))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12)))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3704
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_specification_214
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                           (coe
                                                              (\ v16 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3538
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v16)))))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_specification_214
                                                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              erased erased
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                 (coe v3))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                 (coe
                                                                    (\ v16 ->
                                                                       coe
                                                                         du_Dec'45'DPurpose'63'_3538
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v16)))))))
                                                        (coe
                                                           (\ v16 v17 v18 v19 v20 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                v3 v16 v17 v18
                                                                (coe
                                                                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                         (coe
                                                                            (\ v21 ->
                                                                               coe
                                                                                 du_Dec'45'DPurpose'63'_3538
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v21)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v16) (coe v17)))
                                                                   (\ v21 v22 -> v21) v19 v20)
                                                                (coe
                                                                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                   (\ v21 v22 -> v22)
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                         (coe
                                                                            (\ v21 ->
                                                                               coe
                                                                                 du_Dec'45'DPurpose'63'_3538
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v21)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v16) (coe v18)))
                                                                   v19 v20))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_listing_244
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                 (coe v8))
                                                              (coe v11)))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                              (coe v8))
                                                           (coe v11))))))
                                            v14
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (let v16
                                                      = coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                             (coe
                                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                          (coe du_Dec'45'DPurpose'63'_3538)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                             (coe v8))
                                                          (coe v3) (coe v11)
                                                          (coe C_CredentialDeposit_3528) in
                                                coe
                                                  (case coe v16 of
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                       -> coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v18) (coe v17)
                                                     _ -> MAlonzo.RTE.mazUnreachableError))
                                               v14 v15))))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v14 v15 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v16
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'GPurpose'63'_3542)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                    (coe v8))
                                                 (coe v11) (coe v3) in
                                       coe
                                         (case coe v16 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v18) (coe v17)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v14
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v13 v14 v15)))
                              (coe
                                 (\ v14 v15 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v13 v14
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v16
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'GPurpose'63'_3542)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                       (coe v8))
                                                    (coe v11) (coe v3) in
                                          coe
                                            (case coe v16 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v18) (coe v17)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v14 v15))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1318 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                       (coe v0)))
                                                 (coe du_Dec'45'DPurpose'63'_3538) (coe v3)
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                       (coe v8))) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (let v14
                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                    (coe v0)) in
                                       coe
                                         (let v15
                                                = coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                       (coe v8)) in
                                          coe
                                            (let v16 = coe du_certDDeps_3544 (coe v3) in
                                             coe
                                               (let v17
                                                      = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v10) in
                                                coe
                                                  (let v18
                                                         = coe
                                                             MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_864
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                erased
                                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe v6))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                   (coe v8)))
                                                             v12 v13 in
                                                   coe
                                                     (let v19
                                                            = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_884
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                      erased
                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                      (coe v6))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                         (coe v8)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v12))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_516
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_772
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                            erased
                                                                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                            (coe v6))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            erased
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                               (coe v8))))
                                                                      (coe v12) (coe v13))) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_res'7580''45'dom'8713''8314'_3296
                                                           (coe v14) (coe v16) (coe v15)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v12))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v12))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v17 v12 v18) (coe v19)))))))))))
                              (coe
                                 (\ v12 v13 ->
                                    let v14
                                          = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                 (coe v0)) in
                                    coe
                                      (let v15
                                             = coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                    (coe v8)) in
                                       coe
                                         (let v16
                                                = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                    (coe v10) in
                                          coe
                                            (let v17
                                                   = coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_864
                                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                          erased
                                                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                (coe v0))))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                          (coe du_certDDeps_3544 (coe v3)))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                             (coe v8)))
                                                       v12
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (let v17
                                                                 = coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                           (coe v0)))
                                                                     (coe
                                                                        du_Dec'45'DPurpose'63'_3538)
                                                                     (coe v3)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        erased
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                           (coe v8))) in
                                                           coe
                                                             (case coe v17 of
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                  -> coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe v19) (coe v18)
                                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                                          v12 v13) in
                                             coe
                                               (let v18
                                                      = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_884
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                erased
                                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe du_certDDeps_3544 (coe v3)))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                   (coe v8)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v12))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_516
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_772
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                      erased
                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                      (coe
                                                                         du_certDDeps_3544
                                                                         (coe v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                         (coe v8))))
                                                                (coe v12)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (let v18
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                                    (coe v0)))
                                                                              (coe
                                                                                 du_Dec'45'DPurpose'63'_3538)
                                                                              (coe v3)
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 erased
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                                    (coe v8))) in
                                                                    coe
                                                                      (case coe v18 of
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                           -> coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe v20) (coe v19)
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                   v12 v13))) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_res'7580''45'dom'8713''8314'_3296
                                                     (coe v14) (coe v6) (coe v15)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v12))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v12))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe v16 v12 v17) (coe v18))))))))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                       (coe v0)))
                                                 (coe du_Dec'45'GPurpose'63'_3542)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                    (coe v8))
                                                 (coe v3) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v14
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                          (coe v0)))
                                                    (coe du_Dec'45'GPurpose'63'_3542)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                       (coe v8))
                                                    (coe v3) in
                                          coe
                                            (case coe v14 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v16) (coe v15)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v12 v13))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1320 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'DPurpose'63'_3538)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                                    (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                                    (coe v1))
                                                 (coe v3) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v14
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'DPurpose'63'_3538)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                                       (coe v8))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                                       (coe v1))
                                                    (coe v3) in
                                          coe
                                            (case coe v14 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v16) (coe v15)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v12 v13))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'GPurpose'63'_3542)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                                    (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                                    (coe v1))
                                                 (coe v3) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v14
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'GPurpose'63'_3542)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1150
                                                       (coe v8))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
                                                       (coe v1))
                                                    (coe v3) in
                                          coe
                                            (case coe v14 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v16) (coe v15)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v12 v13))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1322 v8 v9
               -> coe v5
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1324 v8 v9 v10
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v13 v14 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v15
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'DPurpose'63'_3538)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                    (coe v8))
                                                 (coe v9) (coe v3) in
                                       coe
                                         (case coe v15 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v17) (coe v16)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v13
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v13 v14)))
                              (coe
                                 (\ v13 v14 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v13
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v15
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'DPurpose'63'_3538)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                       (coe v8))
                                                    (coe v9) (coe v3) in
                                          coe
                                            (case coe v15 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v17) (coe v16)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v13 v14))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v13 v14 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v15
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'GPurpose'63'_3542)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                    (coe v8))
                                                 (coe v3) (coe v9) (coe C_DRepDeposit_3534) in
                                       coe
                                         (case coe v15 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v17) (coe v16)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v13
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3704
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_244
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                              (coe v8))
                                                           (coe v9)))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                           (coe v8))
                                                        (coe v9)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_214
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                        (coe
                                                           (\ v15 ->
                                                              coe
                                                                du_Dec'45'GPurpose'63'_3542
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v15)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_specification_214
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                              (coe v3))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                              (coe
                                                                 (\ v15 ->
                                                                    coe
                                                                      du_Dec'45'GPurpose'63'_3542
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v15)))))))
                                                     (coe
                                                        (\ v15 v16 v17 v18 v19 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             v3 v15 v16 v17
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                      (coe
                                                                         (\ v20 ->
                                                                            coe
                                                                              du_Dec'45'GPurpose'63'_3542
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v20)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v15) (coe v16)))
                                                                (\ v20 v21 -> v20) v18 v19)
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                (\ v20 v21 -> v21)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                      (coe
                                                                         (\ v20 ->
                                                                            coe
                                                                              du_Dec'45'GPurpose'63'_3542
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v20)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v15) (coe v17)))
                                                                v18 v19)))))))
                                         v13
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45''8838''737'_3744
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_244
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                              (coe v8))
                                                           (coe v9)))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                           (coe v8))
                                                        (coe v9)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v7)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_214
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                        (coe
                                                           (\ v15 ->
                                                              coe
                                                                du_Dec'45'GPurpose'63'_3542
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v15)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_specification_214
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                              (coe v3))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                              (coe
                                                                 (\ v15 ->
                                                                    coe
                                                                      du_Dec'45'GPurpose'63'_3542
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v15)))))))
                                                     (coe
                                                        (\ v15 v16 v17 v18 v19 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             v3 v15 v16 v17
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                      (coe
                                                                         (\ v20 ->
                                                                            coe
                                                                              du_Dec'45'GPurpose'63'_3542
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v20)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v15) (coe v16)))
                                                                (\ v20 v21 -> v20) v18 v19)
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                (\ v20 v21 -> v21)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                      (coe
                                                                         (\ v20 ->
                                                                            coe
                                                                              du_Dec'45'GPurpose'63'_3542
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v20)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v15) (coe v17)))
                                                                v18 v19))))))
                                            (coe v12)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3704
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                     (coe
                                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v7))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v7)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_listing_244
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                    (coe v8))
                                                                 (coe v9)))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                 (coe v8))
                                                              (coe v9))))))
                                               v13 v14)))))
                              (coe
                                 (\ v13 v14 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3704
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                            (coe
                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_244
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                           (coe v8))
                                                        (coe v9)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                        (coe v8))
                                                     (coe v9)))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))
                                      v13
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45''8838''737'_3744
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                            (coe
                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_244
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                           (coe v8))
                                                        (coe v9)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                        (coe v8))
                                                     (coe v9)))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_specification_214
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased erased
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                     (coe
                                                        (\ v15 ->
                                                           coe
                                                             du_Dec'45'GPurpose'63'_3542
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v15)))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_specification_214
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                           (coe
                                                              (\ v15 ->
                                                                 coe
                                                                   du_Dec'45'GPurpose'63'_3542
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v15)))))))
                                                  (coe
                                                     (\ v15 v16 v17 v18 v19 ->
                                                        coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          v3 v15 v16 v17
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                   (coe
                                                                      (\ v20 ->
                                                                         coe
                                                                           du_Dec'45'GPurpose'63'_3542
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v20)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v3))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v15) (coe v16)))
                                                             (\ v20 v21 -> v20) v18 v19)
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                             (\ v20 v21 -> v21)
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                   (coe
                                                                      (\ v20 ->
                                                                         coe
                                                                           du_Dec'45'GPurpose'63'_3542
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v20)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v3))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v15) (coe v17)))
                                                             v18 v19))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12)))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3704
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_specification_214
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                           (coe
                                                              (\ v15 ->
                                                                 coe
                                                                   du_Dec'45'GPurpose'63'_3542
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v15)))))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_specification_214
                                                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              erased erased
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                 (coe v3))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                 (coe
                                                                    (\ v15 ->
                                                                       coe
                                                                         du_Dec'45'GPurpose'63'_3542
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v15)))))))
                                                        (coe
                                                           (\ v15 v16 v17 v18 v19 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                v3 v15 v16 v17
                                                                (coe
                                                                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                         (coe
                                                                            (\ v20 ->
                                                                               coe
                                                                                 du_Dec'45'GPurpose'63'_3542
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v20)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v15) (coe v16)))
                                                                   (\ v20 v21 -> v20) v18 v19)
                                                                (coe
                                                                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                   (\ v20 v21 -> v21)
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                         (coe
                                                                            (\ v20 ->
                                                                               coe
                                                                                 du_Dec'45'GPurpose'63'_3542
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v20)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v15) (coe v17)))
                                                                   v18 v19))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_listing_244
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                 (coe v8))
                                                              (coe v9)))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                              (coe v8))
                                                           (coe v9))))))
                                            v13
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (let v15
                                                      = coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                             (coe
                                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                          (coe du_Dec'45'GPurpose'63'_3542)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                             (coe v8))
                                                          (coe v3) (coe v9)
                                                          (coe C_DRepDeposit_3534) in
                                                coe
                                                  (case coe v15 of
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                       -> coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v17) (coe v16)
                                                     _ -> MAlonzo.RTE.mazUnreachableError))
                                               v13 v14))))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1326 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                       (coe v0)))
                                                 (coe du_Dec'45'DPurpose'63'_3538)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                    (coe v8))
                                                 (coe v3) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v14
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                          (coe v0)))
                                                    (coe du_Dec'45'DPurpose'63'_3538)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                       (coe v8))
                                                    (coe v3) in
                                          coe
                                            (case coe v14 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v16) (coe v15)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v12 v13))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                       (coe v0)))
                                                 (coe du_Dec'45'GPurpose'63'_3542) (coe v3)
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                       (coe v8))) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (let v14
                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                    (coe v0)) in
                                       coe
                                         (let v15
                                                = coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                       (coe v8)) in
                                          coe
                                            (let v16 = coe du_certGDeps_3552 (coe v3) in
                                             coe
                                               (let v17
                                                      = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v11) in
                                                coe
                                                  (let v18
                                                         = coe
                                                             MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_864
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                erased
                                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe v7))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                   (coe v8)))
                                                             v12 v13 in
                                                   coe
                                                     (let v19
                                                            = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_884
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                      erased
                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                      (coe v7))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                         (coe v8)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v12))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_516
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_772
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                            erased
                                                                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                            (coe v7))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            erased
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                               (coe v8))))
                                                                      (coe v12) (coe v13))) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_res'7580''45'dom'8713''8314'_3296
                                                           (coe v14) (coe v16) (coe v15)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v12))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v12))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v17 v12 v18) (coe v19)))))))))))
                              (coe
                                 (\ v12 v13 ->
                                    let v14
                                          = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                 (coe v0)) in
                                    coe
                                      (let v15
                                             = coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                    (coe v8)) in
                                       coe
                                         (let v16
                                                = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                    (coe v11) in
                                          coe
                                            (let v17
                                                   = coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_864
                                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                          erased
                                                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                (coe v0))))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                          (coe du_certGDeps_3552 (coe v3)))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                             (coe v8)))
                                                       v12
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (let v17
                                                                 = coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                           (coe v0)))
                                                                     (coe
                                                                        du_Dec'45'GPurpose'63'_3542)
                                                                     (coe v3)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        erased
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                           (coe v8))) in
                                                           coe
                                                             (case coe v17 of
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                  -> coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe v19) (coe v18)
                                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                                          v12 v13) in
                                             coe
                                               (let v18
                                                      = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_884
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                erased
                                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe du_certGDeps_3552 (coe v3)))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                   (coe v8)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v12))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_516
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_772
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                      erased
                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                      (coe
                                                                         du_certGDeps_3552
                                                                         (coe v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                         (coe v8))))
                                                                (coe v12)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (let v18
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                                    (coe v0)))
                                                                              (coe
                                                                                 du_Dec'45'GPurpose'63'_3542)
                                                                              (coe v3)
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 erased
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1152
                                                                                    (coe v8))) in
                                                                    coe
                                                                      (case coe v18 of
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                           -> coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe v20) (coe v19)
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                   v12 v13))) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_res'7580''45'dom'8713''8314'_3296
                                                     (coe v14) (coe v7) (coe v15)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v12))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v12))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe v16 v12 v17) (coe v18))))))))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1328 v8 v9
               -> coe v5
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1330 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'DPurpose'63'_3538)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                    (coe v8))
                                                 (coe v3)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                    (coe v1))
                                                 (coe C_CredentialDeposit_3528) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3704
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_244
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                              (coe v8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                              (coe v1))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                           (coe v8))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                           (coe v1))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_214
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                        (coe
                                                           (\ v14 ->
                                                              coe
                                                                du_Dec'45'DPurpose'63'_3538
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v14)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_specification_214
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                              (coe v3))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                              (coe
                                                                 (\ v14 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3538
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v14)))))))
                                                     (coe
                                                        (\ v14 v15 v16 v17 v18 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             v3 v14 v15 v16
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                      (coe
                                                                         (\ v19 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3538
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v19)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v14) (coe v15)))
                                                                (\ v19 v20 -> v19) v17 v18)
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                (\ v19 v20 -> v20)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                      (coe
                                                                         (\ v19 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3538
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v19)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v14) (coe v16)))
                                                                v17 v18)))))))
                                         v12
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45''8838''737'_3744
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_244
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                              (coe v8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                              (coe v1))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                           (coe v8))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                           (coe v1))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v6)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_214
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                        (coe
                                                           (\ v14 ->
                                                              coe
                                                                du_Dec'45'DPurpose'63'_3538
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v14)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_specification_214
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                              (coe v3))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                              (coe
                                                                 (\ v14 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3538
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v14)))))))
                                                     (coe
                                                        (\ v14 v15 v16 v17 v18 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             v3 v14 v15 v16
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                      (coe
                                                                         (\ v19 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3538
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v19)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v14) (coe v15)))
                                                                (\ v19 v20 -> v19) v17 v18)
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                (\ v19 v20 -> v20)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                      (coe
                                                                         (\ v19 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3538
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v19)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v14) (coe v16)))
                                                                v17 v18))))))
                                            (coe v10)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3704
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                     (coe
                                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v6))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v6)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_listing_244
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                    (coe v8))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                                    (coe v1))))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                 (coe v8))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                                 (coe v1)))))))
                                               v12 v13)))))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3704
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                            (coe
                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_244
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                           (coe v8))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                           (coe v1))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                        (coe v8))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                        (coe v1))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))))
                                      v12
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45''8838''737'_3744
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                            (coe
                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_244
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                           (coe v8))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                           (coe v1))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                        (coe v8))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                        (coe v1))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_specification_214
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased erased
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                     (coe
                                                        (\ v14 ->
                                                           coe
                                                             du_Dec'45'DPurpose'63'_3538
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v14)))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_specification_214
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                           (coe
                                                              (\ v14 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3538
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v14)))))))
                                                  (coe
                                                     (\ v14 v15 v16 v17 v18 ->
                                                        coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          v3 v14 v15 v16
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                   (coe
                                                                      (\ v19 ->
                                                                         coe
                                                                           du_Dec'45'DPurpose'63'_3538
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v19)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v3))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v14) (coe v15)))
                                                             (\ v19 v20 -> v19) v17 v18)
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                             (\ v19 v20 -> v20)
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                   (coe
                                                                      (\ v19 ->
                                                                         coe
                                                                           du_Dec'45'DPurpose'63'_3538
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v19)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v3))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v14) (coe v16)))
                                                             v17 v18))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v10))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3704
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_specification_214
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                           (coe
                                                              (\ v14 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3538
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v14)))))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_specification_214
                                                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              erased erased
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                 (coe v3))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                 (coe
                                                                    (\ v14 ->
                                                                       coe
                                                                         du_Dec'45'DPurpose'63'_3538
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v14)))))))
                                                        (coe
                                                           (\ v14 v15 v16 v17 v18 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                v3 v14 v15 v16
                                                                (coe
                                                                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                         (coe
                                                                            (\ v19 ->
                                                                               coe
                                                                                 du_Dec'45'DPurpose'63'_3538
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v19)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v14) (coe v15)))
                                                                   (\ v19 v20 -> v19) v17 v18)
                                                                (coe
                                                                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                   (\ v19 v20 -> v20)
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_782
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                                         (coe
                                                                            (\ v19 ->
                                                                               coe
                                                                                 du_Dec'45'DPurpose'63'_3538
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v19)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v14) (coe v16)))
                                                                   v17 v18))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_listing_244
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                                 (coe v8))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                                 (coe v1))))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                              (coe v8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                              (coe v1)))))))
                                            v12
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (let v14
                                                      = coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                             (coe
                                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                          (coe du_Dec'45'DPurpose'63'_3538)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                             (coe v8))
                                                          (coe v3)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                             (coe v1))
                                                          (coe C_CredentialDeposit_3528) in
                                                coe
                                                  (case coe v14 of
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                       -> coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v16) (coe v15)
                                                     _ -> MAlonzo.RTE.mazUnreachableError))
                                               v12 v13))))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'GPurpose'63'_3542)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                    (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                    (coe v1))
                                                 (coe v3) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v14
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2570
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'GPurpose'63'_3542)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1148
                                                       (coe v8))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
                                                       (coe v1))
                                                    (coe v3) in
                                          coe
                                            (case coe v14 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v16) (coe v15)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v12 v13))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
