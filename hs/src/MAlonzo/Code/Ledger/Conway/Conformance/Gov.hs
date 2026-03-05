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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_68 a0 = ()
-- _.Epoch
d_Epoch_184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_184 = erased
-- _.GovProposal
d_GovProposal_212 a0 = ()
-- _.GovVote
d_GovVote_222 a0 = ()
-- _.PParams
d_PParams_456 a0 = ()
-- _.ScriptHash
d_ScriptHash_524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_524 = erased
-- _.GovActions.GovProposal
d_GovProposal_1024 a0 = ()
-- _.GovActions.GovVote
d_GovVote_1032 a0 = ()
-- _.GovActions.GovProposal.action
d_action_1166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892
d_action_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1120
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1014
d_anchor_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1130
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  Integer
d_deposit_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1126
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  Maybe AgdaAny
d_policy_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1124
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  AgdaAny
d_prevAction_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1122
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1128
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1014
d_anchor_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1042
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_1190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1036
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_1192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_994
d_vote_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1040
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_1194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002
d_voter_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1038
      (coe v0)
-- _.PParams.Emax
d_Emax_1408 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_Emax_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_410
      (coe v0)
-- _.PParams.a
d_a_1410 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_a_1410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_382 (coe v0)
-- _.PParams.a0
d_a0_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_414 (coe v0)
-- _.PParams.b
d_b_1414 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_b_1414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_384 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMaxTermLength_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_426
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1418 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMinSize_1418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1420 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_coinsPerUTxOByte_1420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_394
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1422 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_collateralPercentage_1422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_416
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_418
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_drepActivity_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_434
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1430 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_drepDeposit_1430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_432
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1432 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224
d_drepThresholds_1432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1434 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionDeposit_1434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_430
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1436 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionLifetime_1436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_428
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1438 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_keyDeposit_1438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_386
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1440 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_maxBlockExUnits_1440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_374
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1442 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxBlockSize_1442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_366
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1444 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxCollateralInputs_1444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_378
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1446 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxHeaderSize_1446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_370
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1448 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerBlock_1448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_402
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1450 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerTx_1450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_400
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1452 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_maxTxExUnits_1452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_372
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1454 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxTxSize_1454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_368
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1456 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxValSize_1456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_376
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1458 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_398
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1460 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_minUTxOValue_1460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_408
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1462 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_390
      (coe v0)
-- _.PParams.nopt
d_nopt_1464 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_nopt_1464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_412
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1466 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_poolDeposit_1466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_388
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1468 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268
d_poolThresholds_1468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
      (coe v0)
-- _.PParams.prices
d_prices_1470 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_prices_1470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_396
      (coe v0)
