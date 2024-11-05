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
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- _.Epoch
d_Epoch_112 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_112 = erased
-- _.THash
d_THash_132 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_THash_132 = erased
-- _.PParams
d_PParams_160 a0 = ()
-- _.RwdAddr
d_RwdAddr_182 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_272 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_272 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_604
         (coe v0))
-- _.isKeyHash
d_isKeyHash_302 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_302 = erased
-- _.PParams.Emax
d_Emax_478 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_478 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_480 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_480 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_482 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_484 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_484 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_486 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_488 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_490 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_492 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_496 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_500 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_502 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_508 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_510 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_512 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_514 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_516 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_516 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_518 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_518 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_520 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_520 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_522 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_522 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_524 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_524 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_526 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_526 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_528 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_528 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_530 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_530 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_532 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_532 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_534 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_534 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_536 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_536 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_538 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_538 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_540 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_540 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_542 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_542 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.RwdAddr.net
d_net_664 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_664 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_666 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_666 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Conformance.Certs._.Anchor
d_Anchor_688 a0 = ()
-- Ledger.Conway.Conformance.Certs._.DecEq-VDeleg
d_DecEq'45'VDeleg_698 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_698 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovRole
d_GovRole_710 a0 = ()
-- Ledger.Conway.Conformance.Certs._.GovVote
d_GovVote_712 a0 = ()
-- Ledger.Conway.Conformance.Certs._.VDeleg
d_VDeleg_732 a0 = ()
-- Ledger.Conway.Conformance.Certs._.getDRepVote
d_getDRepVote_748 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_748 ~v0 = du_getDRepVote_748
du_getDRepVote_748 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_748
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_830
-- Ledger.Conway.Conformance.Certs._.Anchor.hash
d_hash_760 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 -> AgdaAny
d_hash_760 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_714 (coe v0)
-- Ledger.Conway.Conformance.Certs._.Anchor.url
d_url_762 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_762 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_712 (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.anchor
d_anchor_816 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_816 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.gid
d_gid_818 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_818 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_768 (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.vote
d_vote_820 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
d_vote_820 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_772 (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.voter
d_voter_822 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_822 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__842 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__846 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__848 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__850 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__852 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv
d_CertEnv_862 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CertState
d_CertState_864 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DCert
d_DCert_868 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_878 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_878 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv
d_DelegEnv_880 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DepositPurpose
d_DepositPurpose_882 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.Deposits
d_Deposits_884 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Deposits_884 = erased
-- Ledger.Conway.Conformance.Certs.Certs.GovCertEnv
d_GovCertEnv_896 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_896 = erased
-- Ledger.Conway.Conformance.Certs.Certs.HasCoin-CertState
d_HasCoin'45'CertState_898 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_898 v0
  = coe MAlonzo.Code.Ledger.Certs.d_HasCoin'45'CertState_990 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState
d_PState_904 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.PoolEnv
d_PoolEnv_908 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_908 = erased
-- Ledger.Conway.Conformance.Certs.Certs.PoolParams
d_PoolParams_910 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.cwitness
d_cwitness_914 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_914 v0
  = coe MAlonzo.Code.Ledger.Certs.d_cwitness_872 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.rewardsBalance
d_rewardsBalance_928 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DState_908 -> Integer
d_rewardsBalance_928 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardsBalance_984 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.epoch
d_epoch_976 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_888 -> AgdaAny
d_epoch_976 v0 = coe MAlonzo.Code.Ledger.Certs.d_epoch_898 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.pp
d_pp_978 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_978 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_900 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.votes
d_votes_980 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_votes_980 v0 = coe MAlonzo.Code.Ledger.Certs.d_votes_902 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.wdrls
d_wdrls_982 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_982 v0 = coe MAlonzo.Code.Ledger.Certs.d_wdrls_904 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.dState
d_dState_986 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  MAlonzo.Code.Ledger.Certs.T_DState_908
d_dState_986 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_956 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.gState
d_gState_988 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  MAlonzo.Code.Ledger.Certs.T_GState_936
d_gState_988 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_960 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.pState
d_pState_990 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924
d_pState_990 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_958 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.delegatees
d_delegatees_1018 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_964 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_delegatees_1018 v0
  = coe MAlonzo.Code.Ledger.Certs.d_delegatees_976 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.pools
d_pools_1020 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_964 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1020 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_974 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.pparams
d_pparams_1022 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_964 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1022 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_972 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState.pools
d_pools_1042 ::
  MAlonzo.Code.Ledger.Certs.T_PState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1042 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_930 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState.retiring
d_retiring_1044 ::
  MAlonzo.Code.Ledger.Certs.T_PState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1044 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_932 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PoolParams.rewardAddr
d_rewardAddr_1048 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_850 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_1048 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_854 (coe v0)
-- Ledger.Conway.Conformance.Certs.DState
d_DState_1050 a0 = ()
data T_DState_1050
  = C_'10214'_'44'_'44'_'44'_'10215''7496'_1068 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.DState.voteDelegs
d_voteDelegs_1060 ::
  T_DState_1050 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1060 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1068 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.stakeDelegs
d_stakeDelegs_1062 ::
  T_DState_1050 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1062 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1068 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.rewards
d_rewards_1064 ::
  T_DState_1050 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1064 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1068 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.deposits
d_deposits_1066 ::
  T_DState_1050 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1066 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1068 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState
d_GState_1070 a0 = ()
data T_GState_1070
  = C_'10214'_'44'_'44'_'10215''7515'_1084 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.GState.dreps
d_dreps_1078 ::
  T_GState_1070 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1078 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1084 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState.ccHotKeys
d_ccHotKeys_1080 ::
  T_GState_1070 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1080 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1084 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState.deposits
d_deposits_1082 ::
  T_GState_1070 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1082 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1084 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState
d_CertState_1086 a0 = ()
data T_CertState_1086
  = C_'10214'_'44'_'44'_'10215''7580''738'_1100 T_DState_1050
                                                MAlonzo.Code.Ledger.Certs.T_PState_924 T_GState_1070
-- Ledger.Conway.Conformance.Certs.CertState.dState
d_dState_1094 :: T_CertState_1086 -> T_DState_1050
d_dState_1094 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1100 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState.pState
d_pState_1096 ::
  T_CertState_1086 -> MAlonzo.Code.Ledger.Certs.T_PState_924
d_pState_1096 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1100 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState.gState
d_gState_1098 :: T_CertState_1086 -> T_GState_1070
d_gState_1098 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1100 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.certDeposit
d_certDeposit_1102 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1102 ~v0 v1 ~v2 = du_certDeposit_1102 v1
du_certDeposit_1102 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1102 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_858 v2 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_838 (coe v2))
                   (coe v5))
         MAlonzo.Code.Ledger.Certs.C_regdrep_866 v2 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_842 (coe v2))
                   (coe v3))
         _ -> coe v1)
