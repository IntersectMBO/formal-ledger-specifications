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

module MAlonzo.Code.Ledger.Conway.Conformance.Certs where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Credential
d_Credential_30 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_58 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_58 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_58 v2 v3
du_DecEq'45'Credential_58 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_58 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_170 (coe v0)
      (coe v1)
-- _.Epoch
d_Epoch_116 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_116 = erased
-- _.THash
d_THash_136 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_THash_136 = erased
-- _.PParams
d_PParams_164 a0 = ()
-- _.RwdAddr
d_RwdAddr_186 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_280 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_280 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_604
         (coe v0))
-- _.isKeyHash
d_isKeyHash_314 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_314 = erased
-- _.PParams.Emax
d_Emax_496 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_496 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_498 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_498 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_500 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_502 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_502 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_508 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_510 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_512 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_514 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_516 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_516 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_518 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_518 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_520 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_520 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_522 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_522 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_524 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_524 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_526 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_526 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_528 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_528 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_530 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_530 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_532 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_532 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_534 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_534 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_536 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_536 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_538 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_538 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_540 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_540 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_542 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_542 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_544 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_544 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_546 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_546 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_548 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_548 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_550 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_550 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_552 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_552 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_554 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_554 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_556 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_556 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_558 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_558 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_560 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_560 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.RwdAddr.net
d_net_682 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_86 -> AgdaAny
d_net_682 v0 = coe MAlonzo.Code.Ledger.Address.d_net_92 (coe v0)
-- _.RwdAddr.stake
d_stake_684 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_86 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_684 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_94 (coe v0)
-- Ledger.Conway.Conformance.Certs._.Anchor
d_Anchor_706 a0 = ()
-- Ledger.Conway.Conformance.Certs._.DecEq-VDeleg
d_DecEq'45'VDeleg_716 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_716 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_846
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovRole
d_GovRole_728 a0 = ()
-- Ledger.Conway.Conformance.Certs._.GovVote
d_GovVote_730 a0 = ()
-- Ledger.Conway.Conformance.Certs._.VDeleg
d_VDeleg_750 a0 = ()
-- Ledger.Conway.Conformance.Certs._.getDRepVote
d_getDRepVote_766 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_766 ~v0 = du_getDRepVote_766
du_getDRepVote_766 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_766
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_848
-- Ledger.Conway.Conformance.Certs._.Anchor.hash
d_hash_778 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_724 -> AgdaAny
d_hash_778 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_732 (coe v0)
-- Ledger.Conway.Conformance.Certs._.Anchor.url
d_url_780 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_724 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_780 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_730 (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.anchor
d_anchor_834 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_724
d_anchor_834 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_792 (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.gid
d_gid_836 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_836 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_786 (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.vote
d_vote_838 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_768
d_vote_838 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_790 (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.voter
d_voter_840 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_840 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_788 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__860 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__864 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__866 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__868 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__870 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv
d_CertEnv_880 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CertState
d_CertState_882 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DCert
d_DCert_886 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_896 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_896 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_866 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv
d_DelegEnv_898 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DepositPurpose
d_DepositPurpose_900 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.Deposits
d_Deposits_902 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Deposits_902 = erased
-- Ledger.Conway.Conformance.Certs.Certs.GovCertEnv
d_GovCertEnv_914 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_914 = erased
-- Ledger.Conway.Conformance.Certs.Certs.HasCoin-CertState
d_HasCoin'45'CertState_916 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_916 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_HasCoin'45'CertState_1008 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState
d_PState_922 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.PoolEnv
d_PoolEnv_926 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_926 = erased
-- Ledger.Conway.Conformance.Certs.Certs.PoolParams
d_PoolParams_928 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.cwitness
d_cwitness_932 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_874 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_932 v0
  = coe MAlonzo.Code.Ledger.Certs.d_cwitness_890 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.rewardsBalance
d_rewardsBalance_946 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DState_926 -> Integer
d_rewardsBalance_946 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardsBalance_1002 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.epoch
d_epoch_994 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_906 -> AgdaAny
d_epoch_994 v0 = coe MAlonzo.Code.Ledger.Certs.d_epoch_916 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.pp
d_pp_996 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_906 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_996 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_918 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.votes
d_votes_998 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_906 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776]
d_votes_998 v0 = coe MAlonzo.Code.Ledger.Certs.d_votes_920 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.wdrls
d_wdrls_1000 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1000 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_922 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.dState
d_dState_1004 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_966 ->
  MAlonzo.Code.Ledger.Certs.T_DState_926
d_dState_1004 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_974 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.gState
d_gState_1006 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_966 ->
  MAlonzo.Code.Ledger.Certs.T_GState_954
d_gState_1006 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_978 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.pState
d_pState_1008 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_966 ->
  MAlonzo.Code.Ledger.Certs.T_PState_942
d_pState_1008 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_976 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.delegatees
d_delegatees_1036 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_982 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_delegatees_1036 v0
  = coe MAlonzo.Code.Ledger.Certs.d_delegatees_994 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.pools
d_pools_1038 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_982 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1038 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_992 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.pparams
d_pparams_1040 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_982 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1040 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_990 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState.pools
d_pools_1060 ::
  MAlonzo.Code.Ledger.Certs.T_PState_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1060 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_948 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState.retiring
d_retiring_1062 ::
  MAlonzo.Code.Ledger.Certs.T_PState_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1062 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_950 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PoolParams.rewardAddr
d_rewardAddr_1066 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_868 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_1066 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_872 (coe v0)
-- Ledger.Conway.Conformance.Certs.DState
d_DState_1068 a0 = ()
data T_DState_1068
  = C_'10214'_'44'_'44'_'44'_'10215''7496'_1086 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.DState.voteDelegs
d_voteDelegs_1078 ::
  T_DState_1068 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1078 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1086 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.stakeDelegs
d_stakeDelegs_1080 ::
  T_DState_1068 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1080 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1086 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.rewards
d_rewards_1082 ::
  T_DState_1068 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1082 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1086 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.deposits
d_deposits_1084 ::
  T_DState_1068 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1084 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1086 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState
d_GState_1088 a0 = ()
data T_GState_1088
  = C_'10214'_'44'_'44'_'10215''7515'_1102 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.GState.dreps
d_dreps_1096 ::
  T_GState_1088 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1096 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1102 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState.ccHotKeys
d_ccHotKeys_1098 ::
  T_GState_1088 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1098 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1102 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState.deposits
d_deposits_1100 ::
  T_GState_1088 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1100 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1102 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState
d_CertState_1104 a0 = ()
data T_CertState_1104
  = C_'10214'_'44'_'44'_'10215''7580''738'_1118 T_DState_1068
                                                MAlonzo.Code.Ledger.Certs.T_PState_942 T_GState_1088
-- Ledger.Conway.Conformance.Certs.CertState.dState
d_dState_1112 :: T_CertState_1104 -> T_DState_1068
d_dState_1112 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1118 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState.pState
d_pState_1114 ::
  T_CertState_1104 -> MAlonzo.Code.Ledger.Certs.T_PState_942
d_pState_1114 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1118 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState.gState
d_gState_1116 :: T_CertState_1104 -> T_GState_1088
d_gState_1116 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1118 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.certDeposit
d_certDeposit_1120 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_874 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1120 ~v0 v1 ~v2 = du_certDeposit_1120 v1
du_certDeposit_1120 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1120 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_876 v2 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_856 (coe v2))
                   (coe v5))
         MAlonzo.Code.Ledger.Certs.C_regdrep_884 v2 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_860 (coe v2))
                   (coe v3))
         _ -> coe v1)
