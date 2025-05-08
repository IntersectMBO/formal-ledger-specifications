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
import qualified MAlonzo.Code.Class.HasCast.Base
import qualified MAlonzo.Code.Class.HasCast.Derive
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction

-- _.Credential
d_Credential_48 a0 = ()
-- _.Epoch
d_Epoch_150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_150 = erased
-- _.GovProposal
d_GovProposal_168 a0 = ()
-- _.GovVote
d_GovVote_172 a0 = ()
-- _.PParams
d_PParams_296 a0 = ()
-- _.ScriptHash
d_ScriptHash_354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_354 = erased
-- _.GovProposal.action
d_action_786 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776
d_action_786 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_844 (coe v0)
-- _.GovProposal.anchor
d_anchor_788 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748
d_anchor_788 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_854 (coe v0)
-- _.GovProposal.deposit
d_deposit_790 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 -> Integer
d_deposit_790 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_850 (coe v0)
-- _.GovProposal.policy
d_policy_792 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  Maybe AgdaAny
d_policy_792 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_848 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_794 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 -> AgdaAny
d_prevAction_794 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_846 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_796 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_796 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_852 (coe v0)
-- _.GovVote.anchor
d_anchor_808 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748
d_anchor_808 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_828 (coe v0)
-- _.GovVote.gid
d_gid_810 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_810 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_822 (coe v0)
-- _.GovVote.vote
d_vote_812 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_804
d_vote_812 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_826 (coe v0)
-- _.GovVote.voter
d_voter_814 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_814 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_824 (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_844 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_848 a0 = ()
-- _.PParams.Emax
d_Emax_1054 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_Emax_1054 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_378 (coe v0)
-- _.PParams.a
d_a_1056 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_a_1056 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v0)
-- _.PParams.a0
d_a0_1058 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1058 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_382 (coe v0)
-- _.PParams.b
d_b_1060 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_b_1060 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1062 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMaxTermLength_1062 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1064 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMinSize_1064 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_392 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1066 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_coinsPerUTxOByte_1066 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1068 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_collateralPercentage_1068 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384 (coe v0)
-- _.PParams.costmdls
d_costmdls_1070 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_costmdls_1070 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_386 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1072 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_drepActivity_1072 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_402 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1074 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepDeposit_1074 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_400 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1076 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_1076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_390 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1078 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionDeposit_1078 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1080 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionLifetime_1080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_396 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1082 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_keyDeposit_1082 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1084 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxBlockExUnits_1084 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_342 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1086 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxBlockSize_1086 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_334 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1088 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxCollateralInputs_1088 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_346 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1090 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxHeaderSize_1090 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_338 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1092 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_1092 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_370 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1094 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_1094 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1096 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxTxExUnits_1096 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_340 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1098 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxTxSize_1098 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_336 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1100 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxValSize_1100 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_344 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1102 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1102 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_366
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1104 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_minUTxOValue_1104 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_376 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1106 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1106 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_358 (coe v0)
-- _.PParams.nopt
d_nopt_1108 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_nopt_1108 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_380 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1110 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_poolDeposit_1110 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1112 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_1112 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_388 (coe v0)
-- _.PParams.prices
d_prices_1114 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_prices_1114 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v0)
-- _.PParams.pv
d_pv_1116 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1116 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_348 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1118 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1118 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_374 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1120 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_refScriptCostStride_1120 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_372 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1122 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1122 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_360 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState
d_EnactState_1668 a0 a1 = ()
-- Ledger.Conway.Conformance.Gov._.EnactState.cc
d_cc_1712 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1712 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_930 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.constitution
d_constitution_1714 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1714 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_932 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pparams
d_pparams_1716 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1716 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_936 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pv
d_pv_1718 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1718 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_934 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.withdrawals
d_withdrawals_1720 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1720 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_938 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState
d_CertState_1830 a0 a1 = ()
-- Ledger.Conway.Conformance.Gov._.CertState.dState
d_dState_2050 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1272 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1236
d_dState_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1280 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.gState
d_gState_2052 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1272 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1256
d_gState_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1284 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.pState
d_pState_2054 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1272 ->
  MAlonzo.Code.Ledger.Certs.T_PState_1132
d_pState_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1282 (coe v0)
-- Ledger.Conway.Conformance.Gov._.GovState
d_GovState_2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 -> ()
d_GovState_2308 = erased
-- Ledger.Conway.Conformance.Gov.GovEnv
d_GovEnv_2442 a0 a1 = ()
data T_GovEnv_2442
  = C_GovEnv'46'constructor_7591 AgdaAny AgdaAny
                                 MAlonzo.Code.Ledger.PParams.T_PParams_262 (Maybe AgdaAny)
                                 MAlonzo.Code.Ledger.Enact.T_EnactState_918
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1272
                                 [MAlonzo.Code.Ledger.Address.T_Credential_16]
