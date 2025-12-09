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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Certs
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.PParams
d_PParams_380 a0 = ()
-- _.PParams.Emax
d_Emax_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_Emax_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_390
      (coe v0)
-- _.PParams.a
d_a_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_a_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_362 (coe v0)
-- _.PParams.a0
d_a0_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_394 (coe v0)
-- _.PParams.b
d_b_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_b_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_364 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_ccMaxTermLength_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_406
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_ccMinSize_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_404
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_coinsPerUTxOByte_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_374
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_collateralPercentage_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_396
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_costmdls_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_398
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_drepActivity_1272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_414
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_drepDeposit_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_412
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206
d_drepThresholds_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_govActionDeposit_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_govActionLifetime_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_408
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_keyDeposit_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_maxBlockExUnits_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_354
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxBlockSize_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_346
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxCollateralInputs_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_358
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxHeaderSize_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_350
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1292 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxRefScriptSizePerBlock_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_382
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxRefScriptSizePerTx_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_380
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1296 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_maxTxExUnits_1296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_352
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1298 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxTxSize_1298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_348
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1300 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxValSize_1300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_356
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_378
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1304 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_minUTxOValue_1304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_388
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1306 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_370
      (coe v0)
-- _.PParams.nopt
d_nopt_1308 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_nopt_1308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_392
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1310 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_poolDeposit_1310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1312 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_250
d_poolThresholds_1312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_400
      (coe v0)
-- _.PParams.prices
d_prices_1314 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_prices_1314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_376
      (coe v0)
-- _.PParams.pv
d_pv_1316 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_360 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1318 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_386
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1320 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_384
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1322 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_372
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.Tx
d_Tx_1810 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits._.Tx.body
d_body_1846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184
d_body_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.Tx.isValid
d_isValid_1848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  Bool
d_isValid_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_2360
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.Tx.txAD
d_txAD_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  Maybe AgdaAny
d_txAD_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_2362
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.Tx.txsize
d_txsize_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  Integer
d_txsize_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_2358
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.Tx.wits
d_wits_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3254
d_wits_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2356
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.LState
d_LState_1948 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.LState.certState
d_certState_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2804 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386
d_certState_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2816
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.LState.govSt
d_govSt_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2804 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2814
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.LState.utxoSt
d_utxoSt_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2804 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2382
d_utxoSt_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2812
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.ValidCertDeposits
d_ValidCertDeposits_2046 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.updateCertDeposits
d_updateCertDeposits_2108 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2108 v0 ~v1 = du_updateCertDeposits_2108 v0
du_updateCertDeposits_2108 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateCertDeposits_2766
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.updateDeposits
d_updateDeposits_2110 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2110 v0 ~v1 = du_updateDeposits_2110 v0
du_updateDeposits_2110 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2856
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.updateProposalDeposits
d_updateProposalDeposits_2112 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2112 v0 ~v1
  = du_updateProposalDeposits_2112 v0
du_updateProposalDeposits_2112 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.DCert
d_DCert_2226 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.DepositPurpose
d_DepositPurpose_2248 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.Deposits
d_Deposits_2250 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  ()
d_Deposits_2250 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits.C._.updateCertDeposit
d_updateCertDeposit_2998 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_2998 v0 ~v1 = du_updateCertDeposit_2998 v0
du_updateCertDeposit_2998 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposit_2998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*
d_CertDeps'42'_3200 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits._.ValidDepsᵈ
d_ValidDeps'7496'_3234 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits._.ValidDepsᵍ
d_ValidDeps'7501'_3236 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits._.updateCertDeps*
d_updateCertDeps'42'_3278 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2866
d_updateCertDeps'42'_3278 v0 ~v1 = du_updateCertDeps'42'_3278 v0
du_updateCertDeps'42'_3278 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2866
du_updateCertDeps'42'_3278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.du_updateCertDeps'42'_2996
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*.depsᵈ
d_deps'7496'_3284 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deps'7496'_3284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.d_deps'7496'_2880
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*.depsᵍ
d_deps'7501'_3286 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deps'7501'_3286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.d_deps'7501'_2882
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*.validᵈ
d_valid'7496'_3288 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2700
d_valid'7496'_3288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.d_valid'7496'_2884
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*.validᵍ
d_valid'7501'_3290 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2784
d_valid'7501'_3290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.d_valid'7501'_2886
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_3340 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits._.IsCommutativeSemigroup.comm
d_comm_3348 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_3348 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_3358 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_3358 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_576 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.Coin-Semigroup
d_Coin'45'Semigroup_3376 ::
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_Coin'45'Semigroup_3376 ~v0 = du_Coin'45'Semigroup_3376
du_Coin'45'Semigroup_3376 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_Coin'45'Semigroup_3376
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'isCommutativeSemigroup_3462
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateDDep
d_updateDDep_3378 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDDep_3378 v0 ~v1 v2 v3 v4 = du_updateDDep_3378 v0 v2 v3 v4
du_updateDDep_3378 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDDep_3378 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_delegate_1284 v4 v5 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_dereg_1286 v4 v5
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_reg_1298 v4 v5
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      _ -> coe v3
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateDDeps
d_updateDDeps_3404 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDDeps_3404 v0 ~v1 v2 v3 v4
  = du_updateDDeps_3404 v0 v2 v3 v4
du_updateDDeps_3404 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDDeps_3404 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             du_updateDDeps_3404 (coe v0) (coe v1) (coe v5)
             (coe du_updateDDep_3378 (coe v0) (coe v1) (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateGDep
d_updateGDep_3418 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateGDep_3418 v0 ~v1 v2 v3 v4 = du_updateGDep_3418 v0 v2 v3 v4
du_updateGDep_3418 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateGDep_3418 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_regdrep_1292 v4 v5 v6
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_deregdrep_1294 v4 v5
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      _ -> coe v3
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateGDeps
d_updateGDeps_3438 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateGDeps_3438 v0 ~v1 v2 v3 v4
  = du_updateGDeps_3438 v0 v2 v3 v4
du_updateGDeps_3438 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateGDeps_3438 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             du_updateGDeps_3438 (coe v0) (coe v1) (coe v5)
             (coe du_updateGDep_3418 (coe v0) (coe v1) (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateLedgerDeps
d_updateLedgerDeps_3452 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateLedgerDeps_3452 v0 ~v1 v2 v3 v4
  = du_updateLedgerDeps_3452 v0 v2 v3 v4
du_updateLedgerDeps_3452 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateLedgerDeps_3452 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_updateDDeps_3404 (coe v0) (coe v1) (coe du_certs_3468 (coe v2))
                (coe v4))
             (coe
                du_updateGDeps_3438 (coe v0) (coe v1) (coe du_certs_3468 (coe v2))
                (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits._.certs
d_certs_3468 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
d_certs_3468 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_certs_3468 v3
du_certs_3468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
du_certs_3468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits.DPurpose
d_DPurpose_3470 a0 a1 a2 = ()
data T_DPurpose_3470 = C_CredentialDeposit_3474
-- Ledger.Conway.Conformance.Equivalence.Deposits.GPurpose
d_GPurpose_3476 a0 a1 a2 = ()
data T_GPurpose_3476 = C_DRepDeposit_3480
-- Ledger.Conway.Conformance.Equivalence.Deposits.Dec-DPurpose?
d_Dec'45'DPurpose'63'_3484 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DepositPurpose_1114 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'DPurpose'63'_3484 ~v0 ~v1 v2
  = du_Dec'45'DPurpose'63'_3484 v2
du_Dec'45'DPurpose'63'_3484 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DepositPurpose_1114 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'DPurpose'63'_3484 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_CredentialDeposit_3474)))
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.Dec-GPurpose?
d_Dec'45'GPurpose'63'_3488 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DepositPurpose_1114 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'GPurpose'63'_3488 ~v0 ~v1 v2
  = du_Dec'45'GPurpose'63'_3488 v2
du_Dec'45'GPurpose'63'_3488 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DepositPurpose_1114 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'GPurpose'63'_3488 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_DRepDeposit_3480)))
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.certDDeps
d_certDDeps_3490 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDDeps_3490 ~v0 ~v1 v2 = du_certDDeps_3490 v2
du_certDDeps_3490 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDDeps_3490 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v1 ->
         coe
           du_Dec'45'DPurpose'63'_3484
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Deposits.certGDeps
d_certGDeps_3498 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certGDeps_3498 ~v0 ~v1 v2 = du_certGDeps_3498 v2
du_certGDeps_3498 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certGDeps_3498 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v1 ->
         coe
           du_Dec'45'GPurpose'63'_3488
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateCertDeposit
d_cong'45'updateCertDeposit_3514 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateCertDeposit_3514 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateCertDeposit_3514 v0 v2 v3 v4 v5 v6
du_cong'45'updateCertDeposit_3514 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateCertDeposit_3514 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_delegate_1284 v6 v7 v8 v9
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45'r_3822
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                            MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                            (coe v6))
                         (coe v9)))))
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_dereg_1286 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_restrict'45'cong_4054
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                   (coe v0)))
             (coe v3) (coe v4)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                (MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                   (coe v6)))
             (coe v5)
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_regpool_1288 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45'r_3822
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                               (coe v6))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
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
                            MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                            (coe v6))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
                            (coe v1))))))
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_retirepool_1290 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_regdrep_1292 v6 v7 v8
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45'r_3822
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                            MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                            (coe v6))
                         (coe v7)))))
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_deregdrep_1294 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_restrict'45'cong_4054
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                   (coe v0)))
             (coe v3) (coe v4)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                (MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                   (coe v6)))
             (coe v5)
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_ccreghot_1296 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_reg_1298 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45'r_3822
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                               (coe v6))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                            MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                            (coe v6))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                            (coe v1))))))
             (coe v3) (coe v4) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-certDDeps
