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
import qualified MAlonzo.Code.ToRecord
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
d_Epoch_108 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_108 = erased
-- _.THash
d_THash_126 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_THash_126 = erased
-- _.PParams
d_PParams_152 a0 = ()
-- _.RwdAddr
d_RwdAddr_174 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_260 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_260 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_578
         (coe v0))
-- _.isKeyHash
d_isKeyHash_290 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_290 = erased
-- _.PParams.Emax
d_Emax_452 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_452 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- _.PParams.a
d_a_454 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_454 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- _.PParams.a0
d_a0_456 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_456 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- _.PParams.b
d_b_458 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_458 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_460 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_460 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_462 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_462 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_464 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_464 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_466 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_466 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- _.PParams.costmdls
d_costmdls_468 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_468 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_470 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_470 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_472 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_472 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_474 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_474 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_476 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_476 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_478 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_480 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_480 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_482 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_484 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_486 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_488 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_490 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_492 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_496 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_500 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_502 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- _.PParams.nopt
d_nopt_504 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_504 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_508 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- _.PParams.prices
d_prices_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_510 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- _.PParams.pv
d_pv_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_512 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_514 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_516 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_516 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- _.RwdAddr.net
d_net_638 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_638 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_640 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_640 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Conformance.Certs._.Anchor
d_Anchor_662 a0 = ()
-- Ledger.Conway.Conformance.Certs._.DecEq-VDeleg
d_DecEq'45'VDeleg_672 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_672 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovRole
d_GovRole_684 a0 = ()
-- Ledger.Conway.Conformance.Certs._.GovVote
d_GovVote_686 a0 = ()
-- Ledger.Conway.Conformance.Certs._.VDeleg
d_VDeleg_706 a0 = ()
-- Ledger.Conway.Conformance.Certs._.getDRepVote
d_getDRepVote_722 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_722 ~v0 = du_getDRepVote_722
du_getDRepVote_722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_722
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_804
-- Ledger.Conway.Conformance.Certs._.Anchor.hash
d_hash_736 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 -> AgdaAny
d_hash_736 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_688 (coe v0)
-- Ledger.Conway.Conformance.Certs._.Anchor.url
d_url_738 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_738 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_686 (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.anchor
d_anchor_792 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_792 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_748 (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.gid
d_gid_794 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_794 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_742 (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.vote
d_vote_796 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
d_vote_796 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_746 (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.voter
d_voter_798 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_798 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_744 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__818 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__822 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__824 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__826 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__828 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv
d_CertEnv_838 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CertState
d_CertState_840 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DCert
d_DCert_844 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_856 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_856 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv
d_DelegEnv_858 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DepositPurpose
d_DepositPurpose_860 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.Deposits
d_Deposits_862 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Deposits_862 = erased
-- Ledger.Conway.Conformance.Certs.Certs.GovCertEnv
d_GovCertEnv_874 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_874 = erased
-- Ledger.Conway.Conformance.Certs.Certs.HasCoin-CertState
d_HasCoin'45'CertState_876 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_876 v0
  = coe MAlonzo.Code.Ledger.Certs.d_HasCoin'45'CertState_964 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState
d_PState_882 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.PoolEnv
d_PoolEnv_886 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_886 = erased
-- Ledger.Conway.Conformance.Certs.Certs.PoolParams
d_PoolParams_888 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.ToRecord-CertEnv
d_ToRecord'45'CertEnv_890 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.ToRecord.T_ToRecord_6
d_ToRecord'45'CertEnv_890 ~v0 = du_ToRecord'45'CertEnv_890
du_ToRecord'45'CertEnv_890 :: MAlonzo.Code.ToRecord.T_ToRecord_6
du_ToRecord'45'CertEnv_890
  = coe MAlonzo.Code.Ledger.Certs.du_ToRecord'45'CertEnv_1034
-- Ledger.Conway.Conformance.Certs.Certs.ToRecord-CertState
d_ToRecord'45'CertState_892 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.ToRecord.T_ToRecord_6
d_ToRecord'45'CertState_892 ~v0 = du_ToRecord'45'CertState_892
du_ToRecord'45'CertState_892 :: MAlonzo.Code.ToRecord.T_ToRecord_6
du_ToRecord'45'CertState_892
  = coe MAlonzo.Code.Ledger.Certs.du_ToRecord'45'CertState_1066
-- Ledger.Conway.Conformance.Certs.Certs.ToRecord-DState
d_ToRecord'45'DState_894 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.ToRecord.T_ToRecord_6
d_ToRecord'45'DState_894 ~v0 = du_ToRecord'45'DState_894
du_ToRecord'45'DState_894 :: MAlonzo.Code.ToRecord.T_ToRecord_6
du_ToRecord'45'DState_894
  = coe MAlonzo.Code.Ledger.Certs.du_ToRecord'45'DState_1046
-- Ledger.Conway.Conformance.Certs.Certs.ToRecord-DelegEnv
d_ToRecord'45'DelegEnv_896 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.ToRecord.T_ToRecord_6
d_ToRecord'45'DelegEnv_896 ~v0 = du_ToRecord'45'DelegEnv_896
du_ToRecord'45'DelegEnv_896 :: MAlonzo.Code.ToRecord.T_ToRecord_6
du_ToRecord'45'DelegEnv_896
  = coe MAlonzo.Code.Ledger.Certs.du_ToRecord'45'DelegEnv_1074
-- Ledger.Conway.Conformance.Certs.Certs.ToRecord-GState
d_ToRecord'45'GState_898 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.ToRecord.T_ToRecord_6
d_ToRecord'45'GState_898 ~v0 = du_ToRecord'45'GState_898
du_ToRecord'45'GState_898 :: MAlonzo.Code.ToRecord.T_ToRecord_6
du_ToRecord'45'GState_898
  = coe MAlonzo.Code.Ledger.Certs.du_ToRecord'45'GState_1060
-- Ledger.Conway.Conformance.Certs.Certs.ToRecord-PState
d_ToRecord'45'PState_900 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.ToRecord.T_ToRecord_6
d_ToRecord'45'PState_900 ~v0 = du_ToRecord'45'PState_900
du_ToRecord'45'PState_900 :: MAlonzo.Code.ToRecord.T_ToRecord_6
du_ToRecord'45'PState_900
  = coe MAlonzo.Code.Ledger.Certs.du_ToRecord'45'PState_1054
-- Ledger.Conway.Conformance.Certs.Certs.cwitness
d_cwitness_904 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_904 ~v0 = du_cwitness_904
du_cwitness_904 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_cwitness_904 = coe MAlonzo.Code.Ledger.Certs.du_cwitness_850
-- Ledger.Conway.Conformance.Certs.Certs.rewardsBalance
d_rewardsBalance_920 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890 -> Integer
d_rewardsBalance_920 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardsBalance_958 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.coldCreds
d_coldCreds_960 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_coldCreds_960 v0
  = coe MAlonzo.Code.Ledger.Certs.d_coldCreds_888 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.epoch
d_epoch_962 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_868 -> AgdaAny
d_epoch_962 v0 = coe MAlonzo.Code.Ledger.Certs.d_epoch_880 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.pp
d_pp_964 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_964 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_882 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.votes
d_votes_966 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_votes_966 v0 = coe MAlonzo.Code.Ledger.Certs.d_votes_884 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.wdrls
d_wdrls_968 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_968 v0 = coe MAlonzo.Code.Ledger.Certs.d_wdrls_886 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.dState
d_dState_972 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_924 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890
d_dState_972 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_932 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.gState
d_gState_974 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_924 ->
  MAlonzo.Code.Ledger.Certs.T_GState_914
d_gState_974 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_936 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.pState
d_pState_976 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_924 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904
d_pState_976 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_934 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.delegatees
d_delegatees_1006 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_940 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_delegatees_1006 v0
  = coe MAlonzo.Code.Ledger.Certs.d_delegatees_952 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.pools
d_pools_1008 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1008 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_950 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.pparams
d_pparams_1010 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_940 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1010 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_948 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState.pools
d_pools_1030 ::
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1030 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_910 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState.retiring
d_retiring_1032 ::
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1032 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_912 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PoolParams.rewardAddr
d_rewardAddr_1036 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_826 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_1036 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_830 (coe v0)
-- Ledger.Conway.Conformance.Certs.DState
d_DState_1038 a0 = ()
data T_DState_1038
  = C_'10214'_'44'_'44'_'44'_'10215''7496'_1056 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.DState.voteDelegs
d_voteDelegs_1048 ::
  T_DState_1038 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1048 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1056 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.stakeDelegs
d_stakeDelegs_1050 ::
  T_DState_1038 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1050 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1056 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.rewards
d_rewards_1052 ::
  T_DState_1038 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1052 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1056 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.deposits
d_deposits_1054 ::
  T_DState_1038 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1054 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1056 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState
d_GState_1058 a0 = ()
data T_GState_1058
  = C_'10214'_'44'_'44'_'10215''7515'_1072 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.GState.dreps
d_dreps_1066 ::
  T_GState_1058 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1066 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1072 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState.ccHotKeys
d_ccHotKeys_1068 ::
  T_GState_1058 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1068 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1072 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState.deposits
d_deposits_1070 ::
  T_GState_1058 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1070 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1072 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState
d_CertState_1074 a0 = ()
data T_CertState_1074
  = C_'10214'_'44'_'44'_'10215''7580''738'_1088 T_DState_1038
                                                MAlonzo.Code.Ledger.Certs.T_PState_904 T_GState_1058
-- Ledger.Conway.Conformance.Certs.CertState.dState
d_dState_1082 :: T_CertState_1074 -> T_DState_1038
d_dState_1082 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1088 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState.pState
d_pState_1084 ::
  T_CertState_1074 -> MAlonzo.Code.Ledger.Certs.T_PState_904
d_pState_1084 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1088 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState.gState
d_gState_1086 :: T_CertState_1074 -> T_GState_1058
d_gState_1086 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1088 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.certDeposit
d_certDeposit_1090 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1090 ~v0 v1 v2 = du_certDeposit_1090 v1 v2
du_certDeposit_1090 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1090 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_834 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Certs.C_regdrep_842 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818 (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Certs.C_reg_848 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v1)))
         _ -> coe v2)
-- Ledger.Conway.Conformance.Certs.certRefund
d_certRefund_1106 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
d_certRefund_1106 ~v0 v1 = du_certRefund_1106 v1
du_certRefund_1106 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
du_certRefund_1106 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_442
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_836 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_844 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818 (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Conformance.Certs.updateCertDeposit
d_updateCertDeposit_1112 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_1112 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Ledger.Certs.C_delegate_834 v4 v5 v6 v7
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824 (coe v0))
             v3
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v4))
                   (coe v7)))
      MAlonzo.Code.Ledger.Certs.C_dereg_836 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1470
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
             (coe
                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                erased
                (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824 (coe v0)))
             (coe v3)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v4)))
      MAlonzo.Code.Ledger.Certs.C_regpool_838 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824 (coe v0))
             v3
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_816 (coe v4))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v1))))
      MAlonzo.Code.Ledger.Certs.C_retirepool_840 v4 v5 -> coe v3
      MAlonzo.Code.Ledger.Certs.C_regdrep_842 v4 v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824 (coe v0))
             v3
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818 (coe v4))
                   (coe v5)))
      MAlonzo.Code.Ledger.Certs.C_deregdrep_844 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1470
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
             (coe
                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                erased
                (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824 (coe v0)))
             (coe v3)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818 (coe v4)))
      MAlonzo.Code.Ledger.Certs.C_ccreghot_846 v4 v5 -> coe v3
      MAlonzo.Code.Ledger.Certs.C_reg_848 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824 (coe v0))
             v3
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v4))
                   (coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1232 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__1232
  = C_POOL'45'regpool_1236 | C_POOL'45'retirepool_1238
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1234 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1234
  = C_DELEG'45'delegate_1308 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1310 Integer
                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'reg_1380 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._.keyDeposit
d_keyDeposit_1270 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20939 -> Integer
d_keyDeposit_1270 ~v0 v1 = du_keyDeposit_1270 v1
du_keyDeposit_1270 :: T_GeneralizeTel_20939 -> Integer
du_keyDeposit_1270 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
      (coe d_'46'generalizedField'45'pp_20917 (coe v0))
-- Ledger.Conway.Conformance.Certs._.keyDeposit
d_keyDeposit_1342 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_31669 -> Integer
d_keyDeposit_1342 ~v0 v1 = du_keyDeposit_1342 v1
du_keyDeposit_1342 :: T_GeneralizeTel_31669 -> Integer
du_keyDeposit_1342 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
      (coe d_'46'generalizedField'45'pp_31651 (coe v0))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1382 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1382
  = C_GOVCERT'45'regdrep_1454 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1456 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOVCERT'45'ccreghot_1458 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1460 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1460
  = C_CERT'45'deleg_1462 T__'8866'_'8640''10631'_'44'DELEG'10632'__1234 |
    C_CERT'45'pool_1464 T__'8866'_'8640''10631'_'44'POOL'10632'__1232 |
    C_CERT'45'vdel_1466 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1382
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1468 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1468
  = C_CERT'45'base_1546 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._.drepActivity
d_drepActivity_1490 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_60571 -> AgdaAny
d_drepActivity_1490 ~v0 v1 = du_drepActivity_1490 v1
du_drepActivity_1490 :: T_GeneralizeTel_60571 -> AgdaAny
du_drepActivity_1490 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_374
      (coe d_'46'generalizedField'45'pp_60545 (coe v0))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1548 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  T_CertState_1074 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] -> T_CertState_1074 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1548 = erased
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_20917 ::
  T_GeneralizeTel_20939 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_'46'generalizedField'45'pp_20917 v0
  = case coe v0 of
      C_mkGeneralizeTel_20941 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_20919 ::
  T_GeneralizeTel_20939 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_20919 v0
  = case coe v0 of
      C_mkGeneralizeTel_20941 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_20921 ::
  T_GeneralizeTel_20939 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_20921 v0
  = case coe v0 of
      C_mkGeneralizeTel_20941 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_20923 ::
  T_GeneralizeTel_20939 -> Integer
