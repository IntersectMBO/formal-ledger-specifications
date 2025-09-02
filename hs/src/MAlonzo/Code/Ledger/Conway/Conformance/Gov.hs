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
d_Credential_56 a0 = ()
-- _.Epoch
d_Epoch_156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_156 = erased
-- _.GovProposal
d_GovProposal_180 a0 = ()
-- _.GovVote
d_GovVote_186 a0 = ()
-- _.PParams
d_PParams_352 a0 = ()
-- _.ScriptHash
d_ScriptHash_410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_410 = erased
-- _.GovActions.GovProposal
d_GovProposal_862 a0 = ()
-- _.GovActions.GovVote
d_GovVote_868 a0 = ()
-- _.GovActions.GovProposal.action
d_action_928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_844
d_action_928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_914
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814
d_anchor_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_924
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900 ->
  Integer
d_deposit_932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_920
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900 ->
  Maybe AgdaAny
d_policy_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_918
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900 ->
  AgdaAny
d_prevAction_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_916
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_922
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814
d_anchor_950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_896
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_890
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_872
d_vote_954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_894
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_892
      (coe v0)
-- _.PParams.Emax
d_Emax_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny
d_Emax_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_426
      (coe v0)
-- _.PParams.a
d_a_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_a_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_398 (coe v0)
-- _.PParams.a0
d_a0_1132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_430 (coe v0)
-- _.PParams.b
d_b_1134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_b_1134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_400 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_ccMaxTermLength_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_442
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_ccMinSize_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_440
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_coinsPerUTxOByte_1140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_410
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_collateralPercentage_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_432
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny
d_costmdls_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_434
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny
d_drepActivity_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_450
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_drepDeposit_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_448
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_242
d_drepThresholds_1150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_438
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_govActionDeposit_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_446
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_govActionLifetime_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_444
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1156 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_keyDeposit_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_402
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1158 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny
d_maxBlockExUnits_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_390
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxBlockSize_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_382
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxCollateralInputs_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_394
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxHeaderSize_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_386
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxRefScriptSizePerBlock_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_418
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxRefScriptSizePerTx_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_416
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1170 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny
d_maxTxExUnits_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_388
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1172 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxTxSize_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_384
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1174 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxValSize_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_392
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1176 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_414
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_minUTxOValue_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_424
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1180 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_406
      (coe v0)
-- _.PParams.nopt
d_nopt_1182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_nopt_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_428
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_poolDeposit_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_404
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1186 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_286
d_poolThresholds_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_436
      (coe v0)
-- _.PParams.prices
d_prices_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny
d_prices_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_412
      (coe v0)
