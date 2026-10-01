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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address

-- Ledger.Conway.Specification.Abstract._.T
d_T_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_82 = erased
-- Ledger.Conway.Specification.Abstract._.ExUnits
d_ExUnits_190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_190 = erased
-- Ledger.Conway.Specification.Abstract._.GovProposal
d_GovProposal_214 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovVoter
d_GovVoter_228 a0 = ()
-- Ledger.Conway.Specification.Abstract._.LangDepView
d_LangDepView_430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_LangDepView_430 = erased
-- Ledger.Conway.Specification.Abstract._.Language
d_Language_432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_432 = erased
-- Ledger.Conway.Specification.Abstract._.MemoryEstimate
d_MemoryEstimate_444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_444 = erased
-- Ledger.Conway.Specification.Abstract._.PParams
d_PParams_480 a0 = ()
-- Ledger.Conway.Specification.Abstract._.Prices
d_Prices_512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_512 = erased
-- Ledger.Conway.Specification.Abstract._.RewardAddress
d_RewardAddress_526 a0 = ()
-- Ledger.Conway.Specification.Abstract._.Script
d_Script_538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_538 = erased
-- Ledger.Conway.Specification.Abstract._.ScriptHash
d_ScriptHash_546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_546 = erased
-- Ledger.Conway.Specification.Abstract._.Slot
d_Slot_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_598 = erased
-- Ledger.Conway.Specification.Abstract._.TxIn
d_TxIn_644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_644 = erased
-- Ledger.Conway.Specification.Abstract._.Value
d_Value_676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_676 = erased
-- Ledger.Conway.Specification.Abstract._.Withdrawals
d_Withdrawals_686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_686 = erased
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal
d_GovProposal_1036 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter
d_GovVoter_1048 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.action
d_action_1178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896
d_action_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1124
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.anchor
d_anchor_1180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1018
d_anchor_1180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1134
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.deposit
d_deposit_1182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  Integer
d_deposit_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1130
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.policy
d_policy_1184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  Maybe AgdaAny
d_policy_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1128
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.prevAction
d_prevAction_1186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  AgdaAny
d_prevAction_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1126
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.returnAddr
d_returnAddr_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1132
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter.gvCredential
d_gvCredential_1210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  AgdaAny
d_gvCredential_1210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_1014
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter.gvRole
d_gvRole_1212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_850
d_gvRole_1212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_1012
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.Emax
d_Emax_1436 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny
d_Emax_1436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_404
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.a
d_a_1438 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_a_1438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_376 (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.a0
d_a0_1440 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_408 (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.b
d_b_1442 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_b_1442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_378 (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.ccMaxTermLength
d_ccMaxTermLength_1444 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_ccMaxTermLength_1444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_420
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.ccMinSize
d_ccMinSize_1446 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_ccMinSize_1446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_418
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1448 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_coinsPerUTxOByte_1448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_388
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.collateralPercentage
d_collateralPercentage_1450 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_collateralPercentage_1450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_410
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.costmdlsAssoc
d_costmdlsAssoc_1454 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442
d_costmdlsAssoc_1454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_412
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.drepActivity
d_drepActivity_1456 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny
d_drepActivity_1456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_428
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.drepDeposit
d_drepDeposit_1458 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_drepDeposit_1458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_426
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.drepThresholds
d_drepThresholds_1460 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220
d_drepThresholds_1460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_416
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.govActionDeposit
d_govActionDeposit_1462 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_govActionDeposit_1462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_424
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.govActionLifetime
d_govActionLifetime_1464 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_govActionLifetime_1464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_422
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.keyDeposit
d_keyDeposit_1466 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_keyDeposit_1466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_380
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxBlockExUnits
d_maxBlockExUnits_1468 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny
d_maxBlockExUnits_1468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_368
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxBlockSize
d_maxBlockSize_1470 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxBlockSize_1470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_360
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxCollateralInputs
d_maxCollateralInputs_1472 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxCollateralInputs_1472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_372
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxHeaderSize
d_maxHeaderSize_1474 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxHeaderSize_1474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_364
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1476 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxRefScriptSizePerBlock_1476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_396
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1478 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxRefScriptSizePerTx_1478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_394
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxTxExUnits
d_maxTxExUnits_1480 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny
d_maxTxExUnits_1480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_366
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxTxSize
d_maxTxSize_1482 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxTxSize_1482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_362
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.maxValSize
d_maxValSize_1484 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxValSize_1484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_370
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1486 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_392
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.minUTxOValue
d_minUTxOValue_1488 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_minUTxOValue_1488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_402
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.monetaryExpansion
d_monetaryExpansion_1490 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_384
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.nopt
d_nopt_1492 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_nopt_1492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_406
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.poolDeposit
d_poolDeposit_1494 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_poolDeposit_1494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_382
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.poolThresholds
d_poolThresholds_1496 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264
d_poolThresholds_1496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_414
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.prices
d_prices_1498 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny
d_prices_1498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_390
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.pv
d_pv_1500 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_374 (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1502 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_400
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.refScriptCostStride
d_refScriptCostStride_1504 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_398
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.PParams.treasuryCut
d_treasuryCut_1506 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_386
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.RewardAddress.net
d_net_1710 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_1710 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Conway.Specification.Abstract._.RewardAddress.stake
d_stake_1712 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1712 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Conway.Specification.Abstract._.DCert
d_DCert_2058 a0 = ()
-- Ledger.Conway.Specification.Abstract._.ScriptPurpose
d_ScriptPurpose_2442 a0 = ()
-- Ledger.Conway.Specification.Abstract._.TxInfo
d_TxInfo_2446 a0 = ()
-- Ledger.Conway.Specification.Abstract._.TxInfo.fee
d_fee_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2448 ->
  AgdaAny
d_fee_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_fee_2476
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.mint
d_mint_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2448 ->
  AgdaAny
d_mint_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_mint_2478
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.realizedInputs
d_realizedInputs_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2448 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_realizedInputs_2472
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txCerts
d_txCerts_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2448 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1362]
d_txCerts_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txCerts_2480
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txId
d_txId_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2448 ->
  AgdaAny
d_txId_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txId_2492
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txOuts
d_txOuts_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2448 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txOuts_2474
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txPOSIXTimeVldt
d_txPOSIXTimeVldt_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2448 ->
  AgdaAny
d_txPOSIXTimeVldt_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txPOSIXTimeVldt_2484
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txVldt
d_txVldt_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2448 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txVldt_2486
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txWithdrawals
d_txWithdrawals_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2448 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txWithdrawals_2482
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txdats
d_txdats_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2448 ->
  [AgdaAny]
d_txdats_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txdats_2490
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.vkKey
d_vkKey_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2448 ->
  [AgdaAny]
d_vkKey_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_vkKey_2488
      (coe v0)
-- Ledger.Conway.Specification.Abstract.indexOf
d_indexOf_2490 a0 = ()
data T_indexOf_2490
  = C_constructor_2516 (MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1362 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1362] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                       (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110] ->
                        Maybe AgdaAny)
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfDCert
d_indexOfDCert_2504 ::
  T_indexOf_2490 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1362 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1362] ->
  Maybe AgdaAny
d_indexOfDCert_2504 v0
  = case coe v0 of
      C_constructor_2516 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfRewardAddress
d_indexOfRewardAddress_2506 ::
  T_indexOf_2490 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRewardAddress_2506 v0
  = case coe v0 of
      C_constructor_2516 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_2508 ::
  T_indexOf_2490 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_2508 v0
  = case coe v0 of
      C_constructor_2516 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_2510 ::
  T_indexOf_2490 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_2510 v0
  = case coe v0 of
      C_constructor_2516 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfVote
d_indexOfVote_2512 ::
  T_indexOf_2490 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006] ->
  Maybe AgdaAny