d_cong'45'certDDeps_3598 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'certDDeps_3598 ~v0 ~v1 = du_cong'45'certDDeps_3598
du_cong'45'certDDeps_3598 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'certDDeps_3598
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_cong'45'filter'7504'_4190
      (coe du_Dec'45'DPurpose'63'_3484)
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-certGDeps
d_cong'45'certGDeps_3604 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'certGDeps_3604 ~v0 ~v1 = du_cong'45'certGDeps_3604
du_cong'45'certGDeps_3604 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'certGDeps_3604
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_cong'45'filter'7504'_4190
      (coe du_Dec'45'GPurpose'63'_3488)
-- Ledger.Conway.Conformance.Equivalence.Deposits.castValidDepsᵈ
d_castValidDeps'7496'_3614 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2700 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2700
d_castValidDeps'7496'_3614 v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_castValidDeps'7496'_3614 v0 v2 v3 v4 v5 v6 v7
du_castValidDeps'7496'_3614 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2700 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2700
du_castValidDeps'7496'_3614 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_'91''93'_2706
        -> coe v6
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2718 v12
        -> case coe v4 of
             (:) v13 v14
               -> case coe v13 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_delegate_1284 v15 v16 v17 v18
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2718
                           (coe
                              du_castValidDeps'7496'_3614 (coe v0) (coe v1)
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
                                                     MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                         (coe v15))
                                                      (coe v18))))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                    (coe v0))
                                 (coe v1) (coe v13) (coe v3))
                              (coe v14)
                              (coe
                                 du_cong'45'updateCertDeposit_3514 (coe v0) (coe v1) (coe v13)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2728 v9 v11 v12 v13
        -> case coe v4 of
             (:) v14 v15
               -> case coe v14 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_dereg_1286 v16 v17
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2728
                           v9
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                    (coe v16))
                                 (coe v9))
                              v11)
                           v12
                           (coe
                              du_castValidDeps'7496'_3614 (coe v0) (coe v1)
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
                                                (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                      (coe v16)))))
                                          (\ v18 ->
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v18)))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                    (coe v0))
                                 (coe v1) (coe v14) (coe v3))
                              (coe v15)
                              (coe
                                 du_cong'45'updateCertDeposit_3514 (coe v0) (coe v1) (coe v14)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v13))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2738 v11
        -> case coe v4 of
             (:) v12 v13
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2738
                    (coe
                       du_castValidDeps'7496'_3614 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v13) (coe v5) (coe v11))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2746 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2746
                    (coe
                       du_castValidDeps'7496'_3614 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2754 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2754
                    (coe
                       du_castValidDeps'7496'_3614 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2762 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2762
                    (coe
                       du_castValidDeps'7496'_3614 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2770 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2770
                    (coe
                       du_castValidDeps'7496'_3614 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2778 v10
        -> case coe v4 of
             (:) v11 v12
               -> case coe v11 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_reg_1298 v13 v14
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2778
                           (coe
                              du_castValidDeps'7496'_3614 (coe v0) (coe v1)
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
                                                     MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                           (coe v13))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                         (coe v13))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                         (coe v1)))))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                    (coe v0))
                                 (coe v1) (coe v11) (coe v3))
                              (coe v12)
                              (coe
                                 du_cong'45'updateCertDeposit_3514 (coe v0) (coe v1) (coe v11)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.castValidDepsᵍ
d_castValidDeps'7501'_3678 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2784 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2784
d_castValidDeps'7501'_3678 v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_castValidDeps'7501'_3678 v0 v2 v3 v4 v5 v6 v7
du_castValidDeps'7501'_3678 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2784 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2784
du_castValidDeps'7501'_3678 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_'91''93'_2790
        -> coe v6
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2800 v11
        -> case coe v4 of
             (:) v12 v13
               -> case coe v12 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_regdrep_1292 v14 v15 v16
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2800
                           (coe
                              du_castValidDeps'7501'_3678 (coe v0) (coe v1)
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
                                                     MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                         (coe v14))
                                                      (coe v15))))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                    (coe v0))
                                 (coe v1) (coe v12) (coe v3))
                              (coe v13)
                              (coe
                                 du_cong'45'updateCertDeposit_3514 (coe v0) (coe v1) (coe v12)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2808 v10 v11
        -> case coe v4 of
             (:) v12 v13
               -> case coe v12 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_deregdrep_1294 v14 v15
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2808
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                    (coe v14))
                                 (coe v15))
                              v10)
                           (coe
                              du_castValidDeps'7501'_3678 (coe v0) (coe v1)
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
                                                (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                      (coe v14)))))
                                          (\ v16 ->
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v16)))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                    (coe v0))
                                 (coe v1) (coe v12) (coe v3))
                              (coe v13)
                              (coe
                                 du_cong'45'updateCertDeposit_3514 (coe v0) (coe v1) (coe v12)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2820 v12
        -> case coe v4 of
             (:) v13 v14
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2820
                    (coe
                       du_castValidDeps'7501'_3678 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v14) (coe v5) (coe v12))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2828 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2828
                    (coe
                       du_castValidDeps'7501'_3678 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2836 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2836
                    (coe
                       du_castValidDeps'7501'_3678 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2844 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2844
                    (coe
                       du_castValidDeps'7501'_3678 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2852 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2852
                    (coe
                       du_castValidDeps'7501'_3678 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2860 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2860
                    (coe
                       du_castValidDeps'7501'_3678 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.validDDeps
d_validDDeps_3734 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_ValidCertDeposits_2506 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2700
d_validDDeps_3734 v0 ~v1 v2 v3 v4 v5
  = du_validDDeps_3734 v0 v2 v3 v4 v5
du_validDDeps_3734 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_ValidCertDeposits_2506 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2700
du_validDDeps_3734 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'91''93'_2512
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_'91''93'_2706
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_delegate_2524 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v11 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_delegate_1284 v13 v14 v15 v16
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2718
                           (coe
                              du_castValidDeps'7496'_3614 (coe v0) (coe v1)
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
                                             (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                      (coe v13))
                                                   (coe v16)))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v17 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3484
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v17)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                    (coe v0))
                                 (coe v1) (coe v11) (coe du_certDDeps_3490 (coe v3)))
                              (coe v12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'DPurpose'63'_3484)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                    (coe v13))
                                 (coe v3) (coe v16) (coe C_CredentialDeposit_3474))
                              (coe
                                 du_validDDeps_3734 (coe v0) (coe v1) (coe v12)
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
                                                        MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                            MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                            (coe v13))
                                                         (coe v16))))))))
                                    erased)
                                 (coe v10)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_regpool_2532 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_regpool_1288 v11 v12
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2754
                           (coe
                              du_castValidDeps'7496'_3614 (coe v0) (coe v1)
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
                                             (let v13
                                                    = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                        (coe v0) in
                                              coe
                                                (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe v13)))
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                                      (coe v11))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v13 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3484
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v13)))))))
                                 erased)
                              (coe du_certDDeps_3490 (coe v3)) (coe v10)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                 (let v13
                                        = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                       (coe v13)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'DPurpose'63'_3484)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                    (coe v11))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
                                    (coe v1))
                                 (coe v3))
                              (coe
                                 du_validDDeps_3734 (coe v0) (coe v1) (coe v10)
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
                                                     (let v14
                                                            = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                (coe v0) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                           (coe v14)))
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
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
                                             (let v13
                                                    = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                        (coe v0) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe v13)))
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
                                                            MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                                            (coe v11))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
                                                            (coe v1)))))))))
                                    erased)
                                 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_regdrep_2542 v9
        -> case coe v2 of
             (:) v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_regdrep_1292 v12 v13 v14
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2738
                           (coe
                              du_castValidDeps'7496'_3614 (coe v0) (coe v1)
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
                                             (let v15
                                                    = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                        (coe v0) in
                                              coe
                                                (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe v15)))
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                      (coe v12))
                                                   (coe v13)))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v15 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3484
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v15)))))))
                                 erased)
                              (coe du_certDDeps_3490 (coe v3)) (coe v11)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                 (let v15
                                        = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                       (coe v15)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'DPurpose'63'_3484)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                    (coe v12))
                                 (coe v13) (coe v3))
                              (coe
                                 du_validDDeps_3734 (coe v0) (coe v1) (coe v11)
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
                                                     (let v16
                                                            = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                (coe v0) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                           (coe v16)))
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                             (let v15
                                                    = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                        (coe v0) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe v15)))
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
                                                            MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                            (coe v12))
                                                         (coe v13))))))))
                                    erased)
                                 (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_reg_2550 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_reg_1298 v11 v12
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2778
                           (coe
                              du_castValidDeps'7496'_3614 (coe v0) (coe v1)
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
                                             (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                      (coe v11))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v13 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3484
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v13)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                    (coe v0))
                                 (coe v1) (coe v9) (coe du_certDDeps_3490 (coe v3)))
                              (coe v10)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'DPurpose'63'_3484)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                    (coe v11))
                                 (coe v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                    (coe v1))
                                 (coe C_CredentialDeposit_3474))
                              (coe
                                 du_validDDeps_3734 (coe v0) (coe v1) (coe v10)
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
                                                        MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                            MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                            (coe v11))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                            (coe v1)))))))))
                                    erased)
                                 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_dereg_2560 v7 v9 v10 v11
        -> case coe v2 of
             (:) v12 v13
               -> case coe v12 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_dereg_1286 v14 v15
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2728
                           v7
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45''8712'_4182
                              (coe du_Dec'45'DPurpose'63'_3484) v3
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                 (coe v14))
                              v7 (coe C_CredentialDeposit_3474) v9)
                           v10
                           (coe
                              du_castValidDeps'7496'_3614 (coe v0) (coe v1)
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
                                                 = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                      (coe v14))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v16 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3484
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v16)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                    (coe v0))
                                 (coe v1) (coe v12) (coe du_certDDeps_3490 (coe v3)))
                              (coe v13)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                       (coe v0)))
                                 (coe du_Dec'45'DPurpose'63'_3484) (coe v3)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    erased
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                       (coe v14))))
                              (coe
                                 du_validDDeps_3734 (coe v0) (coe v1) (coe v13)
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
                                                   (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      erased
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                         (coe v14)))))
                                             (\ v16 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v16)))))
                                    erased)
                                 (coe v11)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_deregdrep_2568 v8 v9
        -> case coe v2 of
             (:) v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_deregdrep_1294 v12 v13
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2746
                           (coe
                              du_castValidDeps'7496'_3614 (coe v0) (coe v1)
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
                                                 = let v14
                                                         = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                             (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                        (coe v14)) in
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                      (coe v12))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v14 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3484
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v14)))))))
                                 erased)
                              (coe du_certDDeps_3490 (coe v3)) (coe v11)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                 (let v14
                                        = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                       (coe v14)))
                                 (coe du_Dec'45'DPurpose'63'_3484)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                    (coe v12))
                                 (coe v3))
                              (coe
                                 du_validDDeps_3734 (coe v0) (coe v1) (coe v11)
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
                                                   (let v14
                                                          = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                              (coe v0) in
                                                    coe
                                                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                         (coe v14)))
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                         (coe v12)))))
                                             (\ v14 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v14)))))
                                    erased)
                                 (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_ccreghot_2576 v8
        -> case coe v2 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2770
                    (coe
                       du_validDDeps_3734 (coe v0) (coe v1) (coe v10) (coe v3) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_retirepool_2584 v8
        -> case coe v2 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2762
                    (coe
                       du_validDDeps_3734 (coe v0) (coe v1) (coe v10) (coe v3) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.validGDeps
d_validGDeps_3768 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_ValidCertDeposits_2506 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2784
d_validGDeps_3768 v0 ~v1 v2 v3 v4 v5
  = du_validGDeps_3768 v0 v2 v3 v4 v5
du_validGDeps_3768 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_ValidCertDeposits_2506 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2784
du_validGDeps_3768 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'91''93'_2512
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_'91''93'_2790
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_delegate_2524 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v11 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_delegate_1284 v13 v14 v15 v16
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2820
                           (coe
                              du_castValidDeps'7501'_3678 (coe v0) (coe v1)
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
                                             (let v17
                                                    = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                        (coe v0) in
                                              coe
                                                (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe v17)))
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                      (coe v13))
                                                   (coe v16)))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v17 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3488
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v17)))))))
                                 erased)
                              (coe du_certGDeps_3498 (coe v3)) (coe v12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                 (let v17
                                        = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                       (coe v17)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'GPurpose'63'_3488)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                    (coe v13))
                                 (coe v16) (coe v3))
                              (coe
                                 du_validGDeps_3768 (coe v0) (coe v1) (coe v12)
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
                                                     (let v18
                                                            = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                (coe v0) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                           (coe v18)))
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                             (let v17
                                                    = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                        (coe v0) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe v17)))
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
                                                            MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                            (coe v13))
                                                         (coe v16))))))))
                                    erased)
                                 (coe v10)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_regpool_2532 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_regpool_1288 v11 v12
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2836
                           (coe
                              du_castValidDeps'7501'_3678 (coe v0) (coe v1)
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
                                             (let v13
                                                    = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                        (coe v0) in
                                              coe
                                                (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe v13)))
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                                      (coe v11))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v13 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3488
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v13)))))))
                                 erased)
                              (coe du_certGDeps_3498 (coe v3)) (coe v10)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                 (let v13
                                        = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                       (coe v13)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'GPurpose'63'_3488)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                    (coe v11))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
                                    (coe v1))
                                 (coe v3))
                              (coe
                                 du_validGDeps_3768 (coe v0) (coe v1) (coe v10)
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
                                                     (let v14
                                                            = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                (coe v0) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                           (coe v14)))
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
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
                                             (let v13
                                                    = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                        (coe v0) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe v13)))
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
                                                            MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                                            (coe v11))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
                                                            (coe v1)))))))))
                                    erased)
                                 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_regdrep_2542 v9
        -> case coe v2 of
             (:) v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_regdrep_1292 v12 v13 v14
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2800
                           (coe
                              du_castValidDeps'7501'_3678 (coe v0) (coe v1)
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
                                             (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                      (coe v12))
                                                   (coe v13)))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v15 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3488
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v15)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                    (coe v0))
                                 (coe v1) (coe v10) (coe du_certGDeps_3498 (coe v3)))
                              (coe v11)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'GPurpose'63'_3488)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                    (coe v12))
                                 (coe v3) (coe v13) (coe C_DRepDeposit_3480))
                              (coe
                                 du_validGDeps_3768 (coe v0) (coe v1) (coe v11)
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
                                                        MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                            MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                            (coe v12))
                                                         (coe v13))))))))
                                    erased)
                                 (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_reg_2550 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_reg_1298 v11 v12
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2860
                           (coe
                              du_castValidDeps'7501'_3678 (coe v0) (coe v1)
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
                                             (let v13
                                                    = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                        (coe v0) in
                                              coe
                                                (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe v13)))
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                      (coe v11))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v13 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3488
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v13)))))))
                                 erased)
                              (coe du_certGDeps_3498 (coe v3)) (coe v10)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                 (let v13
                                        = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                       (coe v13)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'GPurpose'63'_3488)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                    (coe v11))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                    (coe v1))
                                 (coe v3))
                              (coe
                                 du_validGDeps_3768 (coe v0) (coe v1) (coe v10)
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
                                                     (let v14
                                                            = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                (coe v0) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                           (coe v14)))
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                             (let v13
                                                    = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                        (coe v0) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe v13)))
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
                                                            MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                            (coe v11))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                            (coe v1)))))))))
                                    erased)
                                 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_dereg_2560 v7 v9 v10 v11
        -> case coe v2 of
             (:) v12 v13
               -> case coe v12 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_dereg_1286 v14 v15
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2828
                           (coe
                              du_castValidDeps'7501'_3678 (coe v0) (coe v1)
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
                                                 = let v16
                                                         = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                             (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                        (coe v16)) in
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                      (coe v14))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v16 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3488
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v16)))))))
                                 erased)
                              (coe du_certGDeps_3498 (coe v3)) (coe v13)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                 (let v16
                                        = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                       (coe v16)))
                                 (coe du_Dec'45'GPurpose'63'_3488)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                    (coe v14))
                                 (coe v3))
                              (coe
                                 du_validGDeps_3768 (coe v0) (coe v1) (coe v13)
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
                                                   (let v16
                                                          = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                              (coe v0) in
                                                    coe
                                                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                         (coe v16)))
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                         (coe v14)))))
                                             (\ v16 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v16)))))
                                    erased)
                                 (coe v11)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_deregdrep_2568 v8 v9
        -> case coe v2 of
             (:) v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_deregdrep_1294 v12 v13
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2808
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45''8712'_4182
                              (coe du_Dec'45'GPurpose'63'_3488) v3
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                 (coe v12))
                              v13 (coe C_DRepDeposit_3480) v8)
                           (coe
                              du_castValidDeps'7501'_3678 (coe v0) (coe v1)
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
                                                 = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                      (coe v12))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                          (coe
                                             (\ v14 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3488
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v14)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1590
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                    (coe v0))
                                 (coe v1) (coe v10) (coe du_certGDeps_3498 (coe v3)))
                              (coe v11)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                       (coe v0)))
                                 (coe du_Dec'45'GPurpose'63'_3488) (coe v3)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    erased
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                       (coe v12))))
                              (coe
                                 du_validGDeps_3768 (coe v0) (coe v1) (coe v11)
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
                                                   (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      erased
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                         (coe v12)))))
                                             (\ v14 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v14)))))
                                    erased)
                                 (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_ccreghot_2576 v8
        -> case coe v2 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2852
                    (coe
                       du_validGDeps_3768 (coe v0) (coe v1) (coe v10) (coe v3) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_retirepool_2584 v8
        -> case coe v2 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2844
                    (coe
                       du_validGDeps_3768 (coe v0) (coe v1) (coe v10) (coe v3) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-prop-ddeps
d_lem'45'upd'45'prop'45'ddeps_3800 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'prop'45'ddeps_3800 v0 ~v1 v2 v3 v4 v5
  = du_lem'45'upd'45'prop'45'ddeps_3800 v0 v2 v3 v4 v5
du_lem'45'upd'45'prop'45'ddeps_3800 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'prop'45'ddeps_3800 v0 v1 v2 v3 v4
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
                (coe du_certDDeps_3490 (coe v4)))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                (coe
                   du_certDDeps_3490
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                         (coe
                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
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
                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122
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
                   (coe du_certDDeps_3490 (coe v4)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                   (coe
                      du_certDDeps_3490
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                   (coe
                      du_certDDeps_3490
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         (coe
                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                         (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                            (coe
                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                               (coe v0)))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
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
                                  MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122
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
                         du_certDDeps_3490
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
                            (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                      (coe
                         du_certDDeps_3490
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                            (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
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
                                     MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                        (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                  (coe v2))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                      (coe
                         du_certDDeps_3490
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                            (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
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
                                     MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122
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
                            du_certDDeps_3490
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                               (coe
                                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                               (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                     (coe v0)))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
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
                                        MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                           (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                     (coe v2)))))))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                      (coe
                         MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                         (coe
                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                      (coe du_Dec'45'DPurpose'63'_3484)
                      (coe
                         MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                            (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                      (coe v2)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                (coe
                   du_lem'45'upd'45'prop'45'ddeps_3800 (coe v0) (coe v1) (coe v2)
                   (coe v6) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-prop-gdeps
d_lem'45'upd'45'prop'45'gdeps_3866 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'prop'45'gdeps_3866 v0 ~v1 v2 v3 v4 v5
  = du_lem'45'upd'45'prop'45'gdeps_3866 v0 v2 v3 v4 v5
du_lem'45'upd'45'prop'45'gdeps_3866 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'prop'45'gdeps_3866 v0 v1 v2 v3 v4
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
                (coe du_certGDeps_3498 (coe v4)))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                (coe
                   du_certGDeps_3498
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                         (coe
                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
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
                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122
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
                   (coe du_certGDeps_3498 (coe v4)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                   (coe
                      du_certGDeps_3498
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                   (coe
                      du_certGDeps_3498
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         (coe
                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                         (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                            (coe
                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                               (coe v0)))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
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
                                  MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122
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
                         du_certGDeps_3498
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
                            (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                      (coe
                         du_certGDeps_3498
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                            (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
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
                                     MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                        (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                  (coe v2))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                      (coe
                         du_certGDeps_3498
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                            (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
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
                                     MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122
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
                            du_certGDeps_3498
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                               (coe
                                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                               (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                     (coe v0)))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
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
                                        MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                           (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                     (coe v2)))))))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                      (coe
                         MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                         (coe
                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                      (coe du_Dec'45'GPurpose'63'_3488)
                      (coe
                         MAlonzo.Code.Ledger.Core.Specification.Certs.C_GovActionDeposit_1122
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                            (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                      (coe v2)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                (coe
                   du_lem'45'upd'45'prop'45'gdeps_3866 (coe v0) (coe v1) (coe v2)
                   (coe v6) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-ddeps
d_lem'45'ddeps_3930 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2866 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lem'45'ddeps_3930 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-gdeps
d_lem'45'gdeps_4008 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2866 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lem'45'gdeps_4008 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits.certDeposits
d_certDeposits_4080 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposits_4080 ~v0 ~v1 v2 = du_certDeposits_4080 v2
du_certDeposits_4080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposits_4080 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_certDDeps_3490 (coe du_deps_4088 (coe v0)))
      (coe du_certGDeps_3498 (coe du_deps_4088 (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.deps
d_deps_4088 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deps_4088 ~v0 ~v1 v2 = du_deps_4088 v2
du_deps_4088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deps_4088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2396
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2812
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._≡ᵈ_
d__'8801''7496'__4094 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7496'__4094 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits.≡ᵈ-isEquivalence
d_'8801''7496''45'isEquivalence_4096 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_'8801''7496''45'isEquivalence_4096 ~v0 ~v1
  = du_'8801''7496''45'isEquivalence_4096
du_'8801''7496''45'isEquivalence_4096 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_'8801''7496''45'isEquivalence_4096
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
d_cong'45'updateDDep_4118 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateDDep_4118 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateDDep_4118 v0 v2 v3 v4 v5 v6
du_cong'45'updateDDep_4118 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateDDep_4118 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_delegate_1284 v6 v7 v8 v9
        -> coe
             du_cong'45'updateCertDeposit_3514 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_dereg_1286 v6 v7
        -> coe
             du_cong'45'updateCertDeposit_3514 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_regpool_1288 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_retirepool_1290 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_regdrep_1292 v6 v7 v8
        -> coe v5
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_deregdrep_1294 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_ccreghot_1296 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_reg_1298 v6 v7
        -> coe
             du_cong'45'updateCertDeposit_3514 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateDDeps
d_cong'45'updateDDeps_4176 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateDDeps_4176 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateDDeps_4176 v0 v2 v3 v4 v5 v6
du_cong'45'updateDDeps_4176 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateDDeps_4176 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      [] -> coe v5
      (:) v6 v7
        -> coe
             du_cong'45'updateDDeps_4176 (coe v0) (coe v1) (coe v7)
             (coe du_updateDDep_3378 (coe v0) (coe v1) (coe v6) (coe v3))
             (coe du_updateDDep_3378 (coe v0) (coe v1) (coe v6) (coe v4))
             (coe
                du_cong'45'updateDDep_4118 (coe v0) (coe v1) (coe v6) (coe v3)
                (coe v4) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateGDep
d_cong'45'updateGDep_4194 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateGDep_4194 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateGDep_4194 v0 v2 v3 v4 v5 v6
du_cong'45'updateGDep_4194 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateGDep_4194 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_delegate_1284 v6 v7 v8 v9
        -> coe v5
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_dereg_1286 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_regpool_1288 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_retirepool_1290 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_regdrep_1292 v6 v7 v8
        -> coe
             du_cong'45'updateCertDeposit_3514 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_deregdrep_1294 v6 v7
        -> coe
             du_cong'45'updateCertDeposit_3514 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_ccreghot_1296 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_reg_1298 v6 v7
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateGDeps
d_cong'45'updateGDeps_4232 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateGDeps_4232 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateGDeps_4232 v0 v2 v3 v4 v5 v6
du_cong'45'updateGDeps_4232 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateGDeps_4232 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      [] -> coe v5
      (:) v6 v7
        -> coe
             du_cong'45'updateGDeps_4232 (coe v0) (coe v1) (coe v7)
             (coe du_updateGDep_3418 (coe v0) (coe v1) (coe v6) (coe v3))
             (coe du_updateGDep_3418 (coe v0) (coe v1) (coe v6) (coe v4))
             (coe
                du_cong'45'updateGDep_4194 (coe v0) (coe v1) (coe v6) (coe v3)
                (coe v4) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-cert-ddeps
d_lem'45'upd'45'cert'45'ddeps_4274 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'cert'45'ddeps_4274 v0 ~v1 v2 v3 v4
  = du_lem'45'upd'45'cert'45'ddeps_4274 v0 v2 v3 v4
du_lem'45'upd'45'cert'45'ddeps_4274 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'cert'45'ddeps_4274 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v4 v5 -> v5))
             (coe (\ v4 v5 -> v5))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_delegate_1284 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v10 v11 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                        (coe v0)))
                                  v2 (coe du_dep_4296 (coe v6) (coe v9)))
                               (coe v5))
                            v10
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v12
                                      = coe
                                          du_cong'45'updateDDeps_4176 (coe v0) (coe v1) (coe v5)
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
                                                         (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                  (coe v6))
                                                               (coe v9)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v12 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3484
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                                 (\ v13 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3484
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
                                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                    du_Dec'45'DPurpose'63'_3484
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
                                                                     MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                     (coe v6))
                                                                  (coe v9))))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'DPurpose'63'_3484)
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                (coe v6))
                                             (coe v2) (coe v9) (coe C_CredentialDeposit_3474)) in
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
                                       du_cong'45'updateDDeps_4176 (coe v0) (coe v1) (coe v5)
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
                                                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                               (coe v6))
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v12 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3484
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                              (\ v13 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3484
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
                                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                 du_Dec'45'DPurpose'63'_3484
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
                                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                  (coe v6))
                                                               (coe v9))))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'DPurpose'63'_3484)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                             (coe v6))
                                          (coe v2) (coe v9) (coe C_CredentialDeposit_3474)) in
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
                                  du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                           (coe v0)))
                                     v2 (coe du_dep_4296 (coe v6) (coe v9)))
                                  (coe v5))
                               v10 v11)))
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_dereg_1286 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1)
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
                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                           (coe v0))))
                                  (coe v2) (coe du_cs_4312 (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateDDeps_4176 (coe v0) (coe v1) (coe v5)
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
                                                             = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                            (coe v2) (coe du_cs_4312 (coe v6)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3484
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
                                                              du_Dec'45'DPurpose'63'_3484
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
                                                            (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                  (coe v0)))
                                                            (coe du_cs_4312 (coe v6))))
                                                      (\ v10 ->
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v10)))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0)))
                                             (coe du_Dec'45'DPurpose'63'_3484) (coe v2)
                                             (coe du_cs_4312 (coe v6))) in
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
                                       du_cong'45'updateDDeps_4176 (coe v0) (coe v1) (coe v5)
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
                                                          = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                         (coe v2) (coe du_cs_4312 (coe v6)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3484
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
                                                           du_Dec'45'DPurpose'63'_3484
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
                                                         (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                               (coe v0)))
                                                         (coe du_cs_4312 (coe v6))))
                                                   (\ v10 ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v10)))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                (coe v0)))
                                          (coe du_Dec'45'DPurpose'63'_3484) (coe v2)
                                          (coe du_cs_4312 (coe v6))) in
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
                                  du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1)
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
                                        (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                           (coe
                                              MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                              (coe v0))))
                                     (coe v2) (coe du_cs_4312 (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_regpool_1288 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1)
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
                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                           (coe v0))))
                                  (coe v2) (coe du_dep_4344 (coe v1) (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateDDeps_4176 (coe v0) (coe v1) (coe v5)
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
                                                            (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                  (coe v0))))
                                                         (coe v2)
                                                         (coe du_dep_4344 (coe v1) (coe v6))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3484
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
                                                              du_Dec'45'DPurpose'63'_3484
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
                                                (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                                (coe v6))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                (coe du_Dec'45'DPurpose'63'_3484))
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
                                       du_cong'45'updateDDeps_4176 (coe v0) (coe v1) (coe v5)
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
                                                         (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                               (coe v0))))
                                                      (coe v2) (coe du_dep_4344 (coe v1) (coe v6))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3484
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
                                                           du_Dec'45'DPurpose'63'_3484
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
                                             (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                             (coe v6))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                             (coe du_Dec'45'DPurpose'63'_3484))
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
                                  du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1)
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
                                        (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                           (coe
                                              MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                              (coe v0))))
                                     (coe v2) (coe du_dep_4344 (coe v1) (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_retirepool_1290 v6 v7
               -> coe
                    du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1) (coe v2)
                    (coe v5)
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_regdrep_1292 v6 v7 v8
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                        (coe v0)))
                                  v2 (coe du_dep_4364 (coe v6) (coe v7)))
                               (coe v5))
                            v9
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v11
                                      = coe
                                          du_cong'45'updateDDeps_4176 (coe v0) (coe v1) (coe v5)
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
                                                         (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                                  (coe v6))
                                                               (coe v7)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v11 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3484
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
                                                              du_Dec'45'DPurpose'63'_3484
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v11)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'DPurpose'63'_3484)
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                       du_cong'45'updateDDeps_4176 (coe v0) (coe v1) (coe v5)
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
                                                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                               (coe v6))
                                                            (coe v7)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v11 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3484
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
                                                           du_Dec'45'DPurpose'63'_3484
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v11)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'DPurpose'63'_3484)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                  du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                           (coe v0)))
                                     v2 (coe du_dep_4364 (coe v6) (coe v7)))
                                  (coe v5))
                               v9 v10)))
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_deregdrep_1294 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1)
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
                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                           (coe v0))))
                                  (coe v2) (coe du_cs_4380 (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateDDeps_4176 (coe v0) (coe v1) (coe v5)
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
                                                             = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                                  (coe v6))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3484
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
                                                              du_Dec'45'DPurpose'63'_3484
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0)))
                                             (coe du_Dec'45'DPurpose'63'_3484)
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                       du_cong'45'updateDDeps_4176 (coe v0) (coe v1) (coe v5)
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
                                                          = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                               (coe v6))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3484
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
                                                           du_Dec'45'DPurpose'63'_3484
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                (coe v0)))
                                          (coe du_Dec'45'DPurpose'63'_3484)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                  du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1)
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
                                        (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                           (coe
                                              MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                              (coe v0))))
                                     (coe v2) (coe du_cs_4380 (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_ccreghot_1296 v6 v7
               -> coe
                    du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1) (coe v2)
                    (coe v5)
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_reg_1298 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                        (coe v0)))
                                  v2 (coe du_dep_4328 (coe v1) (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateDDeps_4176 (coe v0) (coe v1) (coe v5)
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
                                                         (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                                  (coe v1))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3484
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                                 (\ v11 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3484
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
                                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                       (coe v6))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                    du_Dec'45'DPurpose'63'_3484
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
                                                                     MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                     (coe v6))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                                     (coe v1)))))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'DPurpose'63'_3484)
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                (coe v6))
                                             (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                (coe v1))
                                             (coe C_CredentialDeposit_3474)) in
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
                                       du_cong'45'updateDDeps_4176 (coe v0) (coe v1) (coe v5)
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
                                                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                               (coe v6))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                               (coe v1))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3484
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                              (\ v11 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3484
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
                                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                    (coe v6))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                 du_Dec'45'DPurpose'63'_3484
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
                                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                                  (coe v1)))))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'DPurpose'63'_3484)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                             (coe v6))
                                          (coe v2)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                             (coe v1))
                                          (coe C_CredentialDeposit_3474)) in
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
                                  du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                           (coe v0)))
                                     v2 (coe du_dep_4328 (coe v1) (coe v6)))
                                  (coe v5))
                               v8 v9)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4296 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_VDeleg_932 ->
  Maybe AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4296 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 ~v8 = du_dep_4296 v4 v7