-- _.PParams.pv
d_pv_1190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_396 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1192 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_422
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1194 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_420
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1196 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_408
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState
d_EnactState_1738 a0 a1 = ()
-- Ledger.Conway.Conformance.Gov._.EnactState.cc
d_cc_1786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.constitution
d_constitution_1788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1008
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pparams
d_pparams_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pv
d_pv_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1010 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.withdrawals
d_withdrawals_1794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1014
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState
d_CertState_1912 a0 a1 = ()
-- Ledger.Conway.Conformance.Gov._.CertState.dState
d_dState_2162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1338
d_dState_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.gState
d_gState_2164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1358
d_gState_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1386 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.pState
d_pState_2166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222
d_pState_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1384 (coe v0)
-- Ledger.Conway.Conformance.Gov._.GovState
d_GovState_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  ()
d_GovState_2422 = erased
-- Ledger.Conway.Conformance.Gov.GovEnv
d_GovEnv_2560 a0 a1 = ()
data T_GovEnv_2560
  = C_constructor_2590 AgdaAny AgdaAny
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
                       (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
-- Ledger.Conway.Conformance.Gov.GovEnv.txid
d_txid_2576 :: T_GovEnv_2560 -> AgdaAny
d_txid_2576 v0
  = case coe v0 of
      C_constructor_2590 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.epoch
d_epoch_2578 :: T_GovEnv_2560 -> AgdaAny
d_epoch_2578 v0
  = case coe v0 of
      C_constructor_2590 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.pparams
d_pparams_2580 ::
  T_GovEnv_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2580 v0
  = case coe v0 of
      C_constructor_2590 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.ppolicy
d_ppolicy_2582 :: T_GovEnv_2560 -> Maybe AgdaAny
d_ppolicy_2582 v0
  = case coe v0 of
      C_constructor_2590 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.enactState
d_enactState_2584 ::
  T_GovEnv_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_enactState_2584 v0
  = case coe v0 of
      C_constructor_2590 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.certState
d_certState_2586 ::
  T_GovEnv_2560 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
d_certState_2586 v0
  = case coe v0 of
      C_constructor_2590 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.rewardCreds
d_rewardCreds_2588 ::
  T_GovEnv_2560 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_rewardCreds_2588 v0
  = case coe v0 of
      C_constructor_2590 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.HasCast-GovEnv
d_HasCast'45'GovEnv_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2592 ~v0 ~v1 = du_HasCast'45'GovEnv_2592
du_HasCast'45'GovEnv_2592 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2592
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
                                 (2560 :: Integer) (14950884968918448145 :: Integer)
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
                                 (1276 :: Integer) (4677747647620784524 :: Integer)
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
                                    (2560 :: Integer) (14950884968918448145 :: Integer)
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
                                    (156 :: Integer) (14950884968918448145 :: Integer) "_.Epoch"
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
                                       (2560 :: Integer) (14950884968918448145 :: Integer)
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
                                       (352 :: Integer) (14950884968918448145 :: Integer)
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
                                          (2560 :: Integer) (14950884968918448145 :: Integer)
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
                                                      (410 :: Integer)
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
                                             (2560 :: Integer) (14950884968918448145 :: Integer)
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
                                             (1738 :: Integer) (14950884968918448145 :: Integer)
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
                                                (2560 :: Integer) (14950884968918448145 :: Integer)
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
                                                (1912 :: Integer) (14950884968918448145 :: Integer)
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
                                                   (2560 :: Integer)
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
                                                            (56 :: Integer)
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
         (coe C_constructor_2590))
-- Ledger.Conway.Conformance.Gov._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GovEnv_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2594 = erased
-- Ledger.Conway.Conformance.Gov._._.certState
d_certState_2610 ::
  T_GovEnv_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
d_certState_2610 v0 ~v1 ~v2 ~v3 = du_certState_2610 v0
du_certState_2610 ::
  T_GovEnv_2560 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
du_certState_2610 v0 = coe d_certState_2586 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.enactState
d_enactState_2612 ::
  T_GovEnv_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_enactState_2612 v0 ~v1 ~v2 ~v3 = du_enactState_2612 v0
du_enactState_2612 ::
  T_GovEnv_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
du_enactState_2612 v0 = coe d_enactState_2584 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.epoch
d_epoch_2614 ::
  T_GovEnv_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_epoch_2614 v0 ~v1 ~v2 ~v3 = du_epoch_2614 v0
du_epoch_2614 :: T_GovEnv_2560 -> AgdaAny
du_epoch_2614 v0 = coe d_epoch_2578 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.pparams
d_pparams_2616 ::
  T_GovEnv_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2616 v0 ~v1 ~v2 ~v3 = du_pparams_2616 v0
du_pparams_2616 ::
  T_GovEnv_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
du_pparams_2616 v0 = coe d_pparams_2580 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.ppolicy
d_ppolicy_2618 ::
  T_GovEnv_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_ppolicy_2618 v0 ~v1 ~v2 ~v3 = du_ppolicy_2618 v0
du_ppolicy_2618 :: T_GovEnv_2560 -> Maybe AgdaAny
du_ppolicy_2618 v0 = coe d_ppolicy_2582 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.rewardCreds
d_rewardCreds_2620 ::
  T_GovEnv_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_rewardCreds_2620 v0 ~v1 ~v2 ~v3 = du_rewardCreds_2620 v0
du_rewardCreds_2620 ::
  T_GovEnv_2560 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_rewardCreds_2620 v0 = coe d_rewardCreds_2588 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.txid
d_txid_2622 ::
  T_GovEnv_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_txid_2622 v0 ~v1 ~v2 ~v3 = du_txid_2622 v0
du_txid_2622 :: T_GovEnv_2560 -> AgdaAny
du_txid_2622 v0 = coe d_txid_2576 (coe v0)
