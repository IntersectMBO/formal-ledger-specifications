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

module MAlonzo.Code.Ledger.Conway.Conformance.Gov where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_70 a0 = ()
-- _.Epoch
d_Epoch_186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_186 = erased
-- _.GovProposal
d_GovProposal_214 a0 = ()
-- _.GovVote
d_GovVote_224 a0 = ()
-- _.PParams
d_PParams_476 a0 = ()
-- _.ScriptHash
d_ScriptHash_542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_542 = erased
-- _.GovActions.GovProposal
d_GovProposal_1024 a0 = ()
-- _.GovActions.GovVote
d_GovVote_1032 a0 = ()
-- _.GovActions.GovProposal.action
d_action_1166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886
d_action_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1114
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1008
d_anchor_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1124
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  Integer
d_deposit_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1120
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  Maybe AgdaAny
d_policy_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1118
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  AgdaAny
d_prevAction_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1116
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1122
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1008
d_anchor_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1036
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_1190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1030
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_1192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_988
d_vote_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1034
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_1194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996
d_voter_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1032
      (coe v0)
-- _.PParams.Emax
d_Emax_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_Emax_1424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_402
      (coe v0)
-- _.PParams.a
d_a_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_a_1426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v0)
-- _.PParams.a0
d_a0_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_406 (coe v0)
-- _.PParams.b
d_b_1430 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_b_1430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1432 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMaxTermLength_1432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_418
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1434 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMinSize_1434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_416
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1436 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_coinsPerUTxOByte_1436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1438 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_collateralPercentage_1438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1442 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440
d_costmdlsAssoc_1442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_410
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1444 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_drepActivity_1444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_426
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1446 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepDeposit_1446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_424
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1448 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_1448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_414
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1450 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionDeposit_1450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1452 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionLifetime_1452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_420
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1454 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_keyDeposit_1454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1456 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_maxBlockExUnits_1456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_366
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1458 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxBlockSize_1458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_358
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1460 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxCollateralInputs_1460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_370
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1462 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxHeaderSize_1462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_362
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1464 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerBlock_1464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1466 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerTx_1466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1468 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_maxTxExUnits_1468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_364
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1470 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxTxSize_1470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1472 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxValSize_1472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1474 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_390
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1476 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_minUTxOValue_1476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_400
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1478 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_382
      (coe v0)
-- _.PParams.nopt
d_nopt_1480 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_nopt_1480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_404
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1482 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_poolDeposit_1482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1484 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_1484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_412
      (coe v0)
-- _.PParams.prices
d_prices_1486 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_prices_1486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
      (coe v0)