du_dep_4296 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4296 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.cs
d_cs_4312 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DepositPurpose_1114]
d_cs_4312 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_cs_4312 v4
du_cs_4312 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DepositPurpose_1114]
du_cs_4312 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      erased
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4328 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4328 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 = du_dep_4328 v2 v4
du_dep_4328 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4328 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
            (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4344 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4344 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 = du_dep_4344 v2 v4
du_dep_4344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4344 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
            (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4364 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_884 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4364 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 = du_dep_4364 v4 v5
du_dep_4364 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4364 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.cs
d_cs_4380 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DepositPurpose_1114]
d_cs_4380 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_cs_4380 v4
du_cs_4380 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DepositPurpose_1114]
du_cs_4380 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      erased
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-cert-gdeps
d_lem'45'upd'45'cert'45'gdeps_4396 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'cert'45'gdeps_4396 v0 ~v1 v2 v3 v4
  = du_lem'45'upd'45'cert'45'gdeps_4396 v0 v2 v3 v4
du_lem'45'upd'45'cert'45'gdeps_4396 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'cert'45'gdeps_4396 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v4 v5 -> v5))
             (coe (\ v4 v5 -> v5))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_delegate_1284 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v10 v11 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                        (coe v0)))
                                  v2 (coe du_dep_4418 (coe v6) (coe v9)))
                               (coe v5))
                            v10
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v12
                                      = coe
                                          du_cong'45'updateGDeps_4232 (coe v0) (coe v1) (coe v5)
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
                                                         (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                  (coe v6))
                                                               (coe v9)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v12 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3488
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
                                                              du_Dec'45'GPurpose'63'_3488
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v12)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'GPurpose'63'_3488)
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                       du_cong'45'updateGDeps_4232 (coe v0) (coe v1) (coe v5)
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
                                                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                               (coe v6))
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v12 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3488
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
                                                           du_Dec'45'GPurpose'63'_3488
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v12)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'GPurpose'63'_3488)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                  du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                           (coe v0)))
                                     v2 (coe du_dep_4418 (coe v6) (coe v9)))
                                  (coe v5))
                               v10 v11)))
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_dereg_1286 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1)
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
                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                           (coe v0))))
                                  (coe v2) (coe du_cs_4434 (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateGDeps_4232 (coe v0) (coe v1) (coe v5)
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
                                                             = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                  (coe v6))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3488
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
                                                              du_Dec'45'GPurpose'63'_3488
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0)))
                                             (coe du_Dec'45'GPurpose'63'_3488)
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                       du_cong'45'updateGDeps_4232 (coe v0) (coe v1) (coe v5)
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
                                                          = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                               (coe v6))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3488
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
                                                           du_Dec'45'GPurpose'63'_3488
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5190
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                (coe v0)))
                                          (coe du_Dec'45'GPurpose'63'_3488)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                  du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1)
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
                                        (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                           (coe
                                              MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                              (coe v0))))
                                     (coe v2) (coe du_cs_4434 (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_regpool_1288 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1)
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
                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                           (coe v0))))
                                  (coe v2) (coe du_dep_4466 (coe v1) (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateGDeps_4232 (coe v0) (coe v1) (coe v5)
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
                                                            (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                  (coe v0))))
                                                         (coe v2)
                                                         (coe du_dep_4466 (coe v1) (coe v6))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3488
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
                                                              du_Dec'45'GPurpose'63'_3488
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
                                                (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                                (coe v6))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                (coe du_Dec'45'GPurpose'63'_3488))
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
                                       du_cong'45'updateGDeps_4232 (coe v0) (coe v1) (coe v5)
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
                                                         (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                               (coe v0))))
                                                      (coe v2) (coe du_dep_4466 (coe v1) (coe v6))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3488
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
                                                           du_Dec'45'GPurpose'63'_3488
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
                                             (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                             (coe v6))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                             (coe du_Dec'45'GPurpose'63'_3488))
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
                                  du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1)
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
                                        (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                           (coe
                                              MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                              (coe v0))))
                                     (coe v2) (coe du_dep_4466 (coe v1) (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_retirepool_1290 v6 v7
               -> coe
                    du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1) (coe v2)
                    (coe v5)
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_regdrep_1292 v6 v7 v8
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                        (coe v0)))
                                  v2 (coe du_dep_4486 (coe v6) (coe v7)))
                               (coe v5))
                            v9
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v11
                                      = coe
                                          du_cong'45'updateGDeps_4232 (coe v0) (coe v1) (coe v5)
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
                                                         (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                                  (coe v6))
                                                               (coe v7)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v11 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3488
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                                 (\ v12 ->
                                                                    coe
                                                                      du_Dec'45'GPurpose'63'_3488
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
                                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                    du_Dec'45'GPurpose'63'_3488
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
                                                                     MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                                     (coe v6))
                                                                  (coe v7))))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'GPurpose'63'_3488)
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                (coe v6))
                                             (coe v2) (coe v7) (coe C_DRepDeposit_3480)) in
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
                                       du_cong'45'updateGDeps_4232 (coe v0) (coe v1) (coe v5)
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
                                                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                               (coe v6))
                                                            (coe v7)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v11 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3488
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
                                                              (\ v12 ->
                                                                 coe
                                                                   du_Dec'45'GPurpose'63'_3488
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
                                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                 du_Dec'45'GPurpose'63'_3488
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
                                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                                  (coe v6))
                                                               (coe v7))))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'GPurpose'63'_3488)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                             (coe v6))
                                          (coe v2) (coe v7) (coe C_DRepDeposit_3480)) in
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
                                  du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                           (coe v0)))
                                     v2 (coe du_dep_4486 (coe v6) (coe v7)))
                                  (coe v5))
                               v9 v10)))
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_deregdrep_1294 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1)
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
                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                           (coe v0))))
                                  (coe v2) (coe du_cs_4502 (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateGDeps_4232 (coe v0) (coe v1) (coe v5)
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
                                                             = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                            (coe v2) (coe du_cs_4502 (coe v6)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3488
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
                                                              du_Dec'45'GPurpose'63'_3488
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
                                                            (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                  (coe v0)))
                                                            (coe du_cs_4502 (coe v6))))
                                                      (\ v10 ->
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v10)))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0)))
                                             (coe du_Dec'45'GPurpose'63'_3488) (coe v2)
                                             (coe du_cs_4502 (coe v6))) in
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
                                       du_cong'45'updateGDeps_4232 (coe v0) (coe v1) (coe v5)
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
                                                          = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                         (coe v2) (coe du_cs_4502 (coe v6)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3488
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
                                                           du_Dec'45'GPurpose'63'_3488
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
                                                         (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                               (coe v0)))
                                                         (coe du_cs_4502 (coe v6))))
                                                   (\ v10 ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v10)))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                (coe v0)))
                                          (coe du_Dec'45'GPurpose'63'_3488) (coe v2)
                                          (coe du_cs_4502 (coe v6))) in
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
                                  du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1)
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
                                        (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                           (coe
                                              MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                              (coe v0))))
                                     (coe v2) (coe du_cs_4502 (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_ccreghot_1296 v6 v7
               -> coe
                    du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1) (coe v2)
                    (coe v5)
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_reg_1298 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                        (coe v0)))
                                  v2 (coe du_dep_4450 (coe v1) (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateGDeps_4232 (coe v0) (coe v1) (coe v5)
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
                                                         (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                                  (coe v1))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3488
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
                                                              du_Dec'45'GPurpose'63'_3488
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'GPurpose'63'_3488)
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                (coe v6))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                       du_cong'45'updateGDeps_4232 (coe v0) (coe v1) (coe v5)
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
                                                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                               (coe v6))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                               (coe v1))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3488
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
                                                           du_Dec'45'GPurpose'63'_3488
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5178
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'GPurpose'63'_3488)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                             (coe v6))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                  du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                           (coe v0)))
                                     v2 (coe du_dep_4450 (coe v1) (coe v6)))
                                  (coe v5))
                               v8 v9)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4418 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_VDeleg_932 ->
  Maybe AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4418 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 ~v8 = du_dep_4418 v4 v7
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
            MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.cs