-- Ledger.Conway.Conformance.Certs.certRefund
d_certRefund_1112 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
d_certRefund_1112 ~v0 v1 = du_certRefund_1112 v1
du_certRefund_1112 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
du_certRefund_1112 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_442
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_860 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_838 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_868 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_842 (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Conformance.Certs.updateCertDeposit
d_updateCertDeposit_1118 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_1118 v0 ~v1 v2 v3
  = du_updateCertDeposit_1118 v0 v2 v3
du_updateCertDeposit_1118 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposit_1118 v0 v1 v2
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
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848 (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848 (coe v0))
         v2 (coe du_certDeposit_1102 (coe v1)))
      (coe du_certRefund_1112 (coe v1))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1196 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__1196
  = C_POOL'45'regpool_1200 | C_POOL'45'retirepool_1202
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1198 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1198
  = C_DELEG'45'delegate_1272 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1274 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._.keyDeposit
d_keyDeposit_1234 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_13141 -> Integer
d_keyDeposit_1234 ~v0 v1 = du_keyDeposit_1234 v1
du_keyDeposit_1234 :: T_GeneralizeTel_13141 -> Integer
du_keyDeposit_1234 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_332
      (coe d_'46'generalizedField'45'pp_13119 (coe v0))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1276 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1276
  = C_GOVCERT'45'regdrep_1348 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1350 MAlonzo.Code.Ledger.PParams.T_PParams_244
                                MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1352 MAlonzo.Code.Ledger.PParams.T_PParams_244
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1354 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1354
  = C_CERT'45'deleg_1356 T__'8866'_'8640''10631'_'44'DELEG'10632'__1198 |
    C_CERT'45'pool_1358 T__'8866'_'8640''10631'_'44'POOL'10632'__1196 |
    C_CERT'45'vdel_1360 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1276
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1362 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1362
  = C_CERT'45'base_1440 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._.drepActivity