d_'46'generalizedField'45'd_20923 v0
  = case coe v0 of
      C_mkGeneralizeTel_20941 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_20925 ::
  T_GeneralizeTel_20939 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672
d_'46'generalizedField'45'mv_20925 v0
  = case coe v0 of
      C_mkGeneralizeTel_20941 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-delegatees
d_'46'generalizedField'45'delegatees_20927 ::
  T_GeneralizeTel_20939 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_'46'generalizedField'45'delegatees_20927 v0
  = case coe v0 of
      C_mkGeneralizeTel_20941 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-mkh
d_'46'generalizedField'45'mkh_20929 ::
  T_GeneralizeTel_20939 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_20929 v0
  = case coe v0 of
      C_mkGeneralizeTel_20941 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_20931 ::
  T_GeneralizeTel_20939 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_20931 v0
  = case coe v0 of
      C_mkGeneralizeTel_20941 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_20933 ::
  T_GeneralizeTel_20939 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_20933 v0
  = case coe v0 of
      C_mkGeneralizeTel_20941 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_20935 ::
  T_GeneralizeTel_20939 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_20935 v0
  = case coe v0 of
      C_mkGeneralizeTel_20941 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_20937 ::
  T_GeneralizeTel_20939 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_20937 v0
  = case coe v0 of
      C_mkGeneralizeTel_20941 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_20939 a0 = ()
