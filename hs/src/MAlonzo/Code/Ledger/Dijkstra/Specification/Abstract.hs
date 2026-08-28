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
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction

-- Ledger.Dijkstra.Specification.Abstract._.Credential
d_Credential_84 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.T
d_T_98 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_T_98 = erased
-- Ledger.Dijkstra.Specification.Abstract._.ExUnits
d_ExUnits_224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ExUnits_224 = erased
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal
d_GovProposal_252 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.GovVoter
d_GovVoter_266 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.LangDepView
d_LangDepView_670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_LangDepView_670 = erased
-- Ledger.Dijkstra.Specification.Abstract._.Language
d_Language_672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Language_672 = erased
-- Ledger.Dijkstra.Specification.Abstract._.MemoryEstimate
d_MemoryEstimate_686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_MemoryEstimate_686 = erased
-- Ledger.Dijkstra.Specification.Abstract._.PParams
d_PParams_724 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.Prices
d_Prices_760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Prices_760 = erased
-- Ledger.Dijkstra.Specification.Abstract._.RewardAddress
d_RewardAddress_794 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.Script
d_Script_806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_806 = erased
-- Ledger.Dijkstra.Specification.Abstract._.ScriptHash
d_ScriptHash_814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_814 = erased
-- Ledger.Dijkstra.Specification.Abstract._.TxIn
d_TxIn_924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxIn_924 = erased
-- Ledger.Dijkstra.Specification.Abstract._.Value
d_Value_968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Value_968 = erased
-- Ledger.Dijkstra.Specification.Abstract._.Withdrawals
d_Withdrawals_978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Withdrawals_978 = erased
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.action
d_action_1380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884
d_action_1380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_998
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.anchor
d_anchor_1382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_918
d_anchor_1382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1008
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.deposit
d_deposit_1384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  Integer
d_deposit_1384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1004
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.policy
d_policy_1386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  Maybe AgdaAny
d_policy_1386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1002
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.prevAction
d_prevAction_1388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  AgdaAny
d_prevAction_1388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1000
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.returnAddr
d_returnAddr_1390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1006
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovVoter.gvCredential
d_gvCredential_1412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906 ->
  AgdaAny
