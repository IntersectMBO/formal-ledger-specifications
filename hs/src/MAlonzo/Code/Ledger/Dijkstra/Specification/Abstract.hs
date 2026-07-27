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
d_ExUnits_222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ExUnits_222 = erased
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal
d_GovProposal_248 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.GovVoter
d_GovVoter_262 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.LangDepView
d_LangDepView_666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_LangDepView_666 = erased
-- Ledger.Dijkstra.Specification.Abstract._.Language
d_Language_668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Language_668 = erased
-- Ledger.Dijkstra.Specification.Abstract._.MemoryEstimate
d_MemoryEstimate_682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_MemoryEstimate_682 = erased
-- Ledger.Dijkstra.Specification.Abstract._.PParams
d_PParams_720 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.Prices
d_Prices_756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Prices_756 = erased
-- Ledger.Dijkstra.Specification.Abstract._.RewardAddress
d_RewardAddress_790 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.Script
d_Script_802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_802 = erased
-- Ledger.Dijkstra.Specification.Abstract._.ScriptHash
d_ScriptHash_810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_810 = erased
-- Ledger.Dijkstra.Specification.Abstract._.TxIn
d_TxIn_920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxIn_920 = erased
-- Ledger.Dijkstra.Specification.Abstract._.Value
d_Value_962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Value_962 = erased
-- Ledger.Dijkstra.Specification.Abstract._.Withdrawals
d_Withdrawals_972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Withdrawals_972 = erased
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.action
d_action_1370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876
d_action_1370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_990
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.anchor
d_anchor_1372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910
d_anchor_1372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1000
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.deposit
d_deposit_1374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  Integer
d_deposit_1374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_996
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.policy
d_policy_1376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  Maybe AgdaAny
d_policy_1376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_994
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.prevAction
d_prevAction_1378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  AgdaAny
d_prevAction_1378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_992
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovProposal.returnAddr
d_returnAddr_1380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_998
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovVoter.gvCredential
d_gvCredential_1402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  AgdaAny
d_gvCredential_1402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_906
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovVoter.gvRole
d_gvRole_1404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848
d_gvRole_1404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_904
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.GovernanceActions.GovProposal
d_GovProposal_1474 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.GovernanceActions.GovVoter
d_GovVoter_1486 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.PParams.Emax
d_Emax_1964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_428
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.a
d_a_1966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_400 (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.a0
d_a0_1968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_432
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.b
d_b_1970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_402 (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.ccMaxTermLength
d_ccMaxTermLength_1972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.ccMinSize
d_ccMinSize_1974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_1974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_1976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.collateralPercentage
d_collateralPercentage_1978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_1978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_434
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.costmdlsAssoc
d_costmdlsAssoc_1982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676
d_costmdlsAssoc_1982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_436
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.drepActivity
d_drepActivity_1984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_1984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.drepDeposit
d_drepDeposit_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_1986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_450
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.drepThresholds
d_drepThresholds_1988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_1988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.govActionDeposit
d_govActionDeposit_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_448
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.govActionLifetime
d_govActionLifetime_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.keyDeposit
d_keyDeposit_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_404
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxBlockExUnits
d_maxBlockExUnits_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_392
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxBlockSize
d_maxBlockSize_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_384
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxCollateralInputs
d_maxCollateralInputs_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_396
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxHeaderSize
d_maxHeaderSize_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_420
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_418
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxTxExUnits
d_maxTxExUnits_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_390
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxTxSize
d_maxTxSize_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_386
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.maxValSize
d_maxValSize_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_416
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.minUTxOValue
d_minUTxOValue_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_426
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.monetaryExpansion
d_monetaryExpansion_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_408
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.nopt
d_nopt_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_430
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.poolDeposit
d_poolDeposit_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_406
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.poolThresholds
d_poolThresholds_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.prices
d_prices_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_414
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.pv
d_pv_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_398
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_424
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.refScriptCostStride
d_refScriptCostStride_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_422
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.PParams.treasuryCut
d_treasuryCut_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_410
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.RewardAddress.net
d_net_2252 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_2252 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.RewardAddress.stake
d_stake_2254 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2254 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.DCert
d_DCert_2608 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.ScriptPurpose
d_ScriptPurpose_3016 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo
d_TxInfo_3024 a0 = ()
-- Ledger.Dijkstra.Specification.Abstract._.ScriptPurpose.data′
d_data'8242'_3032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3018 ->
  AgdaAny
d_data'8242'_3032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_data'8242'_3026
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.ScriptPurpose.tag
d_tag_3034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3018 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40
d_tag_3034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_tag_3024
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.mint
d_mint_3038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  AgdaAny
d_mint_3038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_mint_3068
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.realizedInputs
d_realizedInputs_3040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_3040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_realizedInputs_3062
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txBalanceIntervals
d_txBalanceIntervals_3042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txBalanceIntervals_3088
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txCerts
d_txCerts_3044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288]
d_txCerts_3044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txCerts_3070
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txData
d_txData_3046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  [AgdaAny]
d_txData_3046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txData_3080
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txDirectDeposits
d_txDirectDeposits_3048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txDirectDeposits_3086
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txFee
d_txFee_3050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  Maybe Integer
d_txFee_3050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txFee_3066
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txGuards
d_txGuards_3052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txGuards_3078
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txId
d_txId_3054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  AgdaAny
d_txId_3054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txId_3082
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txInfoSubTxs
d_txInfoSubTxs_3056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  Maybe
    [MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030]
d_txInfoSubTxs_3056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txInfoSubTxs_3084
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txOuts
d_txOuts_3058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txOuts_3064
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txVldt
d_txVldt_3060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txVldt_3074
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.txWithdrawals
d_txWithdrawals_3062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txWithdrawals_3072
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract._.TxInfo.vkKey
d_vkKey_3064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  [AgdaAny]
d_vkKey_3064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_vkKey_3076
      (coe v0)
-- Ledger.Dijkstra.Specification.Abstract.indexOf
d_indexOf_3066 a0 = ()
data T_indexOf_3066
  = C_constructor_3096 (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288 ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                       (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
                        [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
                        Maybe AgdaAny)
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfDCert
d_indexOfDCert_3082 ::
  T_indexOf_3066 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288] ->
  Maybe AgdaAny
d_indexOfDCert_3082 v0
  = case coe v0 of
      C_constructor_3096 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfRewardAddress
d_indexOfRewardAddress_3084 ::
  T_indexOf_3066 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRewardAddress_3084 v0
  = case coe v0 of
      C_constructor_3096 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_3086 ::
  T_indexOf_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_3086 v0
  = case coe v0 of
      C_constructor_3096 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_3088 ::
  T_indexOf_3066 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_3088 v0
  = case coe v0 of
      C_constructor_3096 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfVote
d_indexOfVote_3090 ::
  T_indexOf_3066 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898] ->
  Maybe AgdaAny
d_indexOfVote_3090 v0
  = case coe v0 of
      C_constructor_3096 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfProposal
d_indexOfProposal_3092 ::
  T_indexOf_3066 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976] ->
  Maybe AgdaAny