d_cs_4434 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DepositPurpose_1114]
d_cs_4434 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_cs_4434 v4
du_cs_4434 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DepositPurpose_1114]
du_cs_4434 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      erased
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4450 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4450 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 = du_dep_4450 v2 v4
du_dep_4450 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4450 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
            (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4466 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4466 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 = du_dep_4466 v2 v4
du_dep_4466 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4466 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
            (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4486 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_884 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4486 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 = du_dep_4486 v4 v5
du_dep_4486 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4486 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.cs
d_cs_4502 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DepositPurpose_1114]
d_cs_4502 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_cs_4502 v4
du_cs_4502 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DepositPurpose_1114]
du_cs_4502 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      erased
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.txCerts
d_txCerts_4520 ::
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
d_txCerts_4520 ~v0 ~v1 ~v2 v3 = du_txCerts_4520 v3
du_txCerts_4520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
du_txCerts_4520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-ddeps
d_lem'45'upd'45'ddeps_4522 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'ddeps_4522 v0 ~v1 v2 v3 v4
  = du_lem'45'upd'45'ddeps_4522 v0 v2 v3 v4
du_lem'45'upd'45'ddeps_4522 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'ddeps_4522 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            du_updateDDeps_3404 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                  (coe v3)))
            (coe du_certDDeps_3490 (coe v2))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            du_certDDeps_3490
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2856
               (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
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
               du_updateDDeps_3404 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                     (coe v3)))
               (coe du_certDDeps_3490 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               du_updateDDeps_3404 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                     (coe v3)))
               (coe du_certDDeps_3490 (coe du_updateProp_4616 v0 v1 v3 v2))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               du_certDDeps_3490
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2856
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
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
                  du_updateDDeps_3404 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                        (coe v3)))
                  (coe du_certDDeps_3490 (coe du_updateProp_4616 v0 v1 v3 v2))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  du_certDDeps_3490
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2856
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                        (coe v3))
                     (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  du_certDDeps_3490
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2856
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
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
                     du_certDDeps_3490
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2856
                        (coe v0) (coe v1)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                           (coe v3))
                        (coe v2)))))
            (coe
               du_lem'45'upd'45'cert'45'ddeps_4274 (coe v0) (coe v1)
               (coe du_updateProp_4616 v0 v1 v3 v2)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                     (coe v3)))))
         (coe
            du_cong'45'updateDDeps_4176 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
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
                                du_Dec'45'DPurpose'63'_3484
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
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_2246
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2230
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
                              (coe v1))
                           (coe v2)))
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                        (coe
                           (\ v4 ->
                              coe
                                du_Dec'45'DPurpose'63'_3484
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))))
               erased)
            (coe
               du_lem'45'upd'45'prop'45'ddeps_3800 (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2230
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                     (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_2246
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                     (coe v3)))
               (coe v2))))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.updateProp
