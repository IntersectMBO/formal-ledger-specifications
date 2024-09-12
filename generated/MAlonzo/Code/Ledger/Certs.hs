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

module MAlonzo.Code.Ledger.Certs where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- _.Credential
d_Credential_26 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_54 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_54 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_54 v2 v3
du_DecEq'45'Credential_54 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_54 v0 v1
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
d_PParams_154 a0 = ()
-- _.RwdAddr
d_RwdAddr_176 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_266 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_266 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_580
         (coe v0))
-- _.isKeyHash
d_isKeyHash_296 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_296 = erased
-- _.PParams.Emax
d_Emax_466 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_466 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_334 (coe v0)
-- _.PParams.a
d_a_468 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_468 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_318 (coe v0)
-- _.PParams.a0
d_a0_470 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_470 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_338 (coe v0)
-- _.PParams.b
d_b_472 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_472 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_320 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_474 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_474 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_350 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_476 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_476 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_348 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_478 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_326 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_480 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_480 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_340 (coe v0)
-- _.PParams.costmdls
d_costmdls_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_482 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_342 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_484 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_358 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_486 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_356 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_488 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_490 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_492 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_352 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_322 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_496 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_310 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_302 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_500 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_314 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_502 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_306 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_308 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_304 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_508 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_312 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_510 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_330
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_512 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_332 (coe v0)
-- _.PParams.nopt
d_nopt_514 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_514 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_336 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_516 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_516 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_324 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_518 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_518 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v0)
-- _.PParams.prices
d_prices_520 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_520 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_328 (coe v0)
-- _.PParams.pv
d_pv_522 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_522 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_316 (coe v0)
-- _.RwdAddr.net
d_net_636 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_636 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_638 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_638 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Certs._.Anchor
d_Anchor_660 a0 = ()
-- Ledger.Certs._.GovActionID
d_GovActionID_676 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovActionID_676 = erased
-- Ledger.Certs._.GovVote
d_GovVote_684 a0 = ()
-- Ledger.Certs._.VDeleg
d_VDeleg_704 a0 = ()
-- Ledger.Certs._.getDRepVote
d_getDRepVote_720 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_720 ~v0 = du_getDRepVote_720
du_getDRepVote_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_720
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_806
-- Ledger.Certs._.Anchor.hash
d_hash_732 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> AgdaAny
d_hash_732 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_690 (coe v0)
-- Ledger.Certs._.Anchor.url
d_url_734 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_734 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_688 (coe v0)
-- Ledger.Certs._.GovVote.anchor
d_anchor_788 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_788 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_750 (coe v0)
-- Ledger.Certs._.GovVote.gid
d_gid_790 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_790 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_744 (coe v0)
-- Ledger.Certs._.GovVote.vote
d_vote_792 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726
d_vote_792 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_748 (coe v0)
-- Ledger.Certs._.GovVote.voter
d_voter_794 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_794 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_746 (coe v0)
-- Ledger.Certs.DepositPurpose
d_DepositPurpose_812 a0 = ()
data T_DepositPurpose_812
  = C_CredentialDeposit_814 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_PoolDeposit_816 AgdaAny |
    C_DRepDeposit_818 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_GovActionDeposit_820 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Deposits
