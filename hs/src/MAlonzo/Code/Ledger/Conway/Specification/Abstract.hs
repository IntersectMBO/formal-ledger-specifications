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

module MAlonzo.Code.Ledger.Conway.Specification.Abstract where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address

-- Ledger.Conway.Specification.Abstract._.CostModel
d_CostModel_58 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_58 = erased
-- Ledger.Conway.Specification.Abstract._.T
d_T_72 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_72 = erased
-- Ledger.Conway.Specification.Abstract._.ExUnits
d_ExUnits_172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_172 = erased
-- Ledger.Conway.Specification.Abstract._.GovProposal
d_GovProposal_196 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovVoter
d_GovVoter_210 a0 = ()
-- Ledger.Conway.Specification.Abstract._.LangDepView
d_LangDepView_392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_LangDepView_392 = erased
-- Ledger.Conway.Specification.Abstract._.Language
d_Language_394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_394 = erased
-- Ledger.Conway.Specification.Abstract._.MemoryEstimate
d_MemoryEstimate_402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_402 = erased
-- Ledger.Conway.Specification.Abstract._.PlutusScript
d_PlutusScript_430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_430 = erased
-- Ledger.Conway.Specification.Abstract._.PParams
d_PParams_436 a0 = ()
-- Ledger.Conway.Specification.Abstract._.Prices
d_Prices_468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_468 = erased
-- Ledger.Conway.Specification.Abstract._.RewardAddress
d_RewardAddress_484 a0 = ()
-- Ledger.Conway.Specification.Abstract._.Script
d_Script_494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_494 = erased
-- Ledger.Conway.Specification.Abstract._.ScriptHash
d_ScriptHash_502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_502 = erased
-- Ledger.Conway.Specification.Abstract._.Slot
d_Slot_556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_556 = erased
-- Ledger.Conway.Specification.Abstract._.TxIn
d_TxIn_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_598 = erased
-- Ledger.Conway.Specification.Abstract._.Value
d_Value_628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_628 = erased
-- Ledger.Conway.Specification.Abstract._.Withdrawals
d_Withdrawals_638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_638 = erased
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal
d_GovProposal_978 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter
d_GovVoter_990 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.action
d_action_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_860
d_action_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1022
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.anchor
d_anchor_1122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_916
d_anchor_1122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1032
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.deposit
d_deposit_1124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  Integer
d_deposit_1124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1028
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.policy
d_policy_1126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  Maybe AgdaAny
d_policy_1126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1026
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.prevAction
d_prevAction_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  AgdaAny
d_prevAction_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1024
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.returnAddr
d_returnAddr_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1030
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter.gvCredential
d_gvCredential_1152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_904 ->
  AgdaAny
