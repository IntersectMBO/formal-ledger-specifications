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

module MAlonzo.Code.Ledger.Conway.Conformance.Certs.Haskell where

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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Set.Theory

-- _.Credential
d_Credential_32 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_60 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_60 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_60 v2 v3
du_DecEq'45'Credential_60 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_60 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
      (coe v0) (coe v1)
-- _.Epoch
d_Epoch_114 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  ()
d_Epoch_114 = erased
-- _.THash
d_THash_134 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  ()
d_THash_134 = erased
-- _.PParams
d_PParams_162 a0 = ()
-- _.RwdAddr
d_RwdAddr_184 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_274 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_addEpoch_250
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_epochStructure_586
         (coe v0))
-- _.isKeyHash
d_isKeyHash_304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  ()
d_isKeyHash_304 = erased
-- _.PParams.Emax
d_Emax_474 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_Emax_474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_340 (coe v0)
-- _.PParams.a
d_a_476 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_324 (coe v0)
-- _.PParams.a0
d_a0_478 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_344 (coe v0)
-- _.PParams.b
d_b_480 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_326 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_482 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_356
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_484 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_354
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_486 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_332
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_488 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_346
      (coe v0)
-- _.PParams.costmdls
d_costmdls_490 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_costmdls_490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_348
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_492 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_drepActivity_492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_364
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_494 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_362
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_496 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_352
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_498 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_360
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_500 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_358
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_502 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_328
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_504 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxBlockExUnits_504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_316
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_506 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_308
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_508 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_320
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_510 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_312
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxTxExUnits_512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_314
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_514 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_310
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_516 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_318
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_518 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_336
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_520 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_338
      (coe v0)
-- _.PParams.nopt
d_nopt_522 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_342 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_524 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_330
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_526 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_350
      (coe v0)
-- _.PParams.prices
d_prices_528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_prices_528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_334
      (coe v0)
-- _.PParams.pv
d_pv_530 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_322 (coe v0)
-- _.RwdAddr.net
d_net_644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  AgdaAny
d_net_644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_86 (coe v0)
-- _.RwdAddr.stake
d_stake_646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_stake_646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88 (coe v0)
-- Ledger.Conway.Conformance.Certs.Haskell._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__668 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Haskell._.DCert
d_DCert_670 a0 = ()
-- Ledger.Conway.Conformance.Certs.Haskell._.DepositPurpose
d_DepositPurpose_674 a0 = ()
-- Ledger.Conway.Conformance.Certs.Haskell._.Deposits
d_Deposits_676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  ()
d_Deposits_676 = erased
-- Ledger.Conway.Conformance.Certs.Haskell._.PState
d_PState_678 a0 = ()
-- Ledger.Conway.Conformance.Certs.Haskell._.PoolParams
d_PoolParams_682 a0 = ()
-- Ledger.Conway.Conformance.Certs.Haskell._.PState.pools
d_pools_718 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_916 (coe v0)
-- Ledger.Conway.Conformance.Certs.Haskell._.PState.retiring
d_retiring_720 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_918
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Haskell._.PoolParams.rewardAddr
d_rewardAddr_724 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PoolParams_832 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_rewardAddr_724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewardAddr_836
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Haskell._.Anchor
d_Anchor_728 a0 = ()
-- Ledger.Conway.Conformance.Certs.Haskell._.GovVote
d_GovVote_752 a0 = ()
-- Ledger.Conway.Conformance.Certs.Haskell._.VDeleg
d_VDeleg_772 a0 = ()
-- Ledger.Conway.Conformance.Certs.Haskell._.getDRepVote
d_getDRepVote_788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_740 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_getDRepVote_788 ~v0 = du_getDRepVote_788
du_getDRepVote_788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_740 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
du_getDRepVote_788
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_getDRepVote_812
-- Ledger.Conway.Conformance.Certs.Haskell._.Anchor.hash
d_hash_800 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_688 ->
  AgdaAny
d_hash_800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_hash_696
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Haskell._.Anchor.url
d_url_802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_688 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_url_694
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Haskell._.GovVote.anchor
d_anchor_856 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_740 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_688
d_anchor_856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_756
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Haskell._.GovVote.gid
d_gid_858 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_750
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Haskell._.GovVote.vote
d_vote_860 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_732
d_vote_860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_vote_754
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Haskell._.GovVote.voter
d_voter_862 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_752
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Haskell.CertEnv
d_CertEnv_880 a0 = ()
data T_CertEnv_880
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_898 AgdaAny
                                               MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
                                               [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_740]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.Haskell.CertEnv.epoch
d_epoch_890 :: T_CertEnv_880 -> AgdaAny
d_epoch_890 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_898 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.CertEnv.pp
d_pp_892 ::
  T_CertEnv_880 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pp_892 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_898 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.CertEnv.votes
d_votes_894 ::
  T_CertEnv_880 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_740]