-- Ledger.Conway.Conformance.Certs.certRefund
d_certRefund_1130 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_874 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_854]
d_certRefund_1130 ~v0 v1 = du_certRefund_1130 v1
du_certRefund_1130 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_874 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_854]
du_certRefund_1130 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_442
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_878 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_856 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_886 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_860 (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Conformance.Certs.updateCertDeposit
d_updateCertDeposit_1136 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_1136 v0 ~v1 v2 v3
  = du_updateCertDeposit_1136 v0 v2 v3
du_updateCertDeposit_1136 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposit_1136 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_866 (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_866 (coe v0))
         v2 (coe du_certDeposit_1120 (coe v1)))
      (coe du_certRefund_1130 (coe v1))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1214 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__1214
  = C_POOL'45'regpool_1218 | C_POOL'45'retirepool_1220
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1216 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1216
  = C_DELEG'45'delegate_1290 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1292 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._.keyDeposit
d_keyDeposit_1252 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_13209 -> Integer
d_keyDeposit_1252 ~v0 v1 = du_keyDeposit_1252 v1
du_keyDeposit_1252 :: T_GeneralizeTel_13209 -> Integer
du_keyDeposit_1252 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_332
      (coe d_'46'generalizedField'45'pp_13187 (coe v0))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1294 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1294
  = C_GOVCERT'45'regdrep_1366 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1368 MAlonzo.Code.Ledger.PParams.T_PParams_244
                                MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1370 MAlonzo.Code.Ledger.PParams.T_PParams_244
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1372 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1372
  = C_CERT'45'deleg_1374 T__'8866'_'8640''10631'_'44'DELEG'10632'__1216 |
    C_CERT'45'pool_1376 T__'8866'_'8640''10631'_'44'POOL'10632'__1214 |
    C_CERT'45'vdel_1378 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1294
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1380 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1380
  = C_CERT'45'base_1458 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._.drepActivity