d_drepActivity_1384 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_32257 -> AgdaAny
d_drepActivity_1384 ~v0 v1 = du_drepActivity_1384 v1
du_drepActivity_1384 :: T_GeneralizeTel_32257 -> AgdaAny
du_drepActivity_1384 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_376
      (coe d_'46'generalizedField'45'pp_32233 (coe v0))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1442 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  T_CertState_1086 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] -> T_CertState_1086 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1442 = erased
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_13119 ::
  T_GeneralizeTel_13141 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_'46'generalizedField'45'pp_13119 v0
  = case coe v0 of
      C_mkGeneralizeTel_13143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_13121 ::
  T_GeneralizeTel_13141 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_13121 v0
  = case coe v0 of
      C_mkGeneralizeTel_13143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_13123 ::
  T_GeneralizeTel_13141 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_13123 v0
  = case coe v0 of
      C_mkGeneralizeTel_13143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_13125 ::
  T_GeneralizeTel_13141 -> Integer
d_'46'generalizedField'45'd_13125 v0
  = case coe v0 of
      C_mkGeneralizeTel_13143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_13127 ::
  T_GeneralizeTel_13141 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698
d_'46'generalizedField'45'mv_13127 v0
  = case coe v0 of
      C_mkGeneralizeTel_13143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-delegatees
d_'46'generalizedField'45'delegatees_13129 ::
  T_GeneralizeTel_13141 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_'46'generalizedField'45'delegatees_13129 v0
  = case coe v0 of
      C_mkGeneralizeTel_13143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-mkh
d_'46'generalizedField'45'mkh_13131 ::
  T_GeneralizeTel_13141 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_13131 v0
  = case coe v0 of
      C_mkGeneralizeTel_13143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_13133 ::
  T_GeneralizeTel_13141 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_13133 v0
  = case coe v0 of
      C_mkGeneralizeTel_13143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_13135 ::
  T_GeneralizeTel_13141 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_13135 v0
  = case coe v0 of
      C_mkGeneralizeTel_13143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_13137 ::
  T_GeneralizeTel_13141 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_13137 v0
  = case coe v0 of
      C_mkGeneralizeTel_13143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_13139 ::
  T_GeneralizeTel_13141 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_13139 v0
  = case coe v0 of
      C_mkGeneralizeTel_13143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_13141 a0 = ()
data T_GeneralizeTel_13141
  = C_mkGeneralizeTel_13143 MAlonzo.Code.Ledger.PParams.T_PParams_244
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                            (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698)
                            [MAlonzo.Code.Ledger.Address.T_Credential_16] (Maybe AgdaAny)
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_23145 ::
  T_GeneralizeTel_23163 -> Integer