d_gvCredential_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_912
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter.gvRole
d_gvRole_1154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_904 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_814
d_gvRole_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_910
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.Emax
d_Emax_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_Emax_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_396
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.a
d_a_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_a_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_368 (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.a0
d_a0_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_400 (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.b
d_b_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_b_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_370 (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.ccMaxTermLength
d_ccMaxTermLength_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMaxTermLength_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_412
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.ccMinSize
d_ccMinSize_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMinSize_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_410
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_coinsPerUTxOByte_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_380
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.collateralPercentage
d_collateralPercentage_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_collateralPercentage_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_402
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.costmdlsAssoc
d_costmdlsAssoc_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_404
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.drepActivity
d_drepActivity_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_drepActivity_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_420
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.drepDeposit
d_drepDeposit_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_drepDeposit_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_418
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.drepThresholds
d_drepThresholds_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210
d_drepThresholds_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_408
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.govActionDeposit
d_govActionDeposit_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionDeposit_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.govActionLifetime
d_govActionLifetime_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionLifetime_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_414
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.keyDeposit
d_keyDeposit_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_keyDeposit_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxBlockExUnits
d_maxBlockExUnits_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxBlockExUnits_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_360
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxBlockSize
d_maxBlockSize_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxBlockSize_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_352
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxCollateralInputs
d_maxCollateralInputs_1394 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxCollateralInputs_1394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_364
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxHeaderSize
d_maxHeaderSize_1396 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxHeaderSize_1396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_356
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerBlock_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_388
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1400 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerTx_1400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_386
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxTxExUnits
d_maxTxExUnits_1402 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxTxExUnits_1402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_358
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxTxSize
d_maxTxSize_1404 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxTxSize_1404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_354
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxValSize
d_maxValSize_1406 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxValSize_1406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_362
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1408 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_384
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.minUTxOValue
d_minUTxOValue_1410 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_minUTxOValue_1410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_394
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.monetaryExpansion
d_monetaryExpansion_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_376
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.nopt
d_nopt_1414 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_nopt_1414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_398
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.poolDeposit
d_poolDeposit_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_poolDeposit_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.poolThresholds
d_poolThresholds_1418 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254
d_poolThresholds_1418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_406
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.prices
d_prices_1420 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_prices_1420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_382
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.pv
d_pv_1422 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_366 (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_392
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.refScriptCostStride
d_refScriptCostStride_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_390
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.treasuryCut
d_treasuryCut_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_378
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.RewardAddress.net
d_net_1628 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1628 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Abstract._.RewardAddress.stake
d_stake_1630 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1630 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Abstract._.DCert
d_DCert_1972 a0 = ()
-- Ledger.Conway.Specification.Abstract._.ScriptPurpose
d_ScriptPurpose_2356 a0 = ()
-- Ledger.Conway.Specification.Abstract._.TxInfo
d_TxInfo_2360 a0 = ()
-- Ledger.Conway.Specification.Abstract._.TxInfo.fee
d_fee_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2362 ->
  AgdaAny
d_fee_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_fee_2390
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.mint
d_mint_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2362 ->
  AgdaAny
d_mint_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_mint_2392
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.realizedInputs
d_realizedInputs_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2362 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_realizedInputs_2386
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txCerts
d_txCerts_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2362 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
d_txCerts_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txCerts_2394
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txId
d_txId_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2362 ->
  AgdaAny
d_txId_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txId_2406
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txOuts
d_txOuts_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2362 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txOuts_2388
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txPOSIXTimeVldt
d_txPOSIXTimeVldt_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2362 ->
  AgdaAny
d_txPOSIXTimeVldt_2394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txPOSIXTimeVldt_2398
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txVldt
d_txVldt_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2362 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txVldt_2400
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txWithdrawals
d_txWithdrawals_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2362 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txWithdrawals_2396
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txdats
d_txdats_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2362 ->
  [AgdaAny]
d_txdats_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txdats_2404
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.vkKey
d_vkKey_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2362 ->
  [AgdaAny]
d_vkKey_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_vkKey_2402
      (coe v0)
-- Ledger.Conway.Specification.Abstract.indexOf
d_indexOf_2404 a0 = ()
data T_indexOf_2404
  = C_constructor_2430 (MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                       (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_904 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_904] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008] ->
                        Maybe AgdaAny)
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfDCert
d_indexOfDCert_2418 ::
  T_indexOf_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  Maybe AgdaAny
d_indexOfDCert_2418 v0
  = case coe v0 of
      C_constructor_2430 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfRewardAddress
d_indexOfRewardAddress_2420 ::
  T_indexOf_2404 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRewardAddress_2420 v0
  = case coe v0 of
      C_constructor_2430 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_2422 ::
  T_indexOf_2404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_2422 v0
  = case coe v0 of
      C_constructor_2430 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_2424 ::
  T_indexOf_2404 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_2424 v0
  = case coe v0 of
      C_constructor_2430 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfVote
d_indexOfVote_2426 ::
  T_indexOf_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_904 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_904] ->
  Maybe AgdaAny
d_indexOfVote_2426 v0
  = case coe v0 of
      C_constructor_2430 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfProposal
d_indexOfProposal_2428 ::
  T_indexOf_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008] ->
  Maybe AgdaAny
d_indexOfProposal_2428 v0
  = case coe v0 of
      C_constructor_2430 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.ValidityInterval
d_ValidityInterval_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ValidityInterval_2432 = erased
-- Ledger.Conway.Specification.Abstract.AbstractFunctions
d_AbstractFunctions_2434 a0 = ()
data T_AbstractFunctions_2434
  = C_constructor_2480 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       (AgdaAny -> AgdaAny -> Integer) (AgdaAny -> Integer) T_indexOf_2404
                       (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                       (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
                       (MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2362 ->
                        MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2348 ->
                        AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
                        AgdaAny -> AgdaAny)
                       (AgdaAny -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny)
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.UTCTime
d_UTCTime_2458 :: T_AbstractFunctions_2434 -> ()
d_UTCTime_2458 = erased
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.DecEq-UTCTime
d_DecEq'45'UTCTime_2460 ::
  T_AbstractFunctions_2434 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UTCTime_2460 v0
  = case coe v0 of
      C_constructor_2480 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_2462 ::
  T_AbstractFunctions_2434 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_2462 v0
  = case coe v0 of
      C_constructor_2480 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.serSize
d_serSize_2464 :: T_AbstractFunctions_2434 -> AgdaAny -> Integer
d_serSize_2464 v0
  = case coe v0 of
      C_constructor_2480 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_2466 :: T_AbstractFunctions_2434 -> T_indexOf_2404
d_indexOfImp_2466 v0
  = case coe v0 of
      C_constructor_2480 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_2468 ::
  T_AbstractFunctions_2434 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_2468 v0
  = case coe v0 of
      C_constructor_2480 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.scriptSize
d_scriptSize_2470 ::
  T_AbstractFunctions_2434 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2470 v0
  = case coe v0 of
      C_constructor_2480 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.valContext
d_valContext_2472 ::
  T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2348 ->
  AgdaAny
d_valContext_2472 v0
  = case coe v0 of
      C_constructor_2480 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.getLanguageView
d_getLanguageView_2474 ::
  T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny -> AgdaAny
d_getLanguageView_2474 v0
  = case coe v0 of
      C_constructor_2480 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.epochInfoSlotToUTCTime
d_epochInfoSlotToUTCTime_2476 ::
  T_AbstractFunctions_2434 -> AgdaAny -> Maybe AgdaAny
d_epochInfoSlotToUTCTime_2476 v0
  = case coe v0 of
      C_constructor_2480 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.transVITime
d_transVITime_2478 ::
  T_AbstractFunctions_2434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_transVITime_2478 v0
  = case coe v0 of
      C_constructor_2480 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