d_drepActivity_1402 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_32073 -> AgdaAny
d_drepActivity_1402 ~v0 v1 = du_drepActivity_1402 v1
du_drepActivity_1402 :: T_GeneralizeTel_32073 -> AgdaAny
du_drepActivity_1402 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_376
      (coe d_'46'generalizedField'45'pp_32049 (coe v0))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1460 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_906 ->
  T_CertState_1104 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_874] -> T_CertState_1104 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1460 = erased
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_13187 ::
  T_GeneralizeTel_13209 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_'46'generalizedField'45'pp_13187 v0
  = case coe v0 of
      C_mkGeneralizeTel_13211 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_13189 ::
  T_GeneralizeTel_13209 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_13189 v0
  = case coe v0 of
      C_mkGeneralizeTel_13211 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_13191 ::
  T_GeneralizeTel_13209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_13191 v0
  = case coe v0 of
      C_mkGeneralizeTel_13211 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_13193 ::
  T_GeneralizeTel_13209 -> Integer
d_'46'generalizedField'45'd_13193 v0
  = case coe v0 of
      C_mkGeneralizeTel_13211 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_13195 ::
  T_GeneralizeTel_13209 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_716
d_'46'generalizedField'45'mv_13195 v0
  = case coe v0 of
      C_mkGeneralizeTel_13211 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-delegatees
d_'46'generalizedField'45'delegatees_13197 ::
  T_GeneralizeTel_13209 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_'46'generalizedField'45'delegatees_13197 v0
  = case coe v0 of
      C_mkGeneralizeTel_13211 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-mkh
d_'46'generalizedField'45'mkh_13199 ::
  T_GeneralizeTel_13209 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_13199 v0
  = case coe v0 of
      C_mkGeneralizeTel_13211 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_13201 ::
  T_GeneralizeTel_13209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_13201 v0
  = case coe v0 of
      C_mkGeneralizeTel_13211 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_13203 ::
  T_GeneralizeTel_13209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_13203 v0
  = case coe v0 of
      C_mkGeneralizeTel_13211 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_13205 ::
  T_GeneralizeTel_13209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_13205 v0
  = case coe v0 of
      C_mkGeneralizeTel_13211 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_13207 ::
  T_GeneralizeTel_13209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_13207 v0
  = case coe v0 of
      C_mkGeneralizeTel_13211 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_13209 a0 = ()
data T_GeneralizeTel_13209
  = C_mkGeneralizeTel_13211 MAlonzo.Code.Ledger.PParams.T_PParams_244
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                            (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_716)
                            [MAlonzo.Code.Ledger.Address.T_Credential_16] (Maybe AgdaAny)
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_22923 ::
  T_GeneralizeTel_22941 -> Integer
