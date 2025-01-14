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
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

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
d_Epoch_104 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_104 = erased
-- _.THash
d_THash_122 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_THash_122 = erased
-- _.PParams
d_PParams_148 a0 = ()
-- _.RwdAddr
d_RwdAddr_170 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_256 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_256 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_578
         (coe v0))
-- _.isKeyHash
d_isKeyHash_286 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_286 = erased
-- _.PParams.Emax
d_Emax_448 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_448 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- _.PParams.a
d_a_450 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_450 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- _.PParams.a0
d_a0_452 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_452 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- _.PParams.b
d_b_454 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_454 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_456 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_456 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_458 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_458 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_460 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_460 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_462 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_462 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- _.PParams.costmdls
d_costmdls_464 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_464 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_466 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_466 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_468 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_468 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_470 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_470 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_472 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_472 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_474 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_474 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_476 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_476 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_478 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_480 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_480 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_482 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_484 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_486 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_488 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_490 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_492 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_496 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- _.PParams.nopt
d_nopt_500 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_500 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_502 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- _.PParams.prices
d_prices_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- _.PParams.pv
d_pv_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_508 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_510 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_512 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- _.RwdAddr.net
d_net_634 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_634 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_636 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_636 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Certs._.Anchor
d_Anchor_658 a0 = ()
-- Ledger.Certs._.DecEq-VDeleg
d_DecEq'45'VDeleg_668 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_668 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
      (coe v0)
-- Ledger.Certs._.GovActionID
d_GovActionID_674 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovActionID_674 = erased
-- Ledger.Certs._.GovRole
d_GovRole_680 a0 = ()
-- Ledger.Certs._.GovVote
d_GovVote_682 a0 = ()
-- Ledger.Certs._.VDeleg
d_VDeleg_702 a0 = ()
-- Ledger.Certs._.getDRepVote
d_getDRepVote_718 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_718 ~v0 = du_getDRepVote_718
du_getDRepVote_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_718
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_804
-- Ledger.Certs._.Anchor.hash
d_hash_732 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 -> AgdaAny
d_hash_732 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_688 (coe v0)
-- Ledger.Certs._.Anchor.url
d_url_734 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_734 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_686 (coe v0)
-- Ledger.Certs._.GovVote.anchor
d_anchor_788 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_788 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_748 (coe v0)
-- Ledger.Certs._.GovVote.gid
d_gid_790 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_790 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_742 (coe v0)
-- Ledger.Certs._.GovVote.vote
d_vote_792 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
d_vote_792 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_746 (coe v0)
-- Ledger.Certs._.GovVote.voter
d_voter_794 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_794 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_744 (coe v0)
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
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
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
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
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
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
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
                                             MAlonzo.Code.Ledger.Types.GovStructure.d_DecEq'45'TxId_530
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
  = C_PoolParams'46'constructor_13067 MAlonzo.Code.Ledger.Address.T_Credential_16
-- Ledger.Certs.PoolParams.rewardAddr
d_rewardAddr_830 ::
  T_PoolParams_826 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_830 v0
  = case coe v0 of
      C_PoolParams'46'constructor_13067 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DCert
d_DCert_832 a0 = ()
data T_DCert_832
  = C_delegate_834 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672)
                   (Maybe AgdaAny) Integer |
    C_dereg_836 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer |
    C_regpool_838 AgdaAny T_PoolParams_826 |
    C_retirepool_840 AgdaAny AgdaAny |
    C_regdrep_842 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 |
    C_deregdrep_844 MAlonzo.Code.Ledger.Address.T_Credential_16
                    Integer |
    C_ccreghot_846 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.Address.T_Credential_16) |
    C_reg_848 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer
-- Ledger.Certs.cwitness
d_cwitness_850 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_DCert_832 -> Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_850 ~v0 v1 = du_cwitness_850 v1
du_cwitness_850 ::
  T_DCert_832 -> Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_cwitness_850 v0
  = case coe v0 of
      C_delegate_834 v1 v2 v3 v4
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_dereg_836 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_regpool_838 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1))
      C_retirepool_840 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1))
      C_regdrep_842 v1 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_deregdrep_844 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_ccreghot_846 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_reg_848 v1 v2
        -> case coe v2 of
             0 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv
d_CertEnv_868 a0 = ()
data T_CertEnv_868
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_890 AgdaAny
                                                    MAlonzo.Code.Ledger.PParams.T_PParams_242
                                                    [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                    [MAlonzo.Code.Ledger.Address.T_Credential_16]
-- Ledger.Certs.CertEnv.epoch
d_epoch_880 :: T_CertEnv_868 -> AgdaAny
d_epoch_880 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_890 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.pp
d_pp_882 ::
  T_CertEnv_868 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_882 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_890 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.votes
d_votes_884 ::
  T_CertEnv_868 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_votes_884 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_890 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.wdrls
d_wdrls_886 ::
  T_CertEnv_868 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_886 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_890 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.coldCreds
d_coldCreds_888 ::
  T_CertEnv_868 -> [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_coldCreds_888 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_890 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState
d_DState_892 a0 = ()
data T_DState_892
  = C_'10214'_'44'_'44'_'10215''7496'_906 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DState.voteDelegs
d_voteDelegs_900 ::
  T_DState_892 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_900 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_906 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.stakeDelegs
d_stakeDelegs_902 ::
  T_DState_892 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_902 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_906 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.rewards
d_rewards_904 ::
  T_DState_892 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_904 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_906 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState
d_PState_908 a0 = ()
data T_PState_908
  = C_'10214'_'44'_'10215''7510'_918 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.PState.pools
d_pools_914 ::
  T_PState_908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_914 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_918 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState.retiring
d_retiring_916 ::
  T_PState_908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_916 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_918 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState
d_GState_920 a0 = ()
data T_GState_920
  = C_'10214'_'44'_'10215''7515'_930 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.GState.dreps
d_dreps_926 ::
  T_GState_920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_926 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_930 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState.ccHotKeys
d_ccHotKeys_928 ::
  T_GState_920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_928 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_930 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState
d_CertState_932 a0 = ()
data T_CertState_932
  = C_'10214'_'44'_'44'_'10215''7580''738'_946 T_DState_892
                                               T_PState_908 T_GState_920
-- Ledger.Certs.CertState.dState
d_dState_940 :: T_CertState_932 -> T_DState_892
d_dState_940 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_946 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.pState
d_pState_942 :: T_CertState_932 -> T_PState_908
d_pState_942 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_946 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.gState
d_gState_944 :: T_CertState_932 -> T_GState_920
d_gState_944 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_946 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv
d_DelegEnv_948 a0 = ()
data T_DelegEnv_948
  = C_'10214'_'44'_'44'_'10215''7496''7497'_962 MAlonzo.Code.Ledger.PParams.T_PParams_242
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                [MAlonzo.Code.Ledger.Address.T_Credential_16]
-- Ledger.Certs.DelegEnv.pparams
d_pparams_956 ::
  T_DelegEnv_948 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_956 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_962 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.pools
d_pools_958 ::
  T_DelegEnv_948 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_958 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_962 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.delegatees
d_delegatees_960 ::
  T_DelegEnv_948 -> [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_delegatees_960 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_962 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GovCertEnv
d_GovCertEnv_964 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_964 = erased
-- Ledger.Certs.PoolEnv
d_PoolEnv_966 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_966 = erased
-- Ledger.Certs.rewardsBalance
d_rewardsBalance_968 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_DState_892 -> Integer
d_rewardsBalance_968 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe
                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v2 -> v2)) (coe d_rewards_904 (coe v1))
-- Ledger.Certs.HasCoin-CertState
d_HasCoin'45'CertState_974 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_974 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            d_rewardsBalance_968 (coe v0) (coe d_dState_940 (coe v1))))
-- Ledger.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1042 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1042
  = C_DELEG'45'delegate_1122 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1124 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_DELEG'45'reg_1194 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1044 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__1044
  = C_POOL'45'regpool_1196 | C_POOL'45'retirepool_1198
-- Ledger.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1046 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1046
  = C_GOVCERT'45'regdrep_1270 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1272 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1274 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1048 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1048
  = C_CERT'45'deleg_1276 T__'8866'_'8640''10631'_'44'DELEG'10632'__1042 |
    C_CERT'45'pool_1278 T__'8866'_'8640''10631'_'44'POOL'10632'__1044 |
    C_CERT'45'vdel_1280 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1046
-- Ledger.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1050 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1050
  = C_CERT'45'base_1358 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1052 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_868 ->
  T_CertState_932 -> [T_DCert_832] -> T_CertState_932 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1052 = erased