-- _.PParams.pv
d_pv_1472 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_380 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1474 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_406
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1476 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_404
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1478 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_392
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState
d_EnactState_2038 a0 a1 = ()
-- Ledger.Conway.Conformance.Gov._.EnactState.cc
d_cc_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1198 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.constitution
d_constitution_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1200
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pparams
d_pparams_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pv
d_pv_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1202 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.withdrawals
d_withdrawals_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1206
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState
d_CertState_2242 a0 a1 = ()
-- Ledger.Conway.Conformance.Gov._.CertState.dState
d_dState_2530 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1590
d_dState_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1634 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.gState
d_gState_2532 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1610
d_gState_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1638 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.pState
d_pState_2534 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
d_pState_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1636 (coe v0)
-- Ledger.Conway.Conformance.Gov._.GovState
d_GovState_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  ()
d_GovState_2802 = erased
-- Ledger.Conway.Conformance.Gov.GovEnv
d_GovEnv_2946 a0 a1 = ()
data T_GovEnv_2946
  = C_constructor_2976 AgdaAny AgdaAny
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
                       (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
-- Ledger.Conway.Conformance.Gov.GovEnv.txid
d_txid_2962 :: T_GovEnv_2946 -> AgdaAny
d_txid_2962 v0
  = case coe v0 of
      C_constructor_2976 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.epoch
d_epoch_2964 :: T_GovEnv_2946 -> AgdaAny
d_epoch_2964 v0
  = case coe v0 of
      C_constructor_2976 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.pparams
d_pparams_2966 ::
  T_GovEnv_2946 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_pparams_2966 v0
  = case coe v0 of
      C_constructor_2976 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.ppolicy
d_ppolicy_2968 :: T_GovEnv_2946 -> Maybe AgdaAny
d_ppolicy_2968 v0
  = case coe v0 of
      C_constructor_2976 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.enactState
d_enactState_2970 ::
  T_GovEnv_2946 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_enactState_2970 v0
  = case coe v0 of
      C_constructor_2976 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.certState
d_certState_2972 ::
  T_GovEnv_2946 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626
d_certState_2972 v0
  = case coe v0 of
      C_constructor_2976 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.rewardCreds
d_rewardCreds_2974 ::
  T_GovEnv_2946 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_rewardCreds_2974 v0
  = case coe v0 of
      C_constructor_2976 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.HasCast-GovEnv
d_HasCast'45'GovEnv_2978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2978 ~v0 ~v1 = du_HasCast'45'GovEnv_2978
du_HasCast'45'GovEnv_2978 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2978
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
                                 (2946 :: Integer) (14950884968918448145 :: Integer)
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
                                 (1336 :: Integer) (4677747647620784524 :: Integer)
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
                                    (2946 :: Integer) (14950884968918448145 :: Integer)
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
                                    (184 :: Integer) (14950884968918448145 :: Integer) "_.Epoch"
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
                                       (2946 :: Integer) (14950884968918448145 :: Integer)
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
                                       (456 :: Integer) (14950884968918448145 :: Integer)
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
                                          (2946 :: Integer) (14950884968918448145 :: Integer)
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
                                                      (524 :: Integer)
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
                                             (2946 :: Integer) (14950884968918448145 :: Integer)
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
                                             (2038 :: Integer) (14950884968918448145 :: Integer)
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
                                                (2946 :: Integer) (14950884968918448145 :: Integer)
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
                                                (2242 :: Integer) (14950884968918448145 :: Integer)
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
                                                   (2946 :: Integer)
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
                                                            (68 :: Integer)
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
         (coe C_constructor_2976))
-- Ledger.Conway.Conformance.Gov._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GovEnv_2946 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2980 = erased
-- Ledger.Conway.Conformance.Gov._._.certState
d_certState_2996 ::
  T_GovEnv_2946 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626
d_certState_2996 v0 ~v1 ~v2 ~v3 = du_certState_2996 v0
du_certState_2996 ::
  T_GovEnv_2946 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626
du_certState_2996 v0 = coe d_certState_2972 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.enactState
d_enactState_2998 ::
  T_GovEnv_2946 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_enactState_2998 v0 ~v1 ~v2 ~v3 = du_enactState_2998 v0
du_enactState_2998 ::
  T_GovEnv_2946 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
du_enactState_2998 v0 = coe d_enactState_2970 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.epoch
d_epoch_3000 ::
  T_GovEnv_2946 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_epoch_3000 v0 ~v1 ~v2 ~v3 = du_epoch_3000 v0
du_epoch_3000 :: T_GovEnv_2946 -> AgdaAny
du_epoch_3000 v0 = coe d_epoch_2964 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.pparams
d_pparams_3002 ::
  T_GovEnv_2946 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_pparams_3002 v0 ~v1 ~v2 ~v3 = du_pparams_3002 v0
du_pparams_3002 ::
  T_GovEnv_2946 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
du_pparams_3002 v0 = coe d_pparams_2966 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.ppolicy
d_ppolicy_3004 ::
  T_GovEnv_2946 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_ppolicy_3004 v0 ~v1 ~v2 ~v3 = du_ppolicy_3004 v0
du_ppolicy_3004 :: T_GovEnv_2946 -> Maybe AgdaAny
du_ppolicy_3004 v0 = coe d_ppolicy_2968 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.rewardCreds
d_rewardCreds_3006 ::
  T_GovEnv_2946 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_rewardCreds_3006 v0 ~v1 ~v2 ~v3 = du_rewardCreds_3006 v0
du_rewardCreds_3006 ::
  T_GovEnv_2946 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_rewardCreds_3006 v0 = coe d_rewardCreds_2974 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.txid
d_txid_3008 ::
  T_GovEnv_2946 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_txid_3008 v0 ~v1 ~v2 ~v3 = du_txid_3008 v0
du_txid_3008 :: T_GovEnv_2946 -> AgdaAny
du_txid_3008 v0 = coe d_txid_2962 (coe v0)
