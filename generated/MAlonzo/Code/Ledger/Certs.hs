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
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
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
d_Emax_468 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_468 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_336 (coe v0)
-- _.PParams.a
d_a_470 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_470 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_320 (coe v0)
-- _.PParams.a0
d_a0_472 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_472 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_340 (coe v0)
-- _.PParams.b
d_b_474 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_474 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_322 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_476 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_476 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_352 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_478 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_350 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_480 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_480 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_328 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_482 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_342 (coe v0)
-- _.PParams.costmdls
d_costmdls_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_484 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_344 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_486 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_360 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_488 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_358 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_490 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_492 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_354 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_496 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_324 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_312 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_500 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_304 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_502 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_316 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_308 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_310 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_508 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_306 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_510 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_314 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_512 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_332
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_514 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_334 (coe v0)
-- _.PParams.nopt
d_nopt_516 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_516 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_338 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_518 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_518 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_326 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_520 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_520 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_346 (coe v0)
-- _.PParams.prices
d_prices_522 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_522 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_330 (coe v0)
-- _.PParams.pv
d_pv_524 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_524 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_318 (coe v0)
-- _.RwdAddr.net
d_net_638 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_638 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_640 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_640 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Certs._.Anchor
d_Anchor_662 a0 = ()
-- Ledger.Certs._.GovActionID
d_GovActionID_678 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovActionID_678 = erased
-- Ledger.Certs._.GovVote
d_GovVote_686 a0 = ()
-- Ledger.Certs._.VDeleg
d_VDeleg_706 a0 = ()
-- Ledger.Certs._.getDRepVote
d_getDRepVote_722 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_722 ~v0 = du_getDRepVote_722
du_getDRepVote_722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_722
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_808
-- Ledger.Certs._.Anchor.hash
d_hash_734 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684 -> AgdaAny
d_hash_734 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_692 (coe v0)
-- Ledger.Certs._.Anchor.url
d_url_736 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_736 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_690 (coe v0)
-- Ledger.Certs._.GovVote.anchor
d_anchor_790 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_790 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_752 (coe v0)
-- Ledger.Certs._.GovVote.gid
d_gid_792 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_792 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_746 (coe v0)
-- Ledger.Certs._.GovVote.vote
d_vote_794 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_728
d_vote_794 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_750 (coe v0)
-- Ledger.Certs._.GovVote.voter
d_voter_796 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_796 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_748 (coe v0)
-- Ledger.Certs.DepositPurpose
d_DepositPurpose_814 a0 = ()
data T_DepositPurpose_814
  = C_CredentialDeposit_816 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_PoolDeposit_818 AgdaAny |
    C_DRepDeposit_820 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_GovActionDeposit_822 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Deposits
d_Deposits_824 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Deposits_824 = erased
-- Ledger.Certs.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_826 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_826 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v1 ->
            case coe v1 of
              C_CredentialDeposit_816 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_816 v4
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
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_PoolDeposit_818 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_820 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_822 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_PoolDeposit_818 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_816 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_818 v4
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
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_DRepDeposit_820 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_822 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRepDeposit_820 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_816 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_818 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_820 v4
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
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_GovActionDeposit_822 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovActionDeposit_822 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_816 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_818 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_820 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_822 v4
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
                                             MAlonzo.Code.Ledger.Types.GovStructure.d_DecEq'45'TxId_534
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
d_PoolParams_828 a0 = ()
newtype T_PoolParams_828
  = C_PoolParams'46'constructor_12917 MAlonzo.Code.Ledger.Address.T_Credential_16
-- Ledger.Certs.PoolParams.rewardAddr
d_rewardAddr_832 ::
  T_PoolParams_828 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_832 v0
  = case coe v0 of
      C_PoolParams'46'constructor_12917 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DCert
d_DCert_834 a0 = ()
data T_DCert_834
  = C_delegate_836 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676)
                   (Maybe AgdaAny) Integer |
    C_dereg_838 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer |
    C_regpool_840 AgdaAny T_PoolParams_828 |
    C_retirepool_842 AgdaAny AgdaAny |
    C_regdrep_844 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684 |
    C_deregdrep_846 MAlonzo.Code.Ledger.Address.T_Credential_16
                    Integer |
    C_ccreghot_848 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.Address.T_Credential_16)
-- Ledger.Certs.cwitness
d_cwitness_850 ::
  T_DCert_834 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_850 v0
  = case coe v0 of
      C_delegate_836 v1 v2 v3 v4 -> coe v1
      C_dereg_838 v1 v2 -> coe v1
      C_regpool_840 v1 v2
        -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1)
      C_retirepool_842 v1 v2
        -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1)
      C_regdrep_844 v1 v2 v3 -> coe v1
      C_deregdrep_846 v1 v2 -> coe v1
      C_ccreghot_848 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv
d_CertEnv_866 a0 = ()
data T_CertEnv_866
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_888 AgdaAny
                                                    MAlonzo.Code.Ledger.PParams.T_PParams_244
                                                    [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.CertEnv.epoch
d_epoch_878 :: T_CertEnv_866 -> AgdaAny
d_epoch_878 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_888 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.pp
d_pp_880 ::
  T_CertEnv_866 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_880 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_888 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.votes
d_votes_882 ::
  T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
d_votes_882 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_888 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.wdrls
d_wdrls_884 ::
  T_CertEnv_866 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_884 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_888 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.deposits
d_deposits_886 ::
  T_CertEnv_866 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_886 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_888 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState
d_DState_890 a0 = ()
data T_DState_890
  = C_'10214'_'44'_'44'_'10215''7496'_904 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DState.voteDelegs
d_voteDelegs_898 ::
  T_DState_890 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_898 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_904 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.stakeDelegs
d_stakeDelegs_900 ::
  T_DState_890 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_900 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_904 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.rewards
d_rewards_902 ::
  T_DState_890 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_902 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_904 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState
d_PState_906 a0 = ()
data T_PState_906
  = C_'10214'_'44'_'10215''7510'_916 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.PState.pools
d_pools_912 ::
  T_PState_906 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_912 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_916 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState.retiring
d_retiring_914 ::
  T_PState_906 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_914 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_916 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState
d_GState_918 a0 = ()
data T_GState_918
  = C_'10214'_'44'_'10215''7515'_928 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.GState.dreps
d_dreps_924 ::
  T_GState_918 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_924 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_928 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState.ccHotKeys
d_ccHotKeys_926 ::
  T_GState_918 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_926 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_928 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState
d_CertState_930 a0 = ()
data T_CertState_930
  = C_'10214'_'44'_'44'_'10215''7580''738'_944 T_DState_890
                                               T_PState_906 T_GState_918
-- Ledger.Certs.CertState.dState
d_dState_938 :: T_CertState_930 -> T_DState_890
d_dState_938 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_944 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.pState
d_pState_940 :: T_CertState_930 -> T_PState_906
d_pState_940 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_944 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.gState
d_gState_942 :: T_CertState_930 -> T_GState_918
d_gState_942 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_944 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv
d_DelegEnv_946 a0 = ()
data T_DelegEnv_946
  = C_'10214'_'44'_'44'_'10215''7496''7497'_960 MAlonzo.Code.Ledger.PParams.T_PParams_244
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DelegEnv.pparams
d_pparams_954 ::
  T_DelegEnv_946 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_954 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_960 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.pools
d_pools_956 ::
  T_DelegEnv_946 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_956 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_960 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.deposits
d_deposits_958 ::
  T_DelegEnv_946 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_958 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_960 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GovCertEnv
d_GovCertEnv_962 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_962 = erased
-- Ledger.Certs.PoolEnv
d_PoolEnv_964 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_964 = erased
-- Ledger.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1042 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1042
  = C_DELEG'45'delegate_1114 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1116 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1044 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__1044
  = C_POOL'45'regpool_1118 | C_POOL'45'retirepool_1120
-- Ledger.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1046 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1046
  = C_GOVCERT'45'regdrep_1184 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1186 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOVCERT'45'ccreghot_1188
-- Ledger.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1048 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1048
  = C_CERT'45'deleg_1190 T__'8866'_'8640''10631'_'44'DELEG'10632'__1042 |
    C_CERT'45'pool_1192 T__'8866'_'8640''10631'_'44'POOL'10632'__1044 |
    C_CERT'45'vdel_1194 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1046
-- Ledger.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1050 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1050
  = C_CERT'45'base_1262 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1052 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_866 ->
  T_CertState_930 -> [T_DCert_834] -> T_CertState_930 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1052 = erased
-- Ledger.Certs._.keyDeposit
d_keyDeposit_1084 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21823 -> Integer
d_keyDeposit_1084 ~v0 v1 = du_keyDeposit_1084 v1
du_keyDeposit_1084 :: T_GeneralizeTel_21823 -> Integer
du_keyDeposit_1084 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_324
      (coe d_'46'generalizedField'45'pp_21803 (coe v0))
-- Ledger.Certs._.drepActivity
d_drepActivity_1216 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_38883 -> AgdaAny
d_drepActivity_1216 ~v0 v1 = du_drepActivity_1216 v1
du_drepActivity_1216 :: T_GeneralizeTel_38883 -> AgdaAny
du_drepActivity_1216 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_360
      (coe d_'46'generalizedField'45'pp_38861 (coe v0))
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_21803 ::
  T_GeneralizeTel_21823 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
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
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676
d_'46'generalizedField'45'mv_21821 v0
  = case coe v0 of
      C_mkGeneralizeTel_21825 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_21823 a0 = ()
data T_GeneralizeTel_21823
  = C_mkGeneralizeTel_21825 MAlonzo.Code.Ledger.PParams.T_PParams_244
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer (Maybe AgdaAny)
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676)
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
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
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
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
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
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_38861 ::
  T_GeneralizeTel_38883 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_'46'generalizedField'45'pp_38861 v0
  = case coe v0 of
      C_mkGeneralizeTel_38885 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_38863 ::
  T_GeneralizeTel_38883 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
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
  T_GeneralizeTel_38883 -> T_PState_906
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
  = C_mkGeneralizeTel_38885 MAlonzo.Code.Ledger.PParams.T_PParams_244
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_PState_906
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