d_'46'generalizedField'45'd_23145 v0
  = case coe v0 of
      C_mkGeneralizeTel_23165 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_23147 ::
  T_GeneralizeTel_23163 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_23147 v0
  = case coe v0 of
      C_mkGeneralizeTel_23165 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_23149 ::
  T_GeneralizeTel_23163 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_23149 v0
  = case coe v0 of
      C_mkGeneralizeTel_23165 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-e
d_'46'generalizedField'45'e_23151 ::
  T_GeneralizeTel_23163 -> AgdaAny
d_'46'generalizedField'45'e_23151 v0
  = case coe v0 of
      C_mkGeneralizeTel_23165 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_23153 ::
  T_GeneralizeTel_23163 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_'46'generalizedField'45'vs_23153 v0
  = case coe v0 of
      C_mkGeneralizeTel_23165 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_23155 ::
  T_GeneralizeTel_23163 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_23155 v0
  = case coe v0 of
      C_mkGeneralizeTel_23165 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_23157 ::
  T_GeneralizeTel_23163 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_23157 v0
  = case coe v0 of
      C_mkGeneralizeTel_23165 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_23159 ::
  T_GeneralizeTel_23163 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_23159 v0
  = case coe v0 of
      C_mkGeneralizeTel_23165 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-an
d_'46'generalizedField'45'an_23161 ::
  T_GeneralizeTel_23163 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_'46'generalizedField'45'an_23161 v0
  = case coe v0 of
      C_mkGeneralizeTel_23165 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_23163 a0 = ()
data T_GeneralizeTel_23163
  = C_mkGeneralizeTel_23165 Integer
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_32233 ::
  T_GeneralizeTel_32257 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_'46'generalizedField'45'pp_32233 v0
  = case coe v0 of
      C_mkGeneralizeTel_32259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_32235 ::
  T_GeneralizeTel_32257 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_'46'generalizedField'45'vs_32235 v0
  = case coe v0 of
      C_mkGeneralizeTel_32259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-e
d_'46'generalizedField'45'e_32237 ::
  T_GeneralizeTel_32257 -> AgdaAny
d_'46'generalizedField'45'e_32237 v0
  = case coe v0 of
      C_mkGeneralizeTel_32259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_32239 ::
  T_GeneralizeTel_32257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_32239 v0
  = case coe v0 of
      C_mkGeneralizeTel_32259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_32241 ::
  T_GeneralizeTel_32257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_32241 v0
  = case coe v0 of
      C_mkGeneralizeTel_32259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_32243 ::
  T_GeneralizeTel_32257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_32243 v0
  = case coe v0 of
      C_mkGeneralizeTel_32259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rewards
d_'46'generalizedField'45'rewards_32245 ::
  T_GeneralizeTel_32257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_32245 v0
  = case coe v0 of
      C_mkGeneralizeTel_32259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_32247 ::
  T_GeneralizeTel_32257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_32247 v0
  = case coe v0 of
      C_mkGeneralizeTel_32259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ddep
d_'46'generalizedField'45'ddep_32249 ::
  T_GeneralizeTel_32257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ddep_32249 v0
  = case coe v0 of
      C_mkGeneralizeTel_32259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_32251 ::
  T_GeneralizeTel_32257 -> MAlonzo.Code.Ledger.Certs.T_PState_924
d_'46'generalizedField'45'st'7510'_32251 v0
  = case coe v0 of
      C_mkGeneralizeTel_32259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_32253 ::
  T_GeneralizeTel_32257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_32253 v0
  = case coe v0 of
      C_mkGeneralizeTel_32259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-gdep
d_'46'generalizedField'45'gdep_32255 ::
  T_GeneralizeTel_32257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'gdep_32255 v0
  = case coe v0 of
      C_mkGeneralizeTel_32259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_32257 a0 = ()
data T_GeneralizeTel_32257
  = C_mkGeneralizeTel_32259 MAlonzo.Code.Ledger.PParams.T_PParams_244
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Certs.T_PState_924
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