data T_GeneralizeTel_20939
  = C_mkGeneralizeTel_20941 MAlonzo.Code.Ledger.PParams.T_PParams_242
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                            (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672)
                            [MAlonzo.Code.Ledger.Address.T_Credential_16] (Maybe AgdaAny)
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_31651 ::
  T_GeneralizeTel_31669 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_'46'generalizedField'45'pp_31651 v0
  = case coe v0 of
      C_mkGeneralizeTel_31671 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_31653 ::
  T_GeneralizeTel_31669 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_31653 v0
  = case coe v0 of
      C_mkGeneralizeTel_31671 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_31655 ::
  T_GeneralizeTel_31669 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_31655 v0
  = case coe v0 of
      C_mkGeneralizeTel_31671 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_31657 ::
  T_GeneralizeTel_31669 -> Integer
d_'46'generalizedField'45'd_31657 v0
  = case coe v0 of
      C_mkGeneralizeTel_31671 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_31659 ::
  T_GeneralizeTel_31669 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_31659 v0
  = case coe v0 of
      C_mkGeneralizeTel_31671 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-delegatees
d_'46'generalizedField'45'delegatees_31661 ::
  T_GeneralizeTel_31669 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_'46'generalizedField'45'delegatees_31661 v0
  = case coe v0 of
      C_mkGeneralizeTel_31671 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_31663 ::
  T_GeneralizeTel_31669 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_31663 v0
  = case coe v0 of
      C_mkGeneralizeTel_31671 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_31665 ::
  T_GeneralizeTel_31669 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_31665 v0
  = case coe v0 of
      C_mkGeneralizeTel_31671 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_31667 ::
  T_GeneralizeTel_31669 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_31667 v0
  = case coe v0 of
      C_mkGeneralizeTel_31671 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_31669 a0 = ()
