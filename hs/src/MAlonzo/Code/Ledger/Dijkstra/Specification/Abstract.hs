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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction

-- Ledger.Dijkstra.Specification.Abstract._.Credential
d_Credential_86 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.T
d_T_100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_T_100 = erased
-- Ledger.Dijkstra.Specification.Abstract._.ExUnits
d_ExUnits_226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ExUnits_226 = erased
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal
d_GovProposal_254 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.GovVoter
d_GovVoter_268 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.LangDepView
d_LangDepView_682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_LangDepView_682 = erased
-- Ledger.Dijkstra.Specification.Abstract._.Language
d_Language_684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Language_684 = erased
-- Ledger.Dijkstra.Specification.Abstract._.MemoryEstimate
d_MemoryEstimate_700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_MemoryEstimate_700 = erased
-- Ledger.Dijkstra.Specification.Abstract._.PParams
d_PParams_740 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.Prices
d_Prices_776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Prices_776 = erased
-- Ledger.Dijkstra.Specification.Abstract._.RewardAddress
d_RewardAddress_810 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.Script
d_Script_822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_822 = erased
-- Ledger.Dijkstra.Specification.Abstract._.ScriptHash
d_ScriptHash_828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_828 = erased
-- Ledger.Dijkstra.Specification.Abstract._.TopLevelTx
d_TopLevelTx_922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_922 = erased
-- Ledger.Dijkstra.Specification.Abstract._.TxIn
d_TxIn_944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxIn_944 = erased
-- Ledger.Dijkstra.Specification.Abstract._.Value
d_Value_986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Value_986 = erased
-- Ledger.Dijkstra.Specification.Abstract._.Withdrawals
d_Withdrawals_996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Withdrawals_996 = erased
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.action
d_action_1402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_action_1402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1088
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.anchor
d_anchor_1404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_anchor_1404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1098
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.deposit
d_deposit_1406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Integer
d_deposit_1406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1094
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.policy
d_policy_1408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Maybe AgdaAny
d_policy_1408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1092
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.prevAction
d_prevAction_1410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  AgdaAny
d_prevAction_1410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1090
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.returnAddr
d_returnAddr_1412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1096
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovVoter.gvCredential
d_gvCredential_1434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  AgdaAny
d_gvCredential_1434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_1004
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovVoter.gvRole
d_gvRole_1436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_946
d_gvRole_1436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_1002
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovernanceActions.GovProposal
d_GovProposal_1506 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.GovernanceActions.GovVoter
d_GovVoter_1518 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.PParams.Emax
d_Emax_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_Emax_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_474
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.a
d_a_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_a_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_444 (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.a0
d_a0_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_478
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.b
d_b_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_b_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_446 (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.ccMaxTermLength
d_ccMaxTermLength_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_ccMaxTermLength_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_490
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.ccMinSize
d_ccMinSize_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_ccMinSize_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_488
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_coinsPerUTxOByte_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_458
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.collateralPercentage
d_collateralPercentage_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_collateralPercentage_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_480
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.costmdlsAssoc
d_costmdlsAssoc_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdlsAssoc_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_482
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.drepActivity
d_drepActivity_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_drepActivity_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_498
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.drepDeposit
d_drepDeposit_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_drepDeposit_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_496
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.drepThresholds
d_drepThresholds_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250
d_drepThresholds_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_486
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.govActionDeposit
d_govActionDeposit_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_govActionDeposit_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_494
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.govActionLifetime
d_govActionLifetime_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_govActionLifetime_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_492
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.keyDeposit
d_keyDeposit_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_keyDeposit_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_448
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosCommitteeSize_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_436
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosDiffusionPeriod_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_430
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosHeaderPeriod_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_426
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_leiosMaxEBExUnits_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_440
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxEBSize_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_432
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxEBTxsSize_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_434
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_442
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_438
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosVotingPeriod_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_428
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxBlockExUnits
d_maxBlockExUnits_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_maxBlockExUnits_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_418
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxBlockSize
d_maxBlockSize_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxBlockSize_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_410
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxCollateralInputs
d_maxCollateralInputs_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxCollateralInputs_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_422
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxHeaderSize
d_maxHeaderSize_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxHeaderSize_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_414
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxRefScriptSizePerBlock_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_466
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxRefScriptSizePerTx_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_464
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxTxExUnits
d_maxTxExUnits_2064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_maxTxExUnits_2064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_416
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxTxSize
d_maxTxSize_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxTxSize_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxValSize
d_maxValSize_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxValSize_2068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_420
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_462
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.minPoolCost
d_minPoolCost_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_minPoolCost_2072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.minUTxOValue
d_minUTxOValue_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_minUTxOValue_2074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_472
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.monetaryExpansion
d_monetaryExpansion_2076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_454
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.nopt
d_nopt_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_nopt_2078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_476
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.poolDeposit
d_poolDeposit_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_poolDeposit_2080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_450
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.poolThresholds
d_poolThresholds_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294
d_poolThresholds_2082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_484
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.prices
d_prices_2084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_prices_2084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_460
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.pv
d_pv_2086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_424
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_470
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.refScriptCostStride
d_refScriptCostStride_2090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2090 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_468
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.treasuryCut
d_treasuryCut_2092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_456
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.RewardAddress.net
d_net_2334 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_2334 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.RewardAddress.stake
d_stake_2336 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2336 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.DCert
d_DCert_2696 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.ScriptPurpose
d_ScriptPurpose_3180 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo
d_TxInfo_3188 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.ScriptPurpose.data′
d_data'8242'_3196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3182 ->
  AgdaAny
d_data'8242'_3196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_data'8242'_3190
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.ScriptPurpose.tag
d_tag_3198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3182 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40
d_tag_3198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_tag_3188
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.mint
d_mint_3202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  AgdaAny
d_mint_3202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_mint_3232
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.realizedInputs
d_realizedInputs_3204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_3204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_realizedInputs_3226
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txBalanceIntervals
d_txBalanceIntervals_3206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txBalanceIntervals_3252
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txCerts
d_txCerts_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1468]
d_txCerts_3208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txCerts_3234
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txData
d_txData_3210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  [AgdaAny]
d_txData_3210 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txData_3244
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txDirectDeposits
d_txDirectDeposits_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txDirectDeposits_3250
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txFee
d_txFee_3214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  Maybe Integer
d_txFee_3214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txFee_3230
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txGuards
d_txGuards_3216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txGuards_3242
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txId
d_txId_3218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  AgdaAny
d_txId_3218 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txId_3246
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txInfoSubTxs
d_txInfoSubTxs_3220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  Maybe
    [MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194]
d_txInfoSubTxs_3220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txInfoSubTxs_3248
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txOuts
d_txOuts_3222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txOuts_3228
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txVldt
d_txVldt_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txVldt_3238
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txWithdrawals
d_txWithdrawals_3226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txWithdrawals_3236
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.vkKey
d_vkKey_3228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  [AgdaAny]
d_vkKey_3228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_vkKey_3240
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.EndorserBlock
d_EndorserBlock_3232 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.EndorserBlock.ebTxRefs
d_ebTxRefs_3238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ebTxRefs_3238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxRefHash
d_TxRefHash_3242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxRefHash_3242 = erased
-- Ledger.Dijkstra.Specification.Abstract.indexOf
d_indexOf_3244 a0 = ()
data T_indexOf_3244
  = C_constructor_3274 (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1468 ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1468] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                       (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
                        [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
                        Maybe AgdaAny)
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfDCert
d_indexOfDCert_3260 ::
  T_indexOf_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1468 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1468] ->
  Maybe AgdaAny
d_indexOfDCert_3260 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfRewardAddress
d_indexOfRewardAddress_3262 ::
  T_indexOf_3244 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRewardAddress_3262 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_3264 ::
  T_indexOf_3244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_3264 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_3266 ::
  T_indexOf_3244 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_3266 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfVote
d_indexOfVote_3268 ::
  T_indexOf_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996] ->
  Maybe AgdaAny