d_Deposits_822 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Deposits_822 = erased
-- Ledger.Certs.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_824 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_824 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v1 ->
            case coe v1 of
              C_CredentialDeposit_814 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_814 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                (coe
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_PoolDeposit_816 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_818 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_820 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_PoolDeposit_816 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_814 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_816 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_DRepDeposit_818 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_820 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRepDeposit_818 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_814 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_816 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_818 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                (coe
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_534
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_GovActionDeposit_820 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovActionDeposit_820 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_814 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_816 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_818 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_820 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Types.GovStructure.d_DecEq'45'TxId_532
                                             (coe v0)))
                                       (coe
                                          (\ v5 ->
                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Certs.PoolParams
d_PoolParams_826 a0 = ()
newtype T_PoolParams_826
  = C_PoolParams'46'constructor_12917 MAlonzo.Code.Ledger.Address.T_Credential_16
-- Ledger.Certs.PoolParams.rewardAddr
d_rewardAddr_830 ::
  T_PoolParams_826 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_830 v0
  = case coe v0 of
      C_PoolParams'46'constructor_12917 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DCert
d_DCert_832 a0 = ()
data T_DCert_832
  = C_delegate_834 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674)
                   (Maybe AgdaAny) Integer |
    C_dereg_836 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer |
    C_regpool_838 AgdaAny T_PoolParams_826 |
    C_retirepool_840 AgdaAny AgdaAny |
    C_regdrep_842 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 |
    C_deregdrep_844 MAlonzo.Code.Ledger.Address.T_Credential_16
                    Integer |
    C_ccreghot_846 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.Address.T_Credential_16)
-- Ledger.Certs.cwitness
d_cwitness_848 ::
  T_DCert_832 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_848 v0
  = case coe v0 of
      C_delegate_834 v1 v2 v3 v4 -> coe v1
      C_dereg_836 v1 v2 -> coe v1
      C_regpool_838 v1 v2
        -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1)
      C_retirepool_840 v1 v2
        -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1)
      C_regdrep_842 v1 v2 v3 -> coe v1
      C_deregdrep_844 v1 v2 -> coe v1
      C_ccreghot_846 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv
d_CertEnv_864 a0 = ()
data T_CertEnv_864
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_886 AgdaAny
                                                    MAlonzo.Code.Ledger.PParams.T_PParams_242
                                                    [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.CertEnv.epoch
d_epoch_876 :: T_CertEnv_864 -> AgdaAny
d_epoch_876 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_886 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.pp
d_pp_878 ::
  T_CertEnv_864 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_878 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_886 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.votes
d_votes_880 ::
  T_CertEnv_864 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_votes_880 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_886 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.wdrls
d_wdrls_882 ::
  T_CertEnv_864 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_882 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_886 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.deposits
d_deposits_884 ::
  T_CertEnv_864 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_884 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_886 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState
d_DState_888 a0 = ()
data T_DState_888
  = C_'10214'_'44'_'44'_'10215''7496'_902 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DState.voteDelegs
d_voteDelegs_896 ::
  T_DState_888 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_896 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_902 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.stakeDelegs
d_stakeDelegs_898 ::
  T_DState_888 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_898 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_902 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.rewards
d_rewards_900 ::
  T_DState_888 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_900 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_902 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState
d_PState_904 a0 = ()
data T_PState_904
  = C_'10214'_'44'_'10215''7510'_914 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.PState.pools
d_pools_910 ::
  T_PState_904 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_910 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_914 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState.retiring
d_retiring_912 ::
  T_PState_904 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_912 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_914 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState
d_GState_916 a0 = ()
data T_GState_916
  = C_'10214'_'44'_'10215''7515'_926 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.GState.dreps
d_dreps_922 ::
  T_GState_916 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_922 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_926 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState.ccHotKeys
d_ccHotKeys_924 ::
  T_GState_916 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_924 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_926 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState
d_CertState_928 a0 = ()
data T_CertState_928
  = C_'10214'_'44'_'44'_'10215''7580''738'_942 T_DState_888
                                               T_PState_904 T_GState_916
-- Ledger.Certs.CertState.dState
d_dState_936 :: T_CertState_928 -> T_DState_888
d_dState_936 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_942 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.pState
d_pState_938 :: T_CertState_928 -> T_PState_904
d_pState_938 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_942 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.gState
d_gState_940 :: T_CertState_928 -> T_GState_916
d_gState_940 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_942 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv
d_DelegEnv_944 a0 = ()
data T_DelegEnv_944
  = C_'10214'_'44'_'44'_'10215''7496''7497'_958 MAlonzo.Code.Ledger.PParams.T_PParams_242
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DelegEnv.pparams
d_pparams_952 ::
  T_DelegEnv_944 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_952 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_958 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.pools
d_pools_954 ::
  T_DelegEnv_944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_954 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_958 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.deposits
d_deposits_956 ::
  T_DelegEnv_944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_956 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_958 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GovCertEnv
d_GovCertEnv_960 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_960 = erased
-- Ledger.Certs.PoolEnv
d_PoolEnv_962 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_962 = erased
-- Ledger.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1040 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1040
  = C_DELEG'45'delegate_1112 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1114 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1042 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__1042
  = C_POOL'45'regpool_1116 | C_POOL'45'retirepool_1118
-- Ledger.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1044 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1044
  = C_GOVCERT'45'regdrep_1182 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1184 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOVCERT'45'ccreghot_1186
-- Ledger.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1046 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1046
  = C_CERT'45'deleg_1188 T__'8866'_'8640''10631'_'44'DELEG'10632'__1040 |
    C_CERT'45'pool_1190 T__'8866'_'8640''10631'_'44'POOL'10632'__1042 |
    C_CERT'45'vdel_1192 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1044
-- Ledger.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1048 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1048
  = C_CERT'45'base_1260 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1050 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_864 ->
  T_CertState_928 -> [T_DCert_832] -> T_CertState_928 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1050 = erased
-- Ledger.Certs._.keyDeposit
d_keyDeposit_1082 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21823 -> Integer
d_keyDeposit_1082 ~v0 v1 = du_keyDeposit_1082 v1
du_keyDeposit_1082 :: T_GeneralizeTel_21823 -> Integer
du_keyDeposit_1082 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_322
      (coe d_'46'generalizedField'45'pp_21803 (coe v0))
-- Ledger.Certs._.drepActivity
d_drepActivity_1214 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_38883 -> AgdaAny
d_drepActivity_1214 ~v0 v1 = du_drepActivity_1214 v1
du_drepActivity_1214 :: T_GeneralizeTel_38883 -> AgdaAny
du_drepActivity_1214 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_358
      (coe d_'46'generalizedField'45'pp_38861 (coe v0))
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_21803 ::
  T_GeneralizeTel_21823 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_'46'generalizedField'45'pp_21803 v0
  = case coe v0 of
      C_mkGeneralizeTel_21825 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_21805 ::
  T_GeneralizeTel_21823 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_21805 v0
  = case coe v0 of
      C_mkGeneralizeTel_21825 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_21807 ::
  T_GeneralizeTel_21823 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_21807 v0
  = case coe v0 of
      C_mkGeneralizeTel_21825 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_21809 ::
  T_GeneralizeTel_21823 -> Integer
d_'46'generalizedField'45'd_21809 v0
  = case coe v0 of
      C_mkGeneralizeTel_21825 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mkh
d_'46'generalizedField'45'mkh_21811 ::
  T_GeneralizeTel_21823 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_21811 v0
  = case coe v0 of
      C_mkGeneralizeTel_21825 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_21813 ::
  T_GeneralizeTel_21823 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_21813 v0
  = case coe v0 of
      C_mkGeneralizeTel_21825 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-deps
d_'46'generalizedField'45'deps_21815 ::
  T_GeneralizeTel_21823 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deps_21815 v0
  = case coe v0 of
      C_mkGeneralizeTel_21825 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_21817 ::
  T_GeneralizeTel_21823 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_21817 v0
  = case coe v0 of
      C_mkGeneralizeTel_21825 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_21819 ::
  T_GeneralizeTel_21823 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_21819 v0
  = case coe v0 of
      C_mkGeneralizeTel_21825 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_21821 ::
  T_GeneralizeTel_21823 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674
d_'46'generalizedField'45'mv_21821 v0
  = case coe v0 of
      C_mkGeneralizeTel_21825 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_21823 a0 = ()
data T_GeneralizeTel_21823
  = C_mkGeneralizeTel_21825 MAlonzo.Code.Ledger.PParams.T_PParams_242
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer (Maybe AgdaAny)
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674)
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_31503 ::
  T_GeneralizeTel_31521 -> Integer