d_gvCredential_1412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_914
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovVoter.gvRole
d_gvRole_1414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_856
d_gvRole_1414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_912
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovernanceActions.GovProposal
d_GovProposal_1484 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.GovernanceActions.GovVoter
d_GovVoter_1496 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.PParams.Emax
d_Emax_1976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_432
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.a
d_a_1978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402 (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.a0
d_a0_1980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_436
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.b
d_b_1982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404 (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.ccMaxTermLength
d_ccMaxTermLength_1984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_448
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.ccMinSize
d_ccMinSize_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_1986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_1988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.collateralPercentage
d_collateralPercentage_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.costmdlsAssoc
d_costmdlsAssoc_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_440
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.drepActivity
d_drepActivity_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_456
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.drepDeposit
d_drepDeposit_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_454
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.drepThresholds
d_drepThresholds_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.govActionDeposit
d_govActionDeposit_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.govActionLifetime
d_govActionLifetime_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_450
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.keyDeposit
d_keyDeposit_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_406
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxBlockExUnits
d_maxBlockExUnits_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_394
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxBlockSize
d_maxBlockSize_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_386
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxCollateralInputs
d_maxCollateralInputs_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_398
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxHeaderSize
d_maxHeaderSize_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_390
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxTxExUnits
d_maxTxExUnits_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_392
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxTxSize
d_maxTxSize_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxValSize
d_maxValSize_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_420
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.minPoolCost
d_minPoolCost_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_410
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.minUTxOValue
d_minUTxOValue_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_430
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.monetaryExpansion
d_monetaryExpansion_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.nopt
d_nopt_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_434
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.poolDeposit
d_poolDeposit_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_408
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.poolThresholds
d_poolThresholds_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_442
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.prices
d_prices_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.pv
d_pv_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_400
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_428
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.refScriptCostStride
d_refScriptCostStride_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_426
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.treasuryCut
d_treasuryCut_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.RewardAddress.net
d_net_2268 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_2268 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.RewardAddress.stake
d_stake_2270 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2270 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.DCert
d_DCert_2624 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.ScriptPurpose
d_ScriptPurpose_3060 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo
d_TxInfo_3068 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.ScriptPurpose.data′
d_data'8242'_3076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3062 ->
  AgdaAny
d_data'8242'_3076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_data'8242'_3070
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.ScriptPurpose.tag
d_tag_3078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3062 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40
d_tag_3078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_tag_3068
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.mint
d_mint_3082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  AgdaAny
d_mint_3082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_mint_3112
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.realizedInputs
d_realizedInputs_3084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_3084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_realizedInputs_3106
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txBalanceIntervals
d_txBalanceIntervals_3086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txBalanceIntervals_3132
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txCerts
d_txCerts_3088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
d_txCerts_3088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txCerts_3114
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txData
d_txData_3090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  [AgdaAny]
d_txData_3090 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txData_3124
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txDirectDeposits
d_txDirectDeposits_3092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txDirectDeposits_3130
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txFee
d_txFee_3094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  Maybe Integer
d_txFee_3094 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txFee_3110
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txGuards
d_txGuards_3096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txGuards_3122
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txId
d_txId_3098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  AgdaAny
d_txId_3098 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txId_3126
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txInfoSubTxs
d_txInfoSubTxs_3100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  Maybe
    [MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074]
d_txInfoSubTxs_3100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txInfoSubTxs_3128
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txOuts
d_txOuts_3102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3102 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txOuts_3108
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txVldt
d_txVldt_3104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txVldt_3118
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txWithdrawals
d_txWithdrawals_3106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txWithdrawals_3116
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.vkKey
d_vkKey_3108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  [AgdaAny]
d_vkKey_3108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_vkKey_3120
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract.indexOf
d_indexOf_3110 a0 = ()
data T_indexOf_3110
  = C_constructor_3140 (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308 ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                       (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906 ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
                        [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
                        Maybe AgdaAny)
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfDCert
d_indexOfDCert_3126 ::
  T_indexOf_3110 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308] ->
  Maybe AgdaAny
d_indexOfDCert_3126 v0
  = case coe v0 of
      C_constructor_3140 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfRewardAddress
d_indexOfRewardAddress_3128 ::
  T_indexOf_3110 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRewardAddress_3128 v0
  = case coe v0 of
      C_constructor_3140 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_3130 ::
  T_indexOf_3110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_3130 v0
  = case coe v0 of
      C_constructor_3140 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_3132 ::
  T_indexOf_3110 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_3132 v0
  = case coe v0 of
      C_constructor_3140 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfVote
d_indexOfVote_3134 ::
  T_indexOf_3110 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906] ->
  Maybe AgdaAny
d_indexOfVote_3134 v0
  = case coe v0 of
      C_constructor_3140 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfProposal
d_indexOfProposal_3136 ::
  T_indexOf_3110 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984] ->
  Maybe AgdaAny
d_indexOfProposal_3136 v0
  = case coe v0 of
      C_constructor_3140 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfGuard
d_indexOfGuard_3138 ::
  T_indexOf_3110 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  Maybe AgdaAny
d_indexOfGuard_3138 v0
  = case coe v0 of
      C_constructor_3140 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions
d_AbstractFunctions_3142 a0 = ()
data T_AbstractFunctions_3142
  = C_constructor_3168 (AgdaAny -> AgdaAny -> Integer)
                       (AgdaAny -> Integer)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
                        AgdaAny -> AgdaAny)
                       T_indexOf_3110
                       (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3062 ->
                        AgdaAny)
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.txScriptFee
d_txScriptFee_3156 ::
  T_AbstractFunctions_3142 -> AgdaAny -> AgdaAny -> Integer
d_txScriptFee_3156 v0
  = case coe v0 of
      C_constructor_3168 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.serializedSize
d_serializedSize_3158 ::
  T_AbstractFunctions_3142 -> AgdaAny -> Integer
d_serializedSize_3158 v0
  = case coe v0 of
      C_constructor_3168 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.getLanguageView
d_getLanguageView_3160 ::
  T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny -> AgdaAny
d_getLanguageView_3160 v0
  = case coe v0 of
      C_constructor_3168 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_3162 :: T_AbstractFunctions_3142 -> T_indexOf_3110
d_indexOfImp_3162 v0
  = case coe v0 of
      C_constructor_3168 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.scriptSize
d_scriptSize_3164 ::
  T_AbstractFunctions_3142 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_3164 v0
  = case coe v0 of
      C_constructor_3168 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.valContext
d_valContext_3166 ::
  T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3062 ->
  AgdaAny
d_valContext_3166 v0
  = case coe v0 of
      C_constructor_3168 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