-- Ledger.Conway.Conformance.Gov.GovEnv.txid
d_txid_2458 :: T_GovEnv_2442 -> AgdaAny
d_txid_2458 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7591 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.epoch
d_epoch_2460 :: T_GovEnv_2442 -> AgdaAny
d_epoch_2460 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7591 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.pparams
d_pparams_2462 ::
  T_GovEnv_2442 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2462 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7591 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.ppolicy
d_ppolicy_2464 :: T_GovEnv_2442 -> Maybe AgdaAny
d_ppolicy_2464 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7591 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.enactState
d_enactState_2466 ::
  T_GovEnv_2442 -> MAlonzo.Code.Ledger.Enact.T_EnactState_918
d_enactState_2466 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7591 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.certState
d_certState_2468 ::
  T_GovEnv_2442 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1272
d_certState_2468 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7591 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.rewardCreds
d_rewardCreds_2470 ::
  T_GovEnv_2442 -> [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_rewardCreds_2470 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7591 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.HasCast-GovEnv
d_HasCast'45'GovEnv_2472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'GovEnv_2472 ~v0 ~v1 = du_HasCast'45'GovEnv_2472
du_HasCast'45'GovEnv_2472 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'GovEnv_2472
  = coe
      MAlonzo.Code.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                 (2442 :: Integer) (14950884968918448145 :: Integer)
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
                                 (1238 :: Integer) (3534875190617065329 :: Integer)
                                 "Ledger.Transaction.TransactionStructure.TxId"
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
                     MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                    (2442 :: Integer) (14950884968918448145 :: Integer)
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
                                    (150 :: Integer) (14950884968918448145 :: Integer) "_.Epoch"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                       (2442 :: Integer) (14950884968918448145 :: Integer)
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
                                       (296 :: Integer) (14950884968918448145 :: Integer)
                                       "_.PParams"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                          (2442 :: Integer) (14950884968918448145 :: Integer)
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
                                                      (354 :: Integer)
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
                              MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                             (2442 :: Integer) (14950884968918448145 :: Integer)
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
                                             (1668 :: Integer) (14950884968918448145 :: Integer)
                                             "Ledger.Conway.Conformance.Gov._.EnactState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                                (2442 :: Integer) (14950884968918448145 :: Integer)
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
                                                (1830 :: Integer) (14950884968918448145 :: Integer)
                                                "Ledger.Conway.Conformance.Gov._.CertState"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                                   (2442 :: Integer)
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
                                                   (126 :: Integer) (9254951203007797098 :: Integer)
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
                                                            (48 :: Integer)
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
         (coe C_GovEnv'46'constructor_7591))
-- Ledger.Conway.Conformance.Gov._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GovEnv_2442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2474 = erased
-- Ledger.Conway.Conformance.Gov._._.certState
d_certState_2490 ::
  T_GovEnv_2442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1272
d_certState_2490 v0 ~v1 ~v2 ~v3 = du_certState_2490 v0
du_certState_2490 ::
  T_GovEnv_2442 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1272
du_certState_2490 v0 = coe d_certState_2468 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.enactState
d_enactState_2492 ::
  T_GovEnv_2442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_918
d_enactState_2492 v0 ~v1 ~v2 ~v3 = du_enactState_2492 v0
du_enactState_2492 ::
  T_GovEnv_2442 -> MAlonzo.Code.Ledger.Enact.T_EnactState_918
du_enactState_2492 v0 = coe d_enactState_2466 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.epoch
d_epoch_2494 ::
  T_GovEnv_2442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_epoch_2494 v0 ~v1 ~v2 ~v3 = du_epoch_2494 v0
du_epoch_2494 :: T_GovEnv_2442 -> AgdaAny
du_epoch_2494 v0 = coe d_epoch_2460 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.pparams
d_pparams_2496 ::
  T_GovEnv_2442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2496 v0 ~v1 ~v2 ~v3 = du_pparams_2496 v0
du_pparams_2496 ::
  T_GovEnv_2442 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2496 v0 = coe d_pparams_2462 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.ppolicy
d_ppolicy_2498 ::
  T_GovEnv_2442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_ppolicy_2498 v0 ~v1 ~v2 ~v3 = du_ppolicy_2498 v0
du_ppolicy_2498 :: T_GovEnv_2442 -> Maybe AgdaAny
du_ppolicy_2498 v0 = coe d_ppolicy_2464 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.rewardCreds
d_rewardCreds_2500 ::
  T_GovEnv_2442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_rewardCreds_2500 v0 ~v1 ~v2 ~v3 = du_rewardCreds_2500 v0
du_rewardCreds_2500 ::
  T_GovEnv_2442 -> [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_rewardCreds_2500 v0 = coe d_rewardCreds_2470 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.txid
d_txid_2502 ::
  T_GovEnv_2442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_txid_2502 v0 ~v1 ~v2 ~v3 = du_txid_2502 v0
du_txid_2502 :: T_GovEnv_2442 -> AgdaAny
du_txid_2502 v0 = coe d_txid_2458 (coe v0)
