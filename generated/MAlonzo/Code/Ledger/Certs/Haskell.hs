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
d_THash_130 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_THash_130 = erased
-- _.PParams
d_PParams_158 a0 = ()
-- _.RwdAddr
d_RwdAddr_180 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_270 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_270 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
         (coe v0))
-- _.isKeyHash
d_isKeyHash_300 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_300 = erased
-- _.PParams.Emax
d_Emax_470 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_470 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_336 (coe v0)
-- _.PParams.a
d_a_472 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_472 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_320 (coe v0)
-- _.PParams.a0
d_a0_474 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_474 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_340 (coe v0)
-- _.PParams.b
d_b_476 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_476 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_322 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_478 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_352 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_480 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_480 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_350 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_482 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_328 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_484 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_342 (coe v0)
-- _.PParams.costmdls
d_costmdls_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_486 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_344 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_488 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_360 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_490 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_358 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_492 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_496 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_354 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_324 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_500 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_312 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_502 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_304 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_504 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_316 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_308 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_508 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_310 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_510 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_306 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_512 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_314 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_514 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_332
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_516 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_516 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_334 (coe v0)
-- _.PParams.nopt
d_nopt_518 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_518 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_338 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_520 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_520 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_326 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_522 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_522 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_346 (coe v0)
-- _.PParams.prices
d_prices_524 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_524 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_330 (coe v0)
-- _.PParams.pv
d_pv_526 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_526 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_318 (coe v0)
-- _.RwdAddr.net
d_net_640 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_640 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_642 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_642 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Certs.Haskell._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__664 a0 a1 a2 a3 a4 = ()
-- Ledger.Certs.Haskell._.DCert
d_DCert_666 a0 = ()
-- Ledger.Certs.Haskell._.DepositPurpose
d_DepositPurpose_670 a0 = ()
-- Ledger.Certs.Haskell._.Deposits
d_Deposits_672 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Deposits_672 = erased
-- Ledger.Certs.Haskell._.PState
d_PState_674 a0 = ()
-- Ledger.Certs.Haskell._.PoolParams
d_PoolParams_678 a0 = ()
-- Ledger.Certs.Haskell._.PState.pools
d_pools_714 ::
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_714 v0 = coe MAlonzo.Code.Ledger.Certs.d_pools_912 (coe v0)
-- Ledger.Certs.Haskell._.PState.retiring
d_retiring_716 ::
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_716 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_914 (coe v0)
-- Ledger.Certs.Haskell._.PoolParams.rewardAddr
d_rewardAddr_720 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_828 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_720 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_832 (coe v0)
-- Ledger.Certs.Haskell._.Anchor
d_Anchor_724 a0 = ()
-- Ledger.Certs.Haskell._.GovVote
d_GovVote_748 a0 = ()
-- Ledger.Certs.Haskell._.VDeleg
d_VDeleg_768 a0 = ()
-- Ledger.Certs.Haskell._.getDRepVote
d_getDRepVote_784 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_784 ~v0 = du_getDRepVote_784
du_getDRepVote_784 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_784
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_808
-- Ledger.Certs.Haskell._.Anchor.hash
d_hash_796 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684 -> AgdaAny
d_hash_796 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_692 (coe v0)
-- Ledger.Certs.Haskell._.Anchor.url
d_url_798 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_798 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_690 (coe v0)
-- Ledger.Certs.Haskell._.GovVote.anchor
d_anchor_852 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_852 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_752 (coe v0)
-- Ledger.Certs.Haskell._.GovVote.gid
d_gid_854 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_854 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_746 (coe v0)
-- Ledger.Certs.Haskell._.GovVote.vote
d_vote_856 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_728
d_vote_856 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_750 (coe v0)
-- Ledger.Certs.Haskell._.GovVote.voter
d_voter_858 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_858 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_748 (coe v0)
-- Ledger.Certs.Haskell.CertEnv
d_CertEnv_876 a0 = ()
data T_CertEnv_876
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_894 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_244
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.CertEnv.epoch
d_epoch_886 :: T_CertEnv_876 -> AgdaAny
d_epoch_886 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_894 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.pp
d_pp_888 ::
  T_CertEnv_876 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_888 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_894 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.votes
d_votes_890 ::
  T_CertEnv_876 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
d_votes_890 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_894 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.wdrls
d_wdrls_892 ::
  T_CertEnv_876 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_892 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_894 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState
d_DState_896 a0 = ()
data T_DState_896
  = C_'10214'_'44'_'44'_'44'_'10215''7496'_914 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.DState.voteDelegs
d_voteDelegs_906 ::
  T_DState_896 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_906 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_914 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.stakeDelegs
d_stakeDelegs_908 ::
  T_DState_896 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_908 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_914 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.rewards
d_rewards_910 ::
  T_DState_896 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_910 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_914 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.deposits
d_deposits_912 ::
  T_DState_896 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_912 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_914 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState
d_GState_916 a0 = ()
data T_GState_916
  = C_'10214'_'44'_'44'_'10215''7515'_930 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.GState.dreps
d_dreps_924 ::
  T_GState_916 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_924 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_930 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState.ccHotKeys