-- _.PParams.pv
d_pv_1488 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_372 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1490 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_398
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1492 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_396
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1494 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_384
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState
d_EnactState_2058 a0 a1 = ()
-- Ledger.Conway.Conformance.Gov._.EnactState.cc
d_cc_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1192 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.constitution
d_constitution_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1194
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pparams
d_pparams_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1198
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pv
d_pv_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1196 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.withdrawals
d_withdrawals_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1200
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState
d_CertState_2256 a0 a1 = ()
-- Ledger.Conway.Conformance.Gov._.CertState.dState
d_dState_2540 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1576
d_dState_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1620 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.gState
d_gState_2542 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1596
d_gState_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1624 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.pState
d_pState_2544 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432
d_pState_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1622 (coe v0)
-- Ledger.Conway.Conformance.Gov._.GovState
d_GovState_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  ()
d_GovState_2808 = erased
-- Ledger.Conway.Conformance.Gov.GovEnv
d_GovEnv_2952 a0 a1 = ()
data T_GovEnv_2952
  = C_constructor_2982 AgdaAny AgdaAny
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
                       (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180
                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
-- Ledger.Conway.Conformance.Gov.GovEnv.txid
d_txid_2968 :: T_GovEnv_2952 -> AgdaAny
d_txid_2968 v0
  = case coe v0 of
      C_constructor_2982 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.epoch
d_epoch_2970 :: T_GovEnv_2952 -> AgdaAny
d_epoch_2970 v0
  = case coe v0 of
      C_constructor_2982 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.pparams
d_pparams_2972 ::
  T_GovEnv_2952 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2972 v0
  = case coe v0 of
      C_constructor_2982 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.ppolicy
d_ppolicy_2974 :: T_GovEnv_2952 -> Maybe AgdaAny
d_ppolicy_2974 v0
  = case coe v0 of
      C_constructor_2982 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.enactState
d_enactState_2976 ::
  T_GovEnv_2952 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180
d_enactState_2976 v0
  = case coe v0 of
      C_constructor_2982 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.certState
d_certState_2978 ::
  T_GovEnv_2952 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612
d_certState_2978 v0
  = case coe v0 of
      C_constructor_2982 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.rewardCreds
d_rewardCreds_2980 ::
  T_GovEnv_2952 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_rewardCreds_2980 v0
  = case coe v0 of
      C_constructor_2982 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.HasCast-GovEnv
d_HasCast'45'GovEnv_2984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2984 ~v0 ~v1 = du_HasCast'45'GovEnv_2984
du_HasCast'45'GovEnv_2984 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2984
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2952 :: Integer) (14950884968918448145 :: Integer)
                                 "Ledger.Conway.Conformance.Gov.GovEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1346 :: Integer) (4677747647620784524 :: Integer)
                                 "Ledger.Conway.Specification.Transaction.TransactionStructure.TxId"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                    (coe (2 :: Integer))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2952 :: Integer) (14950884968918448145 :: Integer)
                                    "Ledger.Conway.Conformance.Gov.GovEnv"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (186 :: Integer) (14950884968918448145 :: Integer) "_.Epoch"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2952 :: Integer) (14950884968918448145 :: Integer)
                                       "Ledger.Conway.Conformance.Gov.GovEnv"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (476 :: Integer) (14950884968918448145 :: Integer)
                                       "_.PParams"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2952 :: Integer) (14950884968918448145 :: Integer)
                                          "Ledger.Conway.Conformance.Gov.GovEnv"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (10 :: Integer) (15412666033012224255 :: Integer)
                                          "Agda.Builtin.Maybe.Maybe"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (20 :: Integer) (10880583612240331187 :: Integer)
                                                   "Agda.Primitive.lzero"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (542 :: Integer)
                                                      (14950884968918448145 :: Integer)
                                                      "_.ScriptHash"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (2952 :: Integer) (14950884968918448145 :: Integer)
                                             "Ledger.Conway.Conformance.Gov.GovEnv"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                    (coe ("r" :: Data.Text.Text))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (2058 :: Integer) (14950884968918448145 :: Integer)
                                             "Ledger.Conway.Conformance.Gov._.EnactState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (2952 :: Integer) (14950884968918448145 :: Integer)
                                                "Ledger.Conway.Conformance.Gov.GovEnv"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                       (coe ("r" :: Data.Text.Text))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (2256 :: Integer) (14950884968918448145 :: Integer)
                                                "Ledger.Conway.Conformance.Gov._.CertState"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (2952 :: Integer)
                                                   (14950884968918448145 :: Integer)
                                                   "Ledger.Conway.Conformance.Gov.GovEnv"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                          (coe ("r" :: Data.Text.Text))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (128 :: Integer) (9254951203007797098 :: Integer)
                                                   "abstract-set-theory.FiniteSetTheory._.Set"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                      (coe
                                                         (MAlonzo.RTE.QName
                                                            (70 :: Integer)
                                                            (14950884968918448145 :: Integer)
                                                            "_.Credential"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe C_constructor_2982))
-- Ledger.Conway.Conformance.Gov._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GovEnv_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2986 = erased
-- Ledger.Conway.Conformance.Gov._._.certState
d_certState_3002 ::
  T_GovEnv_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612
d_certState_3002 v0 ~v1 ~v2 ~v3 = du_certState_3002 v0
du_certState_3002 ::
  T_GovEnv_2952 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612
du_certState_3002 v0 = coe d_certState_2978 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.enactState
d_enactState_3004 ::
  T_GovEnv_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180
d_enactState_3004 v0 ~v1 ~v2 ~v3 = du_enactState_3004 v0
du_enactState_3004 ::
  T_GovEnv_2952 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180
du_enactState_3004 v0 = coe d_enactState_2976 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.epoch
d_epoch_3006 ::
  T_GovEnv_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_epoch_3006 v0 ~v1 ~v2 ~v3 = du_epoch_3006 v0
du_epoch_3006 :: T_GovEnv_2952 -> AgdaAny
du_epoch_3006 v0 = coe d_epoch_2970 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.pparams
d_pparams_3008 ::
  T_GovEnv_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_3008 v0 ~v1 ~v2 ~v3 = du_pparams_3008 v0
du_pparams_3008 ::
  T_GovEnv_2952 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_3008 v0 = coe d_pparams_2972 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.ppolicy
d_ppolicy_3010 ::
  T_GovEnv_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_ppolicy_3010 v0 ~v1 ~v2 ~v3 = du_ppolicy_3010 v0
du_ppolicy_3010 :: T_GovEnv_2952 -> Maybe AgdaAny
du_ppolicy_3010 v0 = coe d_ppolicy_2974 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.rewardCreds
d_rewardCreds_3012 ::
  T_GovEnv_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_rewardCreds_3012 v0 ~v1 ~v2 ~v3 = du_rewardCreds_3012 v0
du_rewardCreds_3012 ::
  T_GovEnv_2952 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_rewardCreds_3012 v0 = coe d_rewardCreds_2980 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.txid
d_txid_3014 ::
  T_GovEnv_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_txid_3014 v0 ~v1 ~v2 ~v3 = du_txid_3014 v0
du_txid_3014 :: T_GovEnv_2952 -> AgdaAny
du_txid_3014 v0 = coe d_txid_2968 (coe v0)