d_indexOfProposal_3092 v0
  = case coe v0 of
      C_constructor_3096 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.indexOf.indexOfGuard
d_indexOfGuard_3094 ::
  T_indexOf_3066 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  Maybe AgdaAny
d_indexOfGuard_3094 v0
  = case coe v0 of
      C_constructor_3096 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions
d_AbstractFunctions_3098 a0 = ()
data T_AbstractFunctions_3098
  = C_constructor_3124 (AgdaAny -> AgdaAny -> Integer)
                       (AgdaAny -> Integer)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
                        AgdaAny -> AgdaAny)
                       T_indexOf_3066
                       (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3018 ->
                        AgdaAny)
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.txScriptFee
d_txScriptFee_3112 ::
  T_AbstractFunctions_3098 -> AgdaAny -> AgdaAny -> Integer
d_txScriptFee_3112 v0
  = case coe v0 of
      C_constructor_3124 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.serializedSize
d_serializedSize_3114 ::
  T_AbstractFunctions_3098 -> AgdaAny -> Integer
d_serializedSize_3114 v0
  = case coe v0 of
      C_constructor_3124 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.getLanguageView
d_getLanguageView_3116 ::
  T_AbstractFunctions_3098 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny -> AgdaAny
d_getLanguageView_3116 v0
  = case coe v0 of
      C_constructor_3124 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_3118 :: T_AbstractFunctions_3098 -> T_indexOf_3066
d_indexOfImp_3118 v0
  = case coe v0 of
      C_constructor_3124 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.scriptSize
d_scriptSize_3120 ::
  T_AbstractFunctions_3098 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_3120 v0
  = case coe v0 of
      C_constructor_3124 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Abstract.AbstractFunctions.valContext
d_valContext_3122 ::
  T_AbstractFunctions_3098 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3018 ->
  AgdaAny
d_valContext_3122 v0
  = case coe v0 of
      C_constructor_3124 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
