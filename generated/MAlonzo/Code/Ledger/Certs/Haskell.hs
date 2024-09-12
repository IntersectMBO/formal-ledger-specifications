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

module MAlonzo.Code.Ledger.Certs.Haskell where

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
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure

-- _.Credential
d_Credential_28 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_56 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_56 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_56 v2 v3
du_DecEq'45'Credential_56 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_56 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- _.Epoch
d_Epoch_110 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_110 = erased
-- _.THash
d_THash_128 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_THash_128 = erased
-- _.PParams
d_PParams_156 a0 = ()
-- _.RwdAddr
d_RwdAddr_178 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_268 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_268 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_580
         (coe v0))
-- _.isKeyHash
d_isKeyHash_298 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_298 = erased
-- _.PParams.Emax
d_Emax_468 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_468 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_334 (coe v0)
-- _.PParams.a
d_a_470 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_470 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_318 (coe v0)
-- _.PParams.a0
d_a0_472 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_472 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_338 (coe v0)
-- _.PParams.b
d_b_474 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_474 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_320 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_476 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_476 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_350 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_478 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_348 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_480 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_480 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_326 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_482 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_340 (coe v0)
-- _.PParams.costmdls
d_costmdls_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_484 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_342 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_486 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_358 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_488 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_356 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_490 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_492 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_352 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_496 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_322 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_310 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_500 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_302 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_502 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_314 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_306 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_308 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_508 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_304 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_510 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_312 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_512 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_330
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_514 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_332 (coe v0)
-- _.PParams.nopt
d_nopt_516 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_516 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_336 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_518 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_518 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_324 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_520 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_520 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v0)
-- _.PParams.prices
d_prices_522 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_522 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_328 (coe v0)
-- _.PParams.pv
d_pv_524 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_524 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_316 (coe v0)
-- _.RwdAddr.net
d_net_638 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_638 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_640 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_640 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Certs.Haskell._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__662 a0 a1 a2 a3 a4 = ()
-- Ledger.Certs.Haskell._.DCert
d_DCert_664 a0 = ()
-- Ledger.Certs.Haskell._.DepositPurpose
d_DepositPurpose_668 a0 = ()
-- Ledger.Certs.Haskell._.Deposits
d_Deposits_670 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Deposits_670 = erased
-- Ledger.Certs.Haskell._.PState
d_PState_672 a0 = ()
-- Ledger.Certs.Haskell._.PoolParams
d_PoolParams_676 a0 = ()
-- Ledger.Certs.Haskell._.PState.pools
d_pools_712 ::
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_712 v0 = coe MAlonzo.Code.Ledger.Certs.d_pools_910 (coe v0)
-- Ledger.Certs.Haskell._.PState.retiring
d_retiring_714 ::
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_714 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_912 (coe v0)
-- Ledger.Certs.Haskell._.PoolParams.rewardAddr
d_rewardAddr_718 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_826 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_718 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_830 (coe v0)
-- Ledger.Certs.Haskell._.Anchor
d_Anchor_722 a0 = ()
-- Ledger.Certs.Haskell._.GovVote
d_GovVote_746 a0 = ()
-- Ledger.Certs.Haskell._.VDeleg
d_VDeleg_766 a0 = ()
-- Ledger.Certs.Haskell._.getDRepVote
d_getDRepVote_782 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_782 ~v0 = du_getDRepVote_782
du_getDRepVote_782 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_782
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_806
-- Ledger.Certs.Haskell._.Anchor.hash
d_hash_794 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> AgdaAny
d_hash_794 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_690 (coe v0)
-- Ledger.Certs.Haskell._.Anchor.url
d_url_796 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_796 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_688 (coe v0)
-- Ledger.Certs.Haskell._.GovVote.anchor
d_anchor_850 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_850 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_750 (coe v0)
-- Ledger.Certs.Haskell._.GovVote.gid
d_gid_852 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_852 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_744 (coe v0)
-- Ledger.Certs.Haskell._.GovVote.vote
d_vote_854 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726
d_vote_854 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_748 (coe v0)
-- Ledger.Certs.Haskell._.GovVote.voter
d_voter_856 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_856 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_746 (coe v0)
-- Ledger.Certs.Haskell.CertEnv
d_CertEnv_874 a0 = ()
data T_CertEnv_874
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_892 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_242
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.CertEnv.epoch
d_epoch_884 :: T_CertEnv_874 -> AgdaAny
d_epoch_884 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_892 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.pp
d_pp_886 ::
  T_CertEnv_874 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_886 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_892 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.votes
d_votes_888 ::
  T_CertEnv_874 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_votes_888 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_892 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.wdrls
