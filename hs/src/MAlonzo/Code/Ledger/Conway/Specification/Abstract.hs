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
d_LangDepView_396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_LangDepView_396 = erased
-- Ledger.Conway.Specification.Abstract._.Language
d_Language_398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_398 = erased
-- Ledger.Conway.Specification.Abstract._.MemoryEstimate
d_MemoryEstimate_406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_406 = erased
-- Ledger.Conway.Specification.Abstract._.PlutusScript
d_PlutusScript_434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_434 = erased
-- Ledger.Conway.Specification.Abstract._.PParams
d_PParams_440 a0 = ()
-- Ledger.Conway.Specification.Abstract._.Prices
d_Prices_472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_472 = erased
-- Ledger.Conway.Specification.Abstract._.RewardAddress
d_RewardAddress_488 a0 = ()
-- Ledger.Conway.Specification.Abstract._.Script
d_Script_500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_500 = erased
-- Ledger.Conway.Specification.Abstract._.ScriptHash
d_ScriptHash_508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_508 = erased
-- Ledger.Conway.Specification.Abstract._.Slot
d_Slot_562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_562 = erased
-- Ledger.Conway.Specification.Abstract._.TxIn
d_TxIn_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_604 = erased
-- Ledger.Conway.Specification.Abstract._.Value
d_Value_634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_634 = erased
-- Ledger.Conway.Specification.Abstract._.Withdrawals
d_Withdrawals_644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_644 = erased
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal
d_GovProposal_986 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter
d_GovVoter_998 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.action
d_action_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1020 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_action_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1034
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.anchor
d_anchor_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1020 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_928
d_anchor_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1044
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.deposit
d_deposit_1132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1020 ->
  Integer
d_deposit_1132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1040
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.policy
d_policy_1134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1020 ->
  Maybe AgdaAny
d_policy_1134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1038
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.prevAction
d_prevAction_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1020 ->
  AgdaAny
d_prevAction_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1036
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.returnAddr
d_returnAddr_1138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1020 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1042
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter.gvCredential
d_gvCredential_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_916 ->
  AgdaAny
d_gvCredential_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_924
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter.gvRole
d_gvRole_1162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_916 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826
d_gvRole_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_922
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.Emax
d_Emax_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  AgdaAny
d_Emax_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_398
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.a
d_a_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_a_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_370 (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.a0
d_a0_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_402 (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.b
d_b_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_b_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_372 (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.ccMaxTermLength
d_ccMaxTermLength_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_ccMaxTermLength_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_414
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.ccMinSize
d_ccMinSize_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_ccMinSize_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_412
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_coinsPerUTxOByte_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_382
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.collateralPercentage
d_collateralPercentage_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_collateralPercentage_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_404
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.costmdlsAssoc
d_costmdlsAssoc_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_406
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.drepActivity
d_drepActivity_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  AgdaAny
d_drepActivity_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_422
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.drepDeposit
d_drepDeposit_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_drepDeposit_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_420
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.drepThresholds
d_drepThresholds_1394 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_212
d_drepThresholds_1394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_410
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.govActionDeposit
d_govActionDeposit_1396 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_govActionDeposit_1396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_418
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.govActionLifetime
d_govActionLifetime_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_govActionLifetime_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_416
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.keyDeposit
d_keyDeposit_1400 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_keyDeposit_1400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_374
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxBlockExUnits
d_maxBlockExUnits_1402 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  AgdaAny
d_maxBlockExUnits_1402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_362
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxBlockSize
d_maxBlockSize_1404 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_maxBlockSize_1404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_354
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxCollateralInputs
d_maxCollateralInputs_1406 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_maxCollateralInputs_1406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_366
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxHeaderSize
d_maxHeaderSize_1408 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_maxHeaderSize_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_358
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1410 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_maxRefScriptSizePerBlock_1410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_390
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_maxRefScriptSizePerTx_1412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_388
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxTxExUnits
d_maxTxExUnits_1414 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  AgdaAny
d_maxTxExUnits_1414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_360
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxTxSize
d_maxTxSize_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_maxTxSize_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_356
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxValSize
d_maxValSize_1418 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_maxValSize_1418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_364
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1420 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_386
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.minUTxOValue
d_minUTxOValue_1422 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_minUTxOValue_1422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_396
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.monetaryExpansion
d_monetaryExpansion_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_378
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.nopt
d_nopt_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_nopt_1426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_400
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.poolDeposit
d_poolDeposit_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Integer
d_poolDeposit_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_376
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.poolThresholds
d_poolThresholds_1430 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_256
d_poolThresholds_1430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_408
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.prices
d_prices_1432 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  AgdaAny
d_prices_1432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_384
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.pv
d_pv_1434 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_368 (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1436 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_394
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.refScriptCostStride
d_refScriptCostStride_1438 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_392
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.treasuryCut
d_treasuryCut_1440 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_380
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.RewardAddress.net
d_net_1642 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1642 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Abstract._.RewardAddress.stake
d_stake_1644 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1644 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Abstract._.DCert
d_DCert_1988 a0 = ()
-- Ledger.Conway.Specification.Abstract._.ScriptPurpose
d_ScriptPurpose_2372 a0 = ()
-- Ledger.Conway.Specification.Abstract._.TxInfo
d_TxInfo_2376 a0 = ()
-- Ledger.Conway.Specification.Abstract._.TxInfo.fee
d_fee_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2378 ->
  AgdaAny
d_fee_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_fee_2406
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.mint
d_mint_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2378 ->
  AgdaAny
d_mint_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_mint_2408
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.realizedInputs
d_realizedInputs_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_realizedInputs_2402
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txCerts
d_txCerts_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2378 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1326]
d_txCerts_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txCerts_2410
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txId
d_txId_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2378 ->
  AgdaAny
d_txId_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txId_2422
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txOuts
d_txOuts_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txOuts_2404
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txPOSIXTimeVldt
d_txPOSIXTimeVldt_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2378 ->
  AgdaAny
d_txPOSIXTimeVldt_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txPOSIXTimeVldt_2414
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txVldt
d_txVldt_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txVldt_2416
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txWithdrawals
d_txWithdrawals_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txWithdrawals_2412
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txdats
d_txdats_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2378 ->
  [AgdaAny]
d_txdats_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txdats_2420
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.vkKey
d_vkKey_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2378 ->
  [AgdaAny]
d_vkKey_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_vkKey_2418
      (coe v0)
-- Ledger.Conway.Specification.Abstract.indexOf
d_indexOf_2420 a0 = ()
data T_indexOf_2420
  = C_constructor_2446 (MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1326 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1326] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                       (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_916 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_916] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1020 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1020] ->
                        Maybe AgdaAny)
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfDCert
d_indexOfDCert_2434 ::
  T_indexOf_2420 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1326 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1326] ->
  Maybe AgdaAny