d_votes_894 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_898 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.CertEnv.wdrls
d_wdrls_896 ::
  T_CertEnv_880 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_896 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_898 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.DState
d_DState_900 a0 = ()
data T_DState_900
  = C_'10214'_'44'_'44'_'44'_'10215''7496'_918 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.Haskell.DState.voteDelegs
d_voteDelegs_910 ::
  T_DState_900 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_910 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_918 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.DState.stakeDelegs
d_stakeDelegs_912 ::
  T_DState_900 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_912 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_918 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.DState.rewards
d_rewards_914 ::
  T_DState_900 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_914 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_918 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.DState.deposits
d_deposits_916 ::
  T_DState_900 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_916 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_918 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.GState
d_GState_920 a0 = ()
data T_GState_920
  = C_'10214'_'44'_'44'_'10215''7515'_934 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.Haskell.GState.dreps
d_dreps_928 ::
  T_GState_920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_928 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_934 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.GState.ccHotKeys
d_ccHotKeys_930 ::
  T_GState_920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_930 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_934 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.GState.deposits
d_deposits_932 ::
  T_GState_920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_932 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_934 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.CertState
d_CertState_936 a0 = ()
data T_CertState_936
  = C_'10214'_'44'_'44'_'10215''7580''738'_950 T_DState_900
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_910
                                               T_GState_920
-- Ledger.Conway.Conformance.Certs.Haskell.CertState.dState
d_dState_944 :: T_CertState_936 -> T_DState_900
d_dState_944 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_950 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.CertState.pState
d_pState_946 ::
  T_CertState_936 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_910
d_pState_946 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_950 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.CertState.gState
d_gState_948 :: T_CertState_936 -> T_GState_920
d_gState_948 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_950 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.DelegEnv
d_DelegEnv_952 a0 = ()
data T_DelegEnv_952
  = C_'10214'_'44'_'10215''7496''7497'_962 MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.Haskell.DelegEnv.pparams
d_pparams_958 ::
  T_DelegEnv_952 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_958 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_962 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.DelegEnv.pools
d_pools_960 ::
  T_DelegEnv_952 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_960 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_962 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.GovCertEnv
d_GovCertEnv_964 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  ()
d_GovCertEnv_964 = erased
-- Ledger.Conway.Conformance.Certs.Haskell.certDeposit
d_certDeposit_966 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_838 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_966 ~v0 v1 ~v2 = du_certDeposit_966 v1
du_certDeposit_966 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_966 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_delegate_840 v2 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CredentialDeposit_820
                      (coe v2))
                   (coe v5))
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_regdrep_848 v2 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DRepDeposit_824
                      (coe v2))
                   (coe v3))
         _ -> coe v1)
-- Ledger.Conway.Conformance.Certs.Haskell.certRefund
d_certRefund_976 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_838 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_818]
d_certRefund_976 ~v0 v1 = du_certRefund_976 v1
du_certRefund_976 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_838 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_818]
du_certRefund_976 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_430
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_dereg_842 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                (MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CredentialDeposit_820
                   (coe v2))
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_deregdrep_850 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                (MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DRepDeposit_824
                   (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Conformance.Certs.Haskell.updateCertDeposit
d_updateCertDeposit_982 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_982 v0 ~v1 v2 v3
  = du_updateCertDeposit_982 v0 v2 v3
du_updateCertDeposit_982 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposit_982 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_830
            (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_830
            (coe v0))
         v2 (coe du_certDeposit_966 (coe v1)))
      (coe du_certRefund_976 (coe v1))
-- Ledger.Conway.Conformance.Certs.Haskell._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1064 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1064
  = C_DELEG'45'delegate_1126 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1128 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.Haskell._.keyDeposit
d_keyDeposit_1096 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  T_GeneralizeTel_10561 -> Integer
d_keyDeposit_1096 ~v0 v1 = du_keyDeposit_1096 v1
du_keyDeposit_1096 :: T_GeneralizeTel_10561 -> Integer
du_keyDeposit_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_328
      (coe d_'46'generalizedField'45'pp_10541 (coe v0))
-- Ledger.Conway.Conformance.Certs.Haskell._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1130 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1130
  = C_GOVCERT'45'regdrep_1194 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1196 MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
                                MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1198 MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
-- Ledger.Conway.Conformance.Certs.Haskell._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1200 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1200
  = C_CERT'45'deleg_1202 T__'8866'_'8640''10631'_'44'DELEG'10632'__1064 |
    C_CERT'45'pool_1204 MAlonzo.Code.Ledger.Conway.Conformance.Certs.T__'8866'_'8640''10631'_'44'POOL'10632'__1048 |
    C_CERT'45'vdel_1206 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1130
-- Ledger.Conway.Conformance.Certs.Haskell._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1208 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1208
  = C_CERT'45'base_1276 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.Haskell._.drepActivity
d_drepActivity_1230 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  T_GeneralizeTel_27613 -> AgdaAny
d_drepActivity_1230 ~v0 v1 = du_drepActivity_1230 v1
du_drepActivity_1230 :: T_GeneralizeTel_27613 -> AgdaAny
du_drepActivity_1230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_364
      (coe d_'46'generalizedField'45'pp_27589 (coe v0))
-- Ledger.Conway.Conformance.Certs.Haskell._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1278 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  T_CertEnv_880 ->
  T_CertState_936 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_838] ->
  T_CertState_936 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1278 = erased
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-pp
d_'46'generalizedField'45'pp_10541 ::
  T_GeneralizeTel_10561 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_'46'generalizedField'45'pp_10541 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-c