data T_GeneralizeTel_31669
  = C_mkGeneralizeTel_31671 MAlonzo.Code.Ledger.PParams.T_PParams_242
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Address.T_Credential_16]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_37039 ::
  T_GeneralizeTel_37059 -> Integer
d_'46'generalizedField'45'd_37039 v0
  = case coe v0 of
      C_mkGeneralizeTel_37061 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_37041 ::
  T_GeneralizeTel_37059 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_37041 v0
  = case coe v0 of
      C_mkGeneralizeTel_37061 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_37043 ::
  T_GeneralizeTel_37059 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_37043 v0
  = case coe v0 of
      C_mkGeneralizeTel_37061 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-e
d_'46'generalizedField'45'e_37045 ::
  T_GeneralizeTel_37059 -> AgdaAny
d_'46'generalizedField'45'e_37045 v0
  = case coe v0 of
      C_mkGeneralizeTel_37061 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_37047 ::
  T_GeneralizeTel_37059 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_'46'generalizedField'45'vs_37047 v0
  = case coe v0 of
      C_mkGeneralizeTel_37061 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_37049 ::
  T_GeneralizeTel_37059 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_37049 v0
  = case coe v0 of
      C_mkGeneralizeTel_37061 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-cc
d_'46'generalizedField'45'cc_37051 ::
  T_GeneralizeTel_37059 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_'46'generalizedField'45'cc_37051 v0
  = case coe v0 of
      C_mkGeneralizeTel_37061 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_37053 ::
  T_GeneralizeTel_37059 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_37053 v0
  = case coe v0 of
      C_mkGeneralizeTel_37061 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_37055 ::
  T_GeneralizeTel_37059 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_37055 v0
  = case coe v0 of
      C_mkGeneralizeTel_37061 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-an