d_updateProp_4616 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProp_4616 v0 ~v1 v2 ~v3 v4 = du_updateProp_4616 v0 v2 v4
du_updateProp_4616 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProp_4616 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
      (coe v0)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_2246
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2230
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.txCerts
d_txCerts_4626 ::
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
d_txCerts_4626 ~v0 ~v1 ~v2 v3 = du_txCerts_4626 v3
du_txCerts_4626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
du_txCerts_4626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-gdeps
d_lem'45'upd'45'gdeps_4628 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'gdeps_4628 v0 ~v1 v2 v3 v4
  = du_lem'45'upd'45'gdeps_4628 v0 v2 v3 v4
du_lem'45'upd'45'gdeps_4628 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'gdeps_4628 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            du_updateGDeps_3438 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                  (coe v3)))
            (coe du_certGDeps_3498 (coe v2))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            du_certGDeps_3498
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2856
               (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
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
               du_updateGDeps_3438 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                     (coe v3)))
               (coe du_certGDeps_3498 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               du_updateGDeps_3438 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                     (coe v3)))
               (coe du_certGDeps_3498 (coe du_updateProp_4722 v0 v1 v3 v2))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
            (coe
               du_certGDeps_3498
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2856
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
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
                  du_updateGDeps_3438 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                        (coe v3)))
                  (coe du_certGDeps_3498 (coe du_updateProp_4722 v0 v1 v3 v2))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  du_certGDeps_3498
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2856
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                        (coe v3))
                     (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  du_certGDeps_3498
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2856
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
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
                     du_certGDeps_3498
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2856
                        (coe v0) (coe v1)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                           (coe v3))
                        (coe v2)))))
            (coe
               du_lem'45'upd'45'cert'45'gdeps_4396 (coe v0) (coe v1)
               (coe du_updateProp_4722 v0 v1 v3 v2)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                     (coe v3)))))
         (coe
            du_cong'45'updateGDeps_4232 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2232
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
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
                                du_Dec'45'GPurpose'63'_3488
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
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_2246
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2230
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
                              (coe v1))
                           (coe v2)))
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1206
                        (coe
                           (\ v4 ->
                              coe
                                du_Dec'45'GPurpose'63'_3488
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))))
               erased)
            (coe
               du_lem'45'upd'45'prop'45'gdeps_3866 (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2230
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                     (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_2246
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
                     (coe v3)))
               (coe v2))))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.updateProp