d_'46'generalizedField'45'c_10543 ::
  T_GeneralizeTel_10561 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_'46'generalizedField'45'c_10543 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-rwds
d_'46'generalizedField'45'rwds_10545 ::
  T_GeneralizeTel_10561 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_10545 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-d
d_'46'generalizedField'45'd_10547 ::
  T_GeneralizeTel_10561 -> Integer
d_'46'generalizedField'45'd_10547 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-mkh
d_'46'generalizedField'45'mkh_10549 ::
  T_GeneralizeTel_10561 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_10549 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-pools
d_'46'generalizedField'45'pools_10551 ::
  T_GeneralizeTel_10561 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_10551 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_10553 ::
  T_GeneralizeTel_10561 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_10553 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_10555 ::
  T_GeneralizeTel_10561 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_10555 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-dep
d_'46'generalizedField'45'dep_10557 ::
  T_GeneralizeTel_10561 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_10557 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-mv
d_'46'generalizedField'45'mv_10559 ::
  T_GeneralizeTel_10561 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_680
d_'46'generalizedField'45'mv_10559 v0
  = case coe v0 of
      C_mkGeneralizeTel_10563 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.GeneralizeTel
d_GeneralizeTel_10561 a0 = ()
data T_GeneralizeTel_10561
  = C_mkGeneralizeTel_10563 MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
                            MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer (Maybe AgdaAny)
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            (Maybe
                               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_680)
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-d
d_'46'generalizedField'45'd_19129 ::
  T_GeneralizeTel_19147 -> Integer
d_'46'generalizedField'45'd_19129 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-c
d_'46'generalizedField'45'c_19131 ::
  T_GeneralizeTel_19147 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_'46'generalizedField'45'c_19131 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-dReps
d_'46'generalizedField'45'dReps_19133 ::
  T_GeneralizeTel_19147 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_19133 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-e
d_'46'generalizedField'45'e_19135 ::
  T_GeneralizeTel_19147 -> AgdaAny
d_'46'generalizedField'45'e_19135 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-vs
d_'46'generalizedField'45'vs_19137 ::
  T_GeneralizeTel_19147 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_740]
d_'46'generalizedField'45'vs_19137 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_19139 ::
  T_GeneralizeTel_19147 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_19139 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_19141 ::
  T_GeneralizeTel_19147 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_19141 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-dep
d_'46'generalizedField'45'dep_19143 ::
  T_GeneralizeTel_19147 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_19143 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-an
d_'46'generalizedField'45'an_19145 ::
  T_GeneralizeTel_19147 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_688
d_'46'generalizedField'45'an_19145 v0
  = case coe v0 of
      C_mkGeneralizeTel_19149 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.GeneralizeTel
d_GeneralizeTel_19147 a0 = ()
data T_GeneralizeTel_19147
  = C_mkGeneralizeTel_19149 Integer
                            MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_740]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_688
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-pp
d_'46'generalizedField'45'pp_27589 ::
  T_GeneralizeTel_27613 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_'46'generalizedField'45'pp_27589 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-vs
d_'46'generalizedField'45'vs_27591 ::
  T_GeneralizeTel_27613 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_740]
d_'46'generalizedField'45'vs_27591 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-e
d_'46'generalizedField'45'e_27593 ::
  T_GeneralizeTel_27613 -> AgdaAny
d_'46'generalizedField'45'e_27593 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-dreps
d_'46'generalizedField'45'dreps_27595 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dreps_27595 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_27597 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_27597 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_27599 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_27599 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-rewards
d_'46'generalizedField'45'rewards_27601 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_27601 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_27603 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_27603 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-ddep
d_'46'generalizedField'45'ddep_27605 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ddep_27605 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_27607 ::
  T_GeneralizeTel_27613 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_910
d_'46'generalizedField'45'st'7510'_27607 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_27609 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_27609 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell..generalizedField-gdep
d_'46'generalizedField'45'gdep_27611 ::
  T_GeneralizeTel_27613 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'gdep_27611 v0
  = case coe v0 of
      C_mkGeneralizeTel_27615 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.Haskell.GeneralizeTel
d_GeneralizeTel_27613 a0 = ()
data T_GeneralizeTel_27613
  = C_mkGeneralizeTel_27615 MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
                            [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_740]
                            AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_910
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