d_indexOfDCert_2434 v0
  = case coe v0 of
      C_constructor_2446 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfRewardAddress
d_indexOfRewardAddress_2436 ::
  T_indexOf_2420 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRewardAddress_2436 v0
  = case coe v0 of
      C_constructor_2446 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_2438 ::
  T_indexOf_2420 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_2438 v0
  = case coe v0 of
      C_constructor_2446 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_2440 ::
  T_indexOf_2420 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_2440 v0
  = case coe v0 of
      C_constructor_2446 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfVote
d_indexOfVote_2442 ::
  T_indexOf_2420 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_916 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_916] ->
  Maybe AgdaAny
d_indexOfVote_2442 v0
  = case coe v0 of
      C_constructor_2446 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfProposal
d_indexOfProposal_2444 ::
  T_indexOf_2420 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1020 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1020] ->
  Maybe AgdaAny
d_indexOfProposal_2444 v0
  = case coe v0 of
      C_constructor_2446 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.ValidityInterval
d_ValidityInterval_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ValidityInterval_2448 = erased
-- Ledger.Conway.Specification.Abstract.AbstractFunctions
d_AbstractFunctions_2450 a0 = ()
data T_AbstractFunctions_2450
  = C_constructor_2496 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       (AgdaAny -> AgdaAny -> Integer) (AgdaAny -> Integer) T_indexOf_2420
                       (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                       (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
                       (MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2378 ->
                        MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2364 ->
                        AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
                        AgdaAny -> AgdaAny)
                       (AgdaAny -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny)
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.UTCTime
d_UTCTime_2474 :: T_AbstractFunctions_2450 -> ()
d_UTCTime_2474 = erased
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.DecEq-UTCTime
d_DecEq'45'UTCTime_2476 ::
  T_AbstractFunctions_2450 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UTCTime_2476 v0
  = case coe v0 of
      C_constructor_2496 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_2478 ::
  T_AbstractFunctions_2450 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_2478 v0
  = case coe v0 of
      C_constructor_2496 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.serSize
d_serSize_2480 :: T_AbstractFunctions_2450 -> AgdaAny -> Integer
d_serSize_2480 v0
  = case coe v0 of
      C_constructor_2496 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_2482 :: T_AbstractFunctions_2450 -> T_indexOf_2420
d_indexOfImp_2482 v0
  = case coe v0 of
      C_constructor_2496 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_2484 ::
  T_AbstractFunctions_2450 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_2484 v0
  = case coe v0 of
      C_constructor_2496 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.scriptSize
d_scriptSize_2486 ::
  T_AbstractFunctions_2450 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2486 v0
  = case coe v0 of
      C_constructor_2496 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.valContext
d_valContext_2488 ::
  T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2378 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2364 ->
  AgdaAny
d_valContext_2488 v0
  = case coe v0 of
      C_constructor_2496 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.getLanguageView
d_getLanguageView_2490 ::
  T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  AgdaAny -> AgdaAny
d_getLanguageView_2490 v0
  = case coe v0 of
      C_constructor_2496 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.epochInfoSlotToUTCTime
d_epochInfoSlotToUTCTime_2492 ::
  T_AbstractFunctions_2450 -> AgdaAny -> Maybe AgdaAny
d_epochInfoSlotToUTCTime_2492 v0
  = case coe v0 of
      C_constructor_2496 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.transVITime
d_transVITime_2494 ::
  T_AbstractFunctions_2450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_transVITime_2494 v0
  = case coe v0 of
      C_constructor_2496 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
