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
d_Credential_50 a0 = ()
-- _.Epoch
d_Epoch_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_150 = erased
-- _.GovProposal
d_GovProposal_168 a0 = ()
-- _.GovVote
d_GovVote_174 a0 = ()
-- _.PParams
d_PParams_296 a0 = ()
-- _.ScriptHash
d_ScriptHash_344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_344 = erased
-- _.GovActions.GovProposal
d_GovProposal_770 a0 = ()
-- _.GovActions.GovVote
d_GovVote_774 a0 = ()
-- _.GovActions.GovProposal.action
d_action_834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_794
d_action_834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_862
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_766
d_anchor_836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_872
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
  Integer
d_deposit_838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_868
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
  Maybe AgdaAny
d_policy_840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_866
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
  AgdaAny
d_prevAction_842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_864
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98
d_returnAddr_844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_870
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_830 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_766
d_anchor_856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_846
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_840
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_830 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_822
d_vote_860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_844
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_842
      (coe v0)
-- _.PParams.Emax
d_Emax_1022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  AgdaAny
d_Emax_1022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_382
      (coe v0)
-- _.PParams.a
d_a_1024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_a_1024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_354 (coe v0)
-- _.PParams.a0
d_a0_1026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_386 (coe v0)
-- _.PParams.b
d_b_1028 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_b_1028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_356 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1030 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_ccMaxTermLength_1030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_398
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_ccMinSize_1032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_396
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1034 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_coinsPerUTxOByte_1034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_366
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1036 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_collateralPercentage_1036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_388
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  AgdaAny
d_costmdls_1038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_390
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  AgdaAny
d_drepActivity_1040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_406
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_drepDeposit_1042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_404
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202
d_drepThresholds_1044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_394
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_govActionDeposit_1046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_402
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_govActionLifetime_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_400
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_keyDeposit_1050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_358
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  AgdaAny
d_maxBlockExUnits_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_346
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxBlockSize_1054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_338
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxCollateralInputs_1056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_350
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxHeaderSize_1058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_342
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxRefScriptSizePerBlock_1060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_374
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxRefScriptSizePerTx_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_372
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  AgdaAny
d_maxTxExUnits_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_344
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxTxSize_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_340
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxValSize_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_348
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_370
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_minUTxOValue_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_380
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_362
      (coe v0)
-- _.PParams.nopt
d_nopt_1076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_nopt_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_384
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_poolDeposit_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_360
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_244
d_poolThresholds_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_392
      (coe v0)
-- _.PParams.prices
d_prices_1082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  AgdaAny
d_prices_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_368
      (coe v0)