d_'46'generalizedField'45'd_22923 v0
  = case coe v0 of
      C_mkGeneralizeTel_22943 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_22925 ::
  T_GeneralizeTel_22941 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_22925 v0
  = case coe v0 of
      C_mkGeneralizeTel_22943 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_22927 ::
  T_GeneralizeTel_22941 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_22927 v0
  = case coe v0 of
      C_mkGeneralizeTel_22943 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-e
d_'46'generalizedField'45'e_22929 ::
  T_GeneralizeTel_22941 -> AgdaAny
d_'46'generalizedField'45'e_22929 v0
  = case coe v0 of
      C_mkGeneralizeTel_22943 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_22931 ::
  T_GeneralizeTel_22941 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776]
d_'46'generalizedField'45'vs_22931 v0
  = case coe v0 of
      C_mkGeneralizeTel_22943 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_22933 ::
  T_GeneralizeTel_22941 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_22933 v0
  = case coe v0 of
      C_mkGeneralizeTel_22943 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_22935 ::
  T_GeneralizeTel_22941 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_22935 v0
  = case coe v0 of
      C_mkGeneralizeTel_22943 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_22937 ::
  T_GeneralizeTel_22941 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_22937 v0
  = case coe v0 of
      C_mkGeneralizeTel_22943 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-an
d_'46'generalizedField'45'an_22939 ::
  T_GeneralizeTel_22941 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_724
d_'46'generalizedField'45'an_22939 v0
  = case coe v0 of
      C_mkGeneralizeTel_22943 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_22941 a0 = ()
data T_GeneralizeTel_22941
  = C_mkGeneralizeTel_22943 Integer
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_724
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_32049 ::
  T_GeneralizeTel_32073 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_'46'generalizedField'45'pp_32049 v0
  = case coe v0 of
      C_mkGeneralizeTel_32075 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_32051 ::
  T_GeneralizeTel_32073 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776]
d_'46'generalizedField'45'vs_32051 v0
  = case coe v0 of
      C_mkGeneralizeTel_32075 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-e
d_'46'generalizedField'45'e_32053 ::
  T_GeneralizeTel_32073 -> AgdaAny
d_'46'generalizedField'45'e_32053 v0
  = case coe v0 of
      C_mkGeneralizeTel_32075 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_32055 ::
  T_GeneralizeTel_32073 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_32055 v0
  = case coe v0 of
      C_mkGeneralizeTel_32075 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_32057 ::
  T_GeneralizeTel_32073 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_32057 v0
  = case coe v0 of
      C_mkGeneralizeTel_32075 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_32059 ::
  T_GeneralizeTel_32073 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_32059 v0
  = case coe v0 of
      C_mkGeneralizeTel_32075 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rewards
d_'46'generalizedField'45'rewards_32061 ::
  T_GeneralizeTel_32073 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_32061 v0
  = case coe v0 of
      C_mkGeneralizeTel_32075 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_32063 ::
  T_GeneralizeTel_32073 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_32063 v0
  = case coe v0 of
      C_mkGeneralizeTel_32075 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ddep
d_'46'generalizedField'45'ddep_32065 ::
  T_GeneralizeTel_32073 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ddep_32065 v0
  = case coe v0 of
      C_mkGeneralizeTel_32075 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_32067 ::
  T_GeneralizeTel_32073 -> MAlonzo.Code.Ledger.Certs.T_PState_942
d_'46'generalizedField'45'st'7510'_32067 v0
  = case coe v0 of
      C_mkGeneralizeTel_32075 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_32069 ::
  T_GeneralizeTel_32073 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_32069 v0
  = case coe v0 of
      C_mkGeneralizeTel_32075 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-gdep
d_'46'generalizedField'45'gdep_32071 ::
  T_GeneralizeTel_32073 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'gdep_32071 v0
  = case coe v0 of
      C_mkGeneralizeTel_32075 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_32073 a0 = ()
data T_GeneralizeTel_32073
  = C_mkGeneralizeTel_32075 MAlonzo.Code.Ledger.PParams.T_PParams_244
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Certs.T_PState_942
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