d_updateProp_4722 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProp_4722 v0 ~v1 v2 ~v3 v4 = du_updateProp_4722 v0 v2 v4
du_updateProp_4722 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProp_4722 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2844
      (coe v0)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_2246
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2230
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2354
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits.lemUpdCert
d_lemUpdCert_4736 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lemUpdCert_4736 v0 ~v1 v2 v3 v4 v5 v6
  = du_lemUpdCert_4736 v0 v2 v3 v4 v5 v6
du_lemUpdCert_4736 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lemUpdCert_4736 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> case coe v4 of
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_delegate_1284 v8 v9 v10 v11
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'DPurpose'63'_3484)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                    (coe v8))
                                                 (coe v3) (coe v11)
                                                 (coe C_CredentialDeposit_3474) in
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
                                               MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                                du_Dec'45'DPurpose'63'_3484
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
                                                                      du_Dec'45'DPurpose'63'_3484
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
                                                                              du_Dec'45'DPurpose'63'_3484
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
                                                                              du_Dec'45'DPurpose'63'_3484
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
                                               MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                                du_Dec'45'DPurpose'63'_3484
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
                                                                      du_Dec'45'DPurpose'63'_3484
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
                                                                              du_Dec'45'DPurpose'63'_3484
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
                                                                              du_Dec'45'DPurpose'63'_3484
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
                                                     MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                            MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                        MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                            MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                        MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                             du_Dec'45'DPurpose'63'_3484
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
                                                                   du_Dec'45'DPurpose'63'_3484
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
                                                                           du_Dec'45'DPurpose'63'_3484
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
                                                                           du_Dec'45'DPurpose'63'_3484
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
                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                   du_Dec'45'DPurpose'63'_3484
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
                                                                         du_Dec'45'DPurpose'63'_3484
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
                                                                                 du_Dec'45'DPurpose'63'_3484
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
                                                                                 du_Dec'45'DPurpose'63'_3484
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                              (coe v8))
                                                           (coe v11))))))
                                            v14
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (let v16
                                                      = coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                             (coe
                                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                          (coe du_Dec'45'DPurpose'63'_3484)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                             (coe v8))
                                                          (coe v3) (coe v11)
                                                          (coe C_CredentialDeposit_3474) in
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'GPurpose'63'_3488)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'GPurpose'63'_3488)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_dereg_1286 v8 v9
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                       (coe v0)))
                                                 (coe du_Dec'45'DPurpose'63'_3484) (coe v3)
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                             = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                       (coe v8)) in
                                          coe
                                            (let v16 = coe du_certDDeps_3490 (coe v3) in
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
                                                                (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                   MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                                            (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                          = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                          (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                (coe v0))))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                          (coe du_certDDeps_3490 (coe v3)))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                             (coe v8)))
                                                       v12
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (let v17
                                                                 = coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                           (coe v0)))
                                                                     (coe
                                                                        du_Dec'45'DPurpose'63'_3484)
                                                                     (coe v3)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        erased
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                                (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe du_certDDeps_3490 (coe v3)))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                      (coe
                                                                         du_certDDeps_3490
                                                                         (coe v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                         (coe v8))))
                                                                (coe v12)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (let v18
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                                    (coe v0)))
                                                                              (coe
                                                                                 du_Dec'45'DPurpose'63'_3484)
                                                                              (coe v3)
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 erased
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                       (coe v0)))
                                                 (coe du_Dec'45'GPurpose'63'_3488)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                          (coe v0)))
                                                    (coe du_Dec'45'GPurpose'63'_3488)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
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
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_regpool_1288 v8 v9
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'DPurpose'63'_3484)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                                    (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
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
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'DPurpose'63'_3484)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                                       (coe v8))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'GPurpose'63'_3488)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                                    (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
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
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'GPurpose'63'_3488)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_PoolDeposit_1118
                                                       (coe v8))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
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
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_retirepool_1290 v8 v9
               -> coe v5
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_regdrep_1292 v8 v9 v10
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'DPurpose'63'_3484)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'DPurpose'63'_3484)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'GPurpose'63'_3488)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                    (coe v8))
                                                 (coe v3) (coe v9) (coe C_DRepDeposit_3480) in
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
                                               MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                                du_Dec'45'GPurpose'63'_3488
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
                                                                      du_Dec'45'GPurpose'63'_3488
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
                                                                              du_Dec'45'GPurpose'63'_3488
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
                                                                              du_Dec'45'GPurpose'63'_3488
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
                                               MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                                du_Dec'45'GPurpose'63'_3488
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
                                                                      du_Dec'45'GPurpose'63'_3488
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
                                                                              du_Dec'45'GPurpose'63'_3488
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
                                                                              du_Dec'45'GPurpose'63'_3488
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
                                                     MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                            MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                        MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                            MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                        MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                             du_Dec'45'GPurpose'63'_3488
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
                                                                   du_Dec'45'GPurpose'63'_3488
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
                                                                           du_Dec'45'GPurpose'63'_3488
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
                                                                           du_Dec'45'GPurpose'63'_3488
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
                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                   du_Dec'45'GPurpose'63'_3488
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
                                                                         du_Dec'45'GPurpose'63'_3488
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
                                                                                 du_Dec'45'GPurpose'63'_3488
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
                                                                                 du_Dec'45'GPurpose'63'_3488
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                              (coe v8))
                                                           (coe v9))))))
                                            v13
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (let v15
                                                      = coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                             (coe
                                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                          (coe du_Dec'45'GPurpose'63'_3488)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                             (coe v8))
                                                          (coe v3) (coe v9)
                                                          (coe C_DRepDeposit_3480) in
                                                coe
                                                  (case coe v15 of
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                       -> coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v17) (coe v16)
                                                     _ -> MAlonzo.RTE.mazUnreachableError))
                                               v13 v14))))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_deregdrep_1294 v8 v9
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                       (coe v0)))
                                                 (coe du_Dec'45'DPurpose'63'_3484)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                          (coe v0)))
                                                    (coe du_Dec'45'DPurpose'63'_3484)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                       (coe v0)))
                                                 (coe du_Dec'45'GPurpose'63'_3488) (coe v3)
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                             = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                       (coe v8)) in
                                          coe
                                            (let v16 = coe du_certGDeps_3498 (coe v3) in
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
                                                                (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                   MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                                            (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                               MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                          = MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                          (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                (coe v0))))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                          (coe du_certGDeps_3498 (coe v3)))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                             (coe v8)))
                                                       v12
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (let v17
                                                                 = coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                           (coe v0)))
                                                                     (coe
                                                                        du_Dec'45'GPurpose'63'_3488)
                                                                     (coe v3)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        erased
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                                (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                (coe du_certGDeps_3498 (coe v3)))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
                                                                      (MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                      (coe
                                                                         du_certGDeps_3498
                                                                         (coe v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
                                                                         (coe v8))))
                                                                (coe v12)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (let v18
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4990
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                                    (coe v0)))
                                                                              (coe
                                                                                 du_Dec'45'GPurpose'63'_3488)
                                                                              (coe v3)
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 erased
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_DRepDeposit_1120
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
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_ccreghot_1296 v8 v9
               -> coe v5
             MAlonzo.Code.Ledger.Core.Specification.Certs.C_reg_1298 v8 v9
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'DPurpose'63'_3484)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                    (coe v8))
                                                 (coe v3)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                    (coe v1))
                                                 (coe C_CredentialDeposit_3474) in
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
                                               MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                              (coe v8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                           (coe v8))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                                                du_Dec'45'DPurpose'63'_3484
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
                                                                      du_Dec'45'DPurpose'63'_3484
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
                                                                              du_Dec'45'DPurpose'63'_3484
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
                                                                              du_Dec'45'DPurpose'63'_3484
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
                                               MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                              (coe v8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                           (coe v8))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                                                du_Dec'45'DPurpose'63'_3484
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
                                                                      du_Dec'45'DPurpose'63'_3484
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
                                                                              du_Dec'45'DPurpose'63'_3484
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
                                                                              du_Dec'45'DPurpose'63'_3484
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
                                                     MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                    (coe v8))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                 (coe v8))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                                 (coe v1)))))))
                                               v12 v13)))))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3704
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                           (coe v8))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                                        MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                        (coe v8))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                            MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                           MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                           (coe v8))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                                        MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                        (coe v8))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                                             du_Dec'45'DPurpose'63'_3484
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
                                                                   du_Dec'45'DPurpose'63'_3484
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
                                                                           du_Dec'45'DPurpose'63'_3484
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
                                                                           du_Dec'45'DPurpose'63'_3484
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
                                                  MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
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
                                                                   du_Dec'45'DPurpose'63'_3484
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
                                                                         du_Dec'45'DPurpose'63'_3484
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
                                                                                 du_Dec'45'DPurpose'63'_3484
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
                                                                                 du_Dec'45'DPurpose'63'_3484
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                                 (coe v8))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                              (coe v8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                              (coe v1)))))))
                                            v12
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (let v14
                                                      = coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5170
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                             (coe
                                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                          (coe du_Dec'45'DPurpose'63'_3484)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                             (coe v8))
                                                          (coe v3)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                                             (coe v1))
                                                          (coe C_CredentialDeposit_3474) in
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
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'GPurpose'63'_3488)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                    (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2490
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'GPurpose'63'_3488)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Certs.C_CredentialDeposit_1116
                                                       (coe v8))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
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