-- _.PParams.pv
d_pv_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_352 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_378
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_376
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_364
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState
d_EnactState_1620 a0 a1 = ()
-- Ledger.Conway.Conformance.Gov._.EnactState.cc
d_cc_1664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_946 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.constitution
d_constitution_1666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_948
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pparams
d_pparams_1668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_952
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pv
d_pv_1670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_950 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.withdrawals
d_withdrawals_1672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_954
      (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState
d_CertState_1784 a0 a1 = ()
-- Ledger.Conway.Conformance.Gov._.CertState.dState
d_dState_2024 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1282
d_dState_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1326 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.gState
d_gState_2026 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1302
d_gState_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1330 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.pState
d_pState_2028 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1170
d_pState_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1328 (coe v0)
-- Ledger.Conway.Conformance.Gov._.GovState
d_GovState_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  ()
d_GovState_2294 = erased
-- Ledger.Conway.Conformance.Gov.GovEnv
d_GovEnv_2428 a0 a1 = ()
data T_GovEnv_2428
  = C_GovEnv'46'constructor_7635 AgdaAny AgdaAny
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
                                 (Maybe AgdaAny)
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318
                                 [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
-- Ledger.Conway.Conformance.Gov.GovEnv.txid
d_txid_2444 :: T_GovEnv_2428 -> AgdaAny
d_txid_2444 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7635 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.epoch
d_epoch_2446 :: T_GovEnv_2428 -> AgdaAny
d_epoch_2446 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7635 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.pparams
d_pparams_2448 ::
  T_GovEnv_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
d_pparams_2448 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7635 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.ppolicy
d_ppolicy_2450 :: T_GovEnv_2428 -> Maybe AgdaAny
d_ppolicy_2450 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7635 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.enactState
d_enactState_2452 ::
  T_GovEnv_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934
d_enactState_2452 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7635 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.certState
d_certState_2454 ::
  T_GovEnv_2428 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318
d_certState_2454 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7635 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.rewardCreds
d_rewardCreds_2456 ::
  T_GovEnv_2428 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_rewardCreds_2456 v0
  = case coe v0 of
      C_GovEnv'46'constructor_7635 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.HasCast-GovEnv
d_HasCast'45'GovEnv_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2458 ~v0 ~v1 = du_HasCast'45'GovEnv_2458
du_HasCast'45'GovEnv_2458 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2458
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
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
                                 (2428 :: Integer) (14950884968918448145 :: Integer)
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
                                 (1206 :: Integer) (4677747647620784524 :: Integer)
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
                                    (2428 :: Integer) (14950884968918448145 :: Integer)
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
                                       (2428 :: Integer) (14950884968918448145 :: Integer)
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
                                          (2428 :: Integer) (14950884968918448145 :: Integer)
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
                                                      (344 :: Integer)
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
                                             (2428 :: Integer) (14950884968918448145 :: Integer)
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
                                             (1620 :: Integer) (14950884968918448145 :: Integer)
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
                                                (2428 :: Integer) (14950884968918448145 :: Integer)
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
                                                (1784 :: Integer) (14950884968918448145 :: Integer)
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
                                                   (2428 :: Integer)
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
                                                            (50 :: Integer)
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
         (coe C_GovEnv'46'constructor_7635))
-- Ledger.Conway.Conformance.Gov._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GovEnv_2428 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2460 = erased
-- Ledger.Conway.Conformance.Gov._._.certState
d_certState_2476 ::
  T_GovEnv_2428 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318
d_certState_2476 v0 ~v1 ~v2 ~v3 = du_certState_2476 v0
du_certState_2476 ::
  T_GovEnv_2428 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318
du_certState_2476 v0 = coe d_certState_2454 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.enactState
d_enactState_2478 ::
  T_GovEnv_2428 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934
d_enactState_2478 v0 ~v1 ~v2 ~v3 = du_enactState_2478 v0
du_enactState_2478 ::
  T_GovEnv_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934
du_enactState_2478 v0 = coe d_enactState_2452 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.epoch
d_epoch_2480 ::
  T_GovEnv_2428 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_epoch_2480 v0 ~v1 ~v2 ~v3 = du_epoch_2480 v0
du_epoch_2480 :: T_GovEnv_2428 -> AgdaAny
du_epoch_2480 v0 = coe d_epoch_2446 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.pparams
d_pparams_2482 ::
  T_GovEnv_2428 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
d_pparams_2482 v0 ~v1 ~v2 ~v3 = du_pparams_2482 v0
du_pparams_2482 ::
  T_GovEnv_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
du_pparams_2482 v0 = coe d_pparams_2448 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.ppolicy
d_ppolicy_2484 ::
  T_GovEnv_2428 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_ppolicy_2484 v0 ~v1 ~v2 ~v3 = du_ppolicy_2484 v0
du_ppolicy_2484 :: T_GovEnv_2428 -> Maybe AgdaAny
du_ppolicy_2484 v0 = coe d_ppolicy_2450 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.rewardCreds
d_rewardCreds_2486 ::
  T_GovEnv_2428 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_rewardCreds_2486 v0 ~v1 ~v2 ~v3 = du_rewardCreds_2486 v0
du_rewardCreds_2486 ::
  T_GovEnv_2428 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_rewardCreds_2486 v0 = coe d_rewardCreds_2456 (coe v0)
-- Ledger.Conway.Conformance.Gov._._.txid
d_txid_2488 ::
  T_GovEnv_2428 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_txid_2488 v0 ~v1 ~v2 ~v3 = du_txid_2488 v0
du_txid_2488 :: T_GovEnv_2428 -> AgdaAny
du_txid_2488 v0 = coe d_txid_2444 (coe v0)