d_'46'generalizedField'45'd_31503 v0
  = case coe v0 of
      C_mkGeneralizeTel_31523 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_31505 ::
  T_GeneralizeTel_31521 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_31505 v0
  = case coe v0 of
      C_mkGeneralizeTel_31523 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_31507 ::
  T_GeneralizeTel_31521 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_31507 v0
  = case coe v0 of
      C_mkGeneralizeTel_31523 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_31509 ::
  T_GeneralizeTel_31521 -> AgdaAny
d_'46'generalizedField'45'e_31509 v0
  = case coe v0 of
      C_mkGeneralizeTel_31523 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_31511 ::
  T_GeneralizeTel_31521 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_'46'generalizedField'45'vs_31511 v0
  = case coe v0 of
      C_mkGeneralizeTel_31523 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_31513 ::
  T_GeneralizeTel_31521 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_31513 v0
  = case coe v0 of
      C_mkGeneralizeTel_31523 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-deps
d_'46'generalizedField'45'deps_31515 ::
  T_GeneralizeTel_31521 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deps_31515 v0
  = case coe v0 of
      C_mkGeneralizeTel_31523 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_31517 ::
  T_GeneralizeTel_31521 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_31517 v0
  = case coe v0 of
      C_mkGeneralizeTel_31523 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-an
d_'46'generalizedField'45'an_31519 ::
  T_GeneralizeTel_31521 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_'46'generalizedField'45'an_31519 v0
  = case coe v0 of
      C_mkGeneralizeTel_31523 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_31521 a0 = ()
data T_GeneralizeTel_31521
  = C_mkGeneralizeTel_31523 Integer
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_38861 ::
  T_GeneralizeTel_38883 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_'46'generalizedField'45'pp_38861 v0
  = case coe v0 of
      C_mkGeneralizeTel_38885 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_38863 ::
  T_GeneralizeTel_38883 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_'46'generalizedField'45'vs_38863 v0
  = case coe v0 of
      C_mkGeneralizeTel_38885 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_38865 ::
  T_GeneralizeTel_38883 -> AgdaAny
d_'46'generalizedField'45'e_38865 v0
  = case coe v0 of
      C_mkGeneralizeTel_38885 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-dreps
d_'46'generalizedField'45'dreps_38867 ::
  T_GeneralizeTel_38883 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dreps_38867 v0
  = case coe v0 of
      C_mkGeneralizeTel_38885 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_38869 ::
  T_GeneralizeTel_38883 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_38869 v0
  = case coe v0 of
      C_mkGeneralizeTel_38885 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_38871 ::
  T_GeneralizeTel_38883 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_38871 v0
  = case coe v0 of
      C_mkGeneralizeTel_38885 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rewards
d_'46'generalizedField'45'rewards_38873 ::
  T_GeneralizeTel_38883 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_38873 v0
  = case coe v0 of
      C_mkGeneralizeTel_38885 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-deps
d_'46'generalizedField'45'deps_38875 ::
  T_GeneralizeTel_38883 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deps_38875 v0
  = case coe v0 of
      C_mkGeneralizeTel_38885 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_38877 ::
  T_GeneralizeTel_38883 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_38877 v0
  = case coe v0 of
      C_mkGeneralizeTel_38885 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_38879 ::
  T_GeneralizeTel_38883 -> T_PState_904
d_'46'generalizedField'45'st'7510'_38879 v0
  = case coe v0 of
      C_mkGeneralizeTel_38885 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_38881 ::
  T_GeneralizeTel_38883 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_38881 v0
  = case coe v0 of
      C_mkGeneralizeTel_38885 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_38883 a0 = ()
data T_GeneralizeTel_38883
  = C_mkGeneralizeTel_38885 MAlonzo.Code.Ledger.PParams.T_PParams_242
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_PState_904
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