-- Ledger.Certs._.keyDeposit
d_keyDeposit_1084 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_24275 -> Integer
d_keyDeposit_1084 ~v0 v1 = du_keyDeposit_1084 v1
du_keyDeposit_1084 :: T_GeneralizeTel_24275 -> Integer
du_keyDeposit_1084 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
      (coe d_'46'generalizedField'45'pp_24255 (coe v0))
-- Ledger.Certs._.keyDeposit
d_keyDeposit_1156 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_31377 -> Integer
d_keyDeposit_1156 ~v0 v1 = du_keyDeposit_1156 v1
du_keyDeposit_1156 :: T_GeneralizeTel_31377 -> Integer
du_keyDeposit_1156 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_330
      (coe d_'46'generalizedField'45'pp_31361 (coe v0))
-- Ledger.Certs._.drepActivity
d_drepActivity_1302 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_43897 -> AgdaAny
d_drepActivity_1302 ~v0 v1 = du_drepActivity_1302 v1
du_drepActivity_1302 :: T_GeneralizeTel_43897 -> AgdaAny
du_drepActivity_1302 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_374
      (coe d_'46'generalizedField'45'pp_43875 (coe v0))
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_24255 ::
  T_GeneralizeTel_24275 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_'46'generalizedField'45'pp_24255 v0
  = case coe v0 of
      C_mkGeneralizeTel_24277 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_24257 ::
  T_GeneralizeTel_24275 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_24257 v0
  = case coe v0 of
      C_mkGeneralizeTel_24277 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_24259 ::
  T_GeneralizeTel_24275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_24259 v0
  = case coe v0 of
      C_mkGeneralizeTel_24277 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_24261 ::
  T_GeneralizeTel_24275 -> Integer
d_'46'generalizedField'45'd_24261 v0
  = case coe v0 of
      C_mkGeneralizeTel_24277 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_24263 ::
  T_GeneralizeTel_24275 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672
d_'46'generalizedField'45'mv_24263 v0
  = case coe v0 of
      C_mkGeneralizeTel_24277 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-delegatees
d_'46'generalizedField'45'delegatees_24265 ::
  T_GeneralizeTel_24275 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_'46'generalizedField'45'delegatees_24265 v0
  = case coe v0 of
      C_mkGeneralizeTel_24277 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mkh
d_'46'generalizedField'45'mkh_24267 ::
  T_GeneralizeTel_24275 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_24267 v0
  = case coe v0 of
      C_mkGeneralizeTel_24277 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_24269 ::
  T_GeneralizeTel_24275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_24269 v0
  = case coe v0 of
      C_mkGeneralizeTel_24277 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_24271 ::
  T_GeneralizeTel_24275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_24271 v0
  = case coe v0 of
      C_mkGeneralizeTel_24277 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_24273 ::
  T_GeneralizeTel_24275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_24273 v0
  = case coe v0 of
      C_mkGeneralizeTel_24277 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_24275 a0 = ()
data T_GeneralizeTel_24275
  = C_mkGeneralizeTel_24277 MAlonzo.Code.Ledger.PParams.T_PParams_242
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                            (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672)
                            [MAlonzo.Code.Ledger.Address.T_Credential_16] (Maybe AgdaAny)
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_31361 ::
  T_GeneralizeTel_31377 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_'46'generalizedField'45'pp_31361 v0
  = case coe v0 of
      C_mkGeneralizeTel_31379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_31363 ::
  T_GeneralizeTel_31377 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_31363 v0
  = case coe v0 of
      C_mkGeneralizeTel_31379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_31365 ::
  T_GeneralizeTel_31377 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_31365 v0
  = case coe v0 of
      C_mkGeneralizeTel_31379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_31367 ::
  T_GeneralizeTel_31377 -> Integer
d_'46'generalizedField'45'd_31367 v0
  = case coe v0 of
      C_mkGeneralizeTel_31379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_31369 ::
  T_GeneralizeTel_31377 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_31369 v0
  = case coe v0 of
      C_mkGeneralizeTel_31379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-delegatees