d_wdrls_890 ::
  T_CertEnv_874 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_890 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_892 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState
d_DState_894 a0 = ()
data T_DState_894
  = C_'10214'_'44'_'44'_'44'_'10215''7496'_912 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.DState.voteDelegs
d_voteDelegs_904 ::
  T_DState_894 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_904 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_912 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.stakeDelegs
d_stakeDelegs_906 ::
  T_DState_894 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_906 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_912 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.rewards
d_rewards_908 ::
  T_DState_894 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_908 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_912 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.deposits
d_deposits_910 ::
  T_DState_894 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_910 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_912 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState
d_GState_914 a0 = ()
data T_GState_914
  = C_'10214'_'44'_'44'_'10215''7515'_928 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.GState.dreps
d_dreps_922 ::
  T_GState_914 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_922 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_928 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState.ccHotKeys
d_ccHotKeys_924 ::
  T_GState_914 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_924 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_928 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState.deposits
d_deposits_926 ::
  T_GState_914 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_926 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_928 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState
d_CertState_930 a0 = ()
data T_CertState_930
  = C_'10214'_'44'_'44'_'10215''7580''738'_944 T_DState_894
                                               MAlonzo.Code.Ledger.Certs.T_PState_904 T_GState_914
-- Ledger.Certs.Haskell.CertState.dState
d_dState_938 :: T_CertState_930 -> T_DState_894
d_dState_938 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_944 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState.pState
d_pState_940 ::
  T_CertState_930 -> MAlonzo.Code.Ledger.Certs.T_PState_904
d_pState_940 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_944 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState.gState
d_gState_942 :: T_CertState_930 -> T_GState_914
d_gState_942 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_944 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DelegEnv
d_DelegEnv_946 a0 = ()
data T_DelegEnv_946
  = C_'10214'_'44'_'10215''7496''7497'_956 MAlonzo.Code.Ledger.PParams.T_PParams_242
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.DelegEnv.pparams
d_pparams_952 ::
  T_DelegEnv_946 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_952 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_956 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DelegEnv.pools
d_pools_954 ::
  T_DelegEnv_946 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_954 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_956 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GovCertEnv
d_GovCertEnv_958 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_958 = erased
-- Ledger.Certs.Haskell.certDeposit
d_certDeposit_960 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_960 ~v0 v1 ~v2 = du_certDeposit_960 v1
du_certDeposit_960 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_960 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_834 v2 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v2))
                   (coe v5))
         MAlonzo.Code.Ledger.Certs.C_regdrep_842 v2 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818 (coe v2))
                   (coe v3))
         _ -> coe v1)
-- Ledger.Certs.Haskell.certRefund
d_certRefund_970 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
d_certRefund_970 ~v0 v1 = du_certRefund_970 v1
du_certRefund_970 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
du_certRefund_970 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_430
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_836 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                (MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_844 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                (MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818 (coe v2))
         _ -> coe v1)
-- Ledger.Certs.Haskell.updateCertDeposit
d_updateCertDeposit_976 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_976 v0 ~v1 v2 v3
  = du_updateCertDeposit_976 v0 v2 v3
du_updateCertDeposit_976 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposit_976 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824 (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824 (coe v0))
         v2 (coe du_certDeposit_960 (coe v1)))
      (coe du_certRefund_970 (coe v1))
-- Ledger.Certs.Haskell._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1058 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1058
  = C_DELEG'45'delegate_1120 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1122 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell._.keyDeposit
d_keyDeposit_1090 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_10561 -> Integer
d_keyDeposit_1090 ~v0 v1 = du_keyDeposit_1090 v1
du_keyDeposit_1090 :: T_GeneralizeTel_10561 -> Integer
du_keyDeposit_1090 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_322
      (coe d_'46'generalizedField'45'pp_10541 (coe v0))
-- Ledger.Certs.Haskell._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1124 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1124
  = C_GOVCERT'45'regdrep_1188 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1190 MAlonzo.Code.Ledger.PParams.T_PParams_242
                                MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1192 MAlonzo.Code.Ledger.PParams.T_PParams_242
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1194 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1194
  = C_CERT'45'deleg_1196 T__'8866'_'8640''10631'_'44'DELEG'10632'__1058 |
    C_CERT'45'pool_1198 MAlonzo.Code.Ledger.Certs.T__'8866'_'8640''10631'_'44'POOL'10632'__1042 |
    C_CERT'45'vdel_1200 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1124
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1202 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1202
  = C_CERT'45'base_1270 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell._.drepActivity