d_'46'generalizedField'45'an_37057 ::
  T_GeneralizeTel_37059 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_'46'generalizedField'45'an_37057 v0
  = case coe v0 of
      C_mkGeneralizeTel_37061 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_37059 a0 = ()
data T_GeneralizeTel_37059
  = C_mkGeneralizeTel_37061 Integer
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Address.T_Credential_16]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_60545 ::
  T_GeneralizeTel_60571 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_'46'generalizedField'45'pp_60545 v0
  = case coe v0 of
      C_mkGeneralizeTel_60573 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_60547 ::
  T_GeneralizeTel_60571 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_'46'generalizedField'45'vs_60547 v0
  = case coe v0 of
      C_mkGeneralizeTel_60573 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-e
d_'46'generalizedField'45'e_60549 ::
  T_GeneralizeTel_60571 -> AgdaAny
d_'46'generalizedField'45'e_60549 v0
  = case coe v0 of
      C_mkGeneralizeTel_60573 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_60551 ::
  T_GeneralizeTel_60571 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_60551 v0
  = case coe v0 of
      C_mkGeneralizeTel_60573 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_60553 ::
  T_GeneralizeTel_60571 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_60553 v0
  = case coe v0 of
      C_mkGeneralizeTel_60573 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_60555 ::
  T_GeneralizeTel_60571 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_60555 v0
  = case coe v0 of
      C_mkGeneralizeTel_60573 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rewards
d_'46'generalizedField'45'rewards_60557 ::
  T_GeneralizeTel_60571 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_60557 v0
  = case coe v0 of
      C_mkGeneralizeTel_60573 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-cc
d_'46'generalizedField'45'cc_60559 ::
  T_GeneralizeTel_60571 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_'46'generalizedField'45'cc_60559 v0
  = case coe v0 of
      C_mkGeneralizeTel_60573 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_60561 ::
  T_GeneralizeTel_60571 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_60561 v0
  = case coe v0 of
      C_mkGeneralizeTel_60573 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ddep
d_'46'generalizedField'45'ddep_60563 ::
  T_GeneralizeTel_60571 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ddep_60563 v0
  = case coe v0 of
      C_mkGeneralizeTel_60573 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_60565 ::
  T_GeneralizeTel_60571 -> MAlonzo.Code.Ledger.Certs.T_PState_904
d_'46'generalizedField'45'st'7510'_60565 v0
  = case coe v0 of
      C_mkGeneralizeTel_60573 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_60567 ::
  T_GeneralizeTel_60571 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_60567 v0
  = case coe v0 of
      C_mkGeneralizeTel_60573 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-gdep
d_'46'generalizedField'45'gdep_60569 ::
  T_GeneralizeTel_60571 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'gdep_60569 v0
  = case coe v0 of
      C_mkGeneralizeTel_60573 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_60571 a0 = ()
data T_GeneralizeTel_60571
  = C_mkGeneralizeTel_60573 MAlonzo.Code.Ledger.PParams.T_PParams_242
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Address.T_Credential_16]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Certs.T_PState_904
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