d_ccHotKeys_926 ::
  T_GState_916 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_926 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_930 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState.deposits
d_deposits_928 ::
  T_GState_916 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_928 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_930 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState
d_CertState_932 a0 = ()
data T_CertState_932
  = C_'10214'_'44'_'44'_'10215''7580''738'_946 T_DState_896
                                               MAlonzo.Code.Ledger.Certs.T_PState_906 T_GState_916
-- Ledger.Certs.Haskell.CertState.dState
d_dState_940 :: T_CertState_932 -> T_DState_896
d_dState_940 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_946 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState.pState
d_pState_942 ::
  T_CertState_932 -> MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_942 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_946 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState.gState
d_gState_944 :: T_CertState_932 -> T_GState_916
d_gState_944 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_946 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DelegEnv
d_DelegEnv_948 a0 = ()
data T_DelegEnv_948
  = C_'10214'_'44'_'10215''7496''7497'_958 MAlonzo.Code.Ledger.PParams.T_PParams_244
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.DelegEnv.pparams
d_pparams_954 ::
  T_DelegEnv_948 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_954 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_958 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DelegEnv.pools
d_pools_956 ::
  T_DelegEnv_948 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_956 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_958 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GovCertEnv
d_GovCertEnv_960 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_960 = erased
-- Ledger.Certs.Haskell.certDeposit
d_certDeposit_962 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_962 ~v0 v1 ~v2 = du_certDeposit_962 v1
du_certDeposit_962 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_962 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_836 v2 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_816 (coe v2))
                   (coe v5))
         MAlonzo.Code.Ledger.Certs.C_regdrep_844 v2 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_820 (coe v2))
                   (coe v3))
         _ -> coe v1)
-- Ledger.Certs.Haskell.certRefund
d_certRefund_972 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814]
d_certRefund_972 ~v0 v1 = du_certRefund_972 v1
du_certRefund_972 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814]
du_certRefund_972 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_430
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_838 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                (MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_816 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_846 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                (MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_820 (coe v2))
         _ -> coe v1)
-- Ledger.Certs.Haskell.updateCertDeposit
d_updateCertDeposit_978 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_978 v0 ~v1 v2 v3
  = du_updateCertDeposit_978 v0 v2 v3
du_updateCertDeposit_978 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposit_978 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826 (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826 (coe v0))
         v2 (coe du_certDeposit_962 (coe v1)))
      (coe du_certRefund_972 (coe v1))
-- Ledger.Certs.Haskell._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1060 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1060
  = C_DELEG'45'delegate_1122 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1124 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell._.keyDeposit
d_keyDeposit_1092 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_10561 -> Integer
d_keyDeposit_1092 ~v0 v1 = du_keyDeposit_1092 v1
du_keyDeposit_1092 :: T_GeneralizeTel_10561 -> Integer
du_keyDeposit_1092 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_324
      (coe d_'46'generalizedField'45'pp_10541 (coe v0))
-- Ledger.Certs.Haskell._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1126 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1126
  = C_GOVCERT'45'regdrep_1190 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1192 MAlonzo.Code.Ledger.PParams.T_PParams_244
                                MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1194 MAlonzo.Code.Ledger.PParams.T_PParams_244
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1196 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1196
  = C_CERT'45'deleg_1198 T__'8866'_'8640''10631'_'44'DELEG'10632'__1060 |
    C_CERT'45'pool_1200 MAlonzo.Code.Ledger.Certs.T__'8866'_'8640''10631'_'44'POOL'10632'__1044 |
    C_CERT'45'vdel_1202 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1126
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1204 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1204
  = C_CERT'45'base_1272 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell._.drepActivity
d_drepActivity_1226 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_27613 -> AgdaAny
d_drepActivity_1226 ~v0 v1 = du_drepActivity_1226 v1
du_drepActivity_1226 :: T_GeneralizeTel_27613 -> AgdaAny
du_drepActivity_1226 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_360
      (coe d_'46'generalizedField'45'pp_27589 (coe v0))
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1274 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_876 ->
  T_CertState_932 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] -> T_CertState_932 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1274 = erased
-- Ledger.Certs.Haskell..generalizedField-pp
d_'46'generalizedField'45'pp_10541 ::
  T_GeneralizeTel_10561 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
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
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676
d_'46'generalizedField'45'mv_10559 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GeneralizeTel
d_GeneralizeTel_10561 a0 = ()
data T_GeneralizeTel_10561
  = C_mkGeneralizeTel_10563 MAlonzo.Code.Ledger.PParams.T_PParams_244
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer (Maybe AgdaAny)
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676)
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
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
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
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
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
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
-- Ledger.Certs.Haskell..generalizedField-pp
d_'46'generalizedField'45'pp_27589 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_'46'generalizedField'45'pp_27589 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-vs
d_'46'generalizedField'45'vs_27591 ::
  T_GeneralizeTel_27613 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
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
  T_GeneralizeTel_27613 -> MAlonzo.Code.Ledger.Certs.T_PState_906
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
  = C_mkGeneralizeTel_27615 MAlonzo.Code.Ledger.PParams.T_PParams_244
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Certs.T_PState_906
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