d_drepActivity_1224 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_27613 -> AgdaAny
d_drepActivity_1224 ~v0 v1 = du_drepActivity_1224 v1
du_drepActivity_1224 :: T_GeneralizeTel_27613 -> AgdaAny
du_drepActivity_1224 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_358
      (coe d_'46'generalizedField'45'pp_27589 (coe v0))
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1272 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_874 ->
  T_CertState_930 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] -> T_CertState_930 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1272 = erased
-- Ledger.Certs.Haskell..generalizedField-pp
d_'46'generalizedField'45'pp_10541 ::
  T_GeneralizeTel_10561 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_'46'generalizedField'45'pp_10541 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-c
d_'46'generalizedField'45'c_10543 ::
  T_GeneralizeTel_10561 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_10543 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-rwds
d_'46'generalizedField'45'rwds_10545 ::
  T_GeneralizeTel_10561 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_10545 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-d
d_'46'generalizedField'45'd_10547 ::
  T_GeneralizeTel_10561 -> Integer
d_'46'generalizedField'45'd_10547 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-mkh
d_'46'generalizedField'45'mkh_10549 ::
  T_GeneralizeTel_10561 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_10549 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-pools
d_'46'generalizedField'45'pools_10551 ::
  T_GeneralizeTel_10561 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_10551 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_10553 ::
  T_GeneralizeTel_10561 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_10553 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_10555 ::
  T_GeneralizeTel_10561 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_10555 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-dep
d_'46'generalizedField'45'dep_10557 ::
  T_GeneralizeTel_10561 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_10557 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-mv
d_'46'generalizedField'45'mv_10559 ::
  T_GeneralizeTel_10561 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674
d_'46'generalizedField'45'mv_10559 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GeneralizeTel
d_GeneralizeTel_10561 a0 = ()
data T_GeneralizeTel_10561
  = C_mkGeneralizeTel_10563 MAlonzo.Code.Ledger.PParams.T_PParams_242
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer (Maybe AgdaAny)
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674)
-- Ledger.Certs.Haskell..generalizedField-d
d_'46'generalizedField'45'd_19129 ::
  T_GeneralizeTel_19147 -> Integer
d_'46'generalizedField'45'd_19129 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-c
d_'46'generalizedField'45'c_19131 ::
  T_GeneralizeTel_19147 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_19131 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-dReps
d_'46'generalizedField'45'dReps_19133 ::
  T_GeneralizeTel_19147 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_19133 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-e
d_'46'generalizedField'45'e_19135 ::
  T_GeneralizeTel_19147 -> AgdaAny
d_'46'generalizedField'45'e_19135 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-vs
d_'46'generalizedField'45'vs_19137 ::
  T_GeneralizeTel_19147 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_'46'generalizedField'45'vs_19137 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_19139 ::
  T_GeneralizeTel_19147 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_19139 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_19141 ::
  T_GeneralizeTel_19147 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_19141 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-dep
d_'46'generalizedField'45'dep_19143 ::
  T_GeneralizeTel_19147 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_19143 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-an
d_'46'generalizedField'45'an_19145 ::
  T_GeneralizeTel_19147 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_'46'generalizedField'45'an_19145 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GeneralizeTel
d_GeneralizeTel_19147 a0 = ()
data T_GeneralizeTel_19147
  = C_mkGeneralizeTel_19149 Integer
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
-- Ledger.Certs.Haskell..generalizedField-pp
d_'46'generalizedField'45'pp_27589 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_'46'generalizedField'45'pp_27589 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-vs
d_'46'generalizedField'45'vs_27591 ::
  T_GeneralizeTel_27613 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_'46'generalizedField'45'vs_27591 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-e
d_'46'generalizedField'45'e_27593 ::
  T_GeneralizeTel_27613 -> AgdaAny
d_'46'generalizedField'45'e_27593 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-dreps
d_'46'generalizedField'45'dreps_27595 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dreps_27595 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_27597 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_27597 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_27599 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_27599 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-rewards
d_'46'generalizedField'45'rewards_27601 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_27601 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_27603 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_27603 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-ddep
d_'46'generalizedField'45'ddep_27605 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ddep_27605 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_27607 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Ledger.Certs.T_PState_904
d_'46'generalizedField'45'st'7510'_27607 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_27609 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_27609 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-gdep
d_'46'generalizedField'45'gdep_27611 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'gdep_27611 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GeneralizeTel
d_GeneralizeTel_27613 a0 = ()
data T_GeneralizeTel_27613
  = C_mkGeneralizeTel_27615 MAlonzo.Code.Ledger.PParams.T_PParams_242
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Certs.T_PState_904
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