d_indexOfVote_2512 v0
  = case coe v0 of
      C_constructor_2516 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfProposal
d_indexOfProposal_2514 ::
  T_indexOf_2490 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110] ->
  Maybe AgdaAny
d_indexOfProposal_2514 v0
  = case coe v0 of
      C_constructor_2516 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.ValidityInterval
d_ValidityInterval_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ValidityInterval_2518 = erased
-- Ledger.Conway.Specification.Abstract.AbstractFunctions
d_AbstractFunctions_2520 a0 = ()
data T_AbstractFunctions_2520
  = C_constructor_2562 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       (AgdaAny -> AgdaAny -> Integer) (AgdaAny -> Integer) T_indexOf_2490
                       (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
                       (MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2448 ->
                        MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2434 ->
                        AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
                        AgdaAny -> AgdaAny)
                       (AgdaAny -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny)
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.UTCTime
d_UTCTime_2542 :: T_AbstractFunctions_2520 -> ()
d_UTCTime_2542 = erased
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.DecEq-UTCTime
d_DecEq'45'UTCTime_2544 ::
  T_AbstractFunctions_2520 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UTCTime_2544 v0
  = case coe v0 of
      C_constructor_2562 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_2546 ::
  T_AbstractFunctions_2520 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_2546 v0
  = case coe v0 of
      C_constructor_2562 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.serSize
d_serSize_2548 :: T_AbstractFunctions_2520 -> AgdaAny -> Integer
d_serSize_2548 v0
  = case coe v0 of
      C_constructor_2562 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_2550 :: T_AbstractFunctions_2520 -> T_indexOf_2490
d_indexOfImp_2550 v0
  = case coe v0 of
      C_constructor_2562 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.scriptSize
d_scriptSize_2552 ::
  T_AbstractFunctions_2520 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2552 v0
  = case coe v0 of
      C_constructor_2562 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.valContext
d_valContext_2554 ::
  T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2448 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2434 ->
  AgdaAny
d_valContext_2554 v0
  = case coe v0 of
      C_constructor_2562 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.getLanguageView
d_getLanguageView_2556 ::
  T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny -> AgdaAny
d_getLanguageView_2556 v0
  = case coe v0 of
      C_constructor_2562 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.epochInfoSlotToUTCTime
d_epochInfoSlotToUTCTime_2558 ::
  T_AbstractFunctions_2520 -> AgdaAny -> Maybe AgdaAny
d_epochInfoSlotToUTCTime_2558 v0
  = case coe v0 of
      C_constructor_2562 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.transVITime
d_transVITime_2560 ::
  T_AbstractFunctions_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_transVITime_2560 v0
  = case coe v0 of
      C_constructor_2562 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