d_'46'generalizedField'45'delegatees_31371 ::
  T_GeneralizeTel_31377 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_'46'generalizedField'45'delegatees_31371 v0
  = case coe v0 of
      C_mkGeneralizeTel_31379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_31373 ::
  T_GeneralizeTel_31377 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_31373 v0
  = case coe v0 of
      C_mkGeneralizeTel_31379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_31375 ::
  T_GeneralizeTel_31377 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_31375 v0
  = case coe v0 of
      C_mkGeneralizeTel_31379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_31377 a0 = ()
data T_GeneralizeTel_31377
  = C_mkGeneralizeTel_31379 MAlonzo.Code.Ledger.PParams.T_PParams_242
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Address.T_Credential_16]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_35673 ::
  T_GeneralizeTel_35691 -> Integer
d_'46'generalizedField'45'd_35673 v0
  = case coe v0 of
      C_mkGeneralizeTel_35693 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_35675 ::
  T_GeneralizeTel_35691 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_35675 v0
  = case coe v0 of
      C_mkGeneralizeTel_35693 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_35677 ::
  T_GeneralizeTel_35691 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_35677 v0
  = case coe v0 of
      C_mkGeneralizeTel_35693 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_35679 ::
  T_GeneralizeTel_35691 -> AgdaAny
d_'46'generalizedField'45'e_35679 v0
  = case coe v0 of
      C_mkGeneralizeTel_35693 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_35681 ::
  T_GeneralizeTel_35691 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_'46'generalizedField'45'vs_35681 v0
  = case coe v0 of
      C_mkGeneralizeTel_35693 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_35683 ::
  T_GeneralizeTel_35691 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_35683 v0
  = case coe v0 of
      C_mkGeneralizeTel_35693 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-cc
d_'46'generalizedField'45'cc_35685 ::
  T_GeneralizeTel_35691 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_'46'generalizedField'45'cc_35685 v0
  = case coe v0 of
      C_mkGeneralizeTel_35693 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_35687 ::
  T_GeneralizeTel_35691 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_35687 v0
  = case coe v0 of
      C_mkGeneralizeTel_35693 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-an
d_'46'generalizedField'45'an_35689 ::
  T_GeneralizeTel_35691 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_'46'generalizedField'45'an_35689 v0
  = case coe v0 of
      C_mkGeneralizeTel_35693 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_35691 a0 = ()
data T_GeneralizeTel_35691
  = C_mkGeneralizeTel_35693 Integer
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Address.T_Credential_16]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_43875 ::
  T_GeneralizeTel_43897 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_'46'generalizedField'45'pp_43875 v0
  = case coe v0 of
      C_mkGeneralizeTel_43899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_43877 ::
  T_GeneralizeTel_43897 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_'46'generalizedField'45'vs_43877 v0
  = case coe v0 of
      C_mkGeneralizeTel_43899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_43879 ::
  T_GeneralizeTel_43897 -> AgdaAny
d_'46'generalizedField'45'e_43879 v0
  = case coe v0 of
      C_mkGeneralizeTel_43899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_43881 ::
  T_GeneralizeTel_43897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_43881 v0
  = case coe v0 of
      C_mkGeneralizeTel_43899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_43883 ::
  T_GeneralizeTel_43897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_43883 v0
  = case coe v0 of
      C_mkGeneralizeTel_43899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_43885 ::
  T_GeneralizeTel_43897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_43885 v0
  = case coe v0 of
      C_mkGeneralizeTel_43899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rewards
d_'46'generalizedField'45'rewards_43887 ::
  T_GeneralizeTel_43897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_43887 v0
  = case coe v0 of
      C_mkGeneralizeTel_43899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-cc
d_'46'generalizedField'45'cc_43889 ::
  T_GeneralizeTel_43897 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_'46'generalizedField'45'cc_43889 v0
  = case coe v0 of
      C_mkGeneralizeTel_43899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_43891 ::
  T_GeneralizeTel_43897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_43891 v0
  = case coe v0 of
      C_mkGeneralizeTel_43899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_43893 ::
  T_GeneralizeTel_43897 -> T_PState_908
d_'46'generalizedField'45'st'7510'_43893 v0
  = case coe v0 of
      C_mkGeneralizeTel_43899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_43895 ::
  T_GeneralizeTel_43897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_43895 v0
  = case coe v0 of
      C_mkGeneralizeTel_43899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_43897 a0 = ()
data T_GeneralizeTel_43897
  = C_mkGeneralizeTel_43899 MAlonzo.Code.Ledger.PParams.T_PParams_242
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Address.T_Credential_16]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_PState_908
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