d_indexOfVote_3268 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfProposal
d_indexOfProposal_3270 ::
  T_indexOf_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074] ->
  Maybe AgdaAny
d_indexOfProposal_3270 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfGuard
d_indexOfGuard_3272 ::
  T_indexOf_3244 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  Maybe AgdaAny
d_indexOfGuard_3272 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions
d_AbstractFunctions_3276 a0 = ()
data T_AbstractFunctions_3276
  = C_constructor_3310 (AgdaAny -> AgdaAny -> Integer)
                       (AgdaAny -> Integer)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
                        AgdaAny -> AgdaAny)
                       T_indexOf_3244
                       (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3182 ->
                        AgdaAny)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866 ->
                        AgdaAny)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
                        Integer)
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.txScriptFee
d_txScriptFee_3294 ::
  T_AbstractFunctions_3276 -> AgdaAny -> AgdaAny -> Integer
d_txScriptFee_3294 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.serializedSize
d_serializedSize_3296 ::
  T_AbstractFunctions_3276 -> AgdaAny -> Integer
d_serializedSize_3296 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.getLanguageView
d_getLanguageView_3298 ::
  T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny -> AgdaAny
d_getLanguageView_3298 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_3300 :: T_AbstractFunctions_3276 -> T_indexOf_3244
d_indexOfImp_3300 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.scriptSize
d_scriptSize_3302 ::
  T_AbstractFunctions_3276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_3302 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.valContext
d_valContext_3304 ::
  T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3182 ->
  AgdaAny
d_valContext_3304 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.txRefHash
d_txRefHash_3306 ::
  T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866 ->
  AgdaAny
d_txRefHash_3306 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.ebSize
d_ebSize_3308 ::
  T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  Integer
d_ebSize_3308 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
