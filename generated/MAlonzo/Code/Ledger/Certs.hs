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
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_268 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_604
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
d_Emax_474 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_474 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_476 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_476 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_478 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_480 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_480 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_482 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_484 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_486 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_488 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_490 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_492 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_496 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_500 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_502 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_508 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_510 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_512 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_514 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_516 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_516 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_518 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_518 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_520 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_520 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_522 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_522 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_524 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_524 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_526 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_526 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_528 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_528 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_530 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_530 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_532 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_532 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_534 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_534 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_536 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_536 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_538 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_538 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.RwdAddr.net
d_net_660 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_660 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_662 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_662 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Certs._.Anchor
d_Anchor_684 a0 = ()
-- Ledger.Certs._.DecEq-VDeleg
d_DecEq'45'VDeleg_694 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_694 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
      (coe v0)
-- Ledger.Certs._.GovActionID
d_GovActionID_700 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovActionID_700 = erased
-- Ledger.Certs._.GovRole
d_GovRole_706 a0 = ()
-- Ledger.Certs._.GovVote
d_GovVote_708 a0 = ()
-- Ledger.Certs._.VDeleg
d_VDeleg_728 a0 = ()
-- Ledger.Certs._.getDRepVote
d_getDRepVote_744 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_744 ~v0 = du_getDRepVote_744
du_getDRepVote_744 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_744
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_830
-- Ledger.Certs._.Anchor.hash
d_hash_756 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 -> AgdaAny
d_hash_756 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_714 (coe v0)
-- Ledger.Certs._.Anchor.url
d_url_758 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_758 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_712 (coe v0)
-- Ledger.Certs._.GovVote.anchor
d_anchor_812 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_812 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- Ledger.Certs._.GovVote.gid
d_gid_814 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_814 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_768 (coe v0)
-- Ledger.Certs._.GovVote.vote
d_vote_816 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
d_vote_816 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_772 (coe v0)
-- Ledger.Certs._.GovVote.voter
d_voter_818 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_818 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v0)
-- Ledger.Certs.DepositPurpose
d_DepositPurpose_836 a0 = ()
data T_DepositPurpose_836
  = C_CredentialDeposit_838 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_PoolDeposit_840 AgdaAny |
    C_DRepDeposit_842 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_GovActionDeposit_844 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Deposits
d_Deposits_846 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Deposits_846 = erased
-- Ledger.Certs.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_848 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_848 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v1 ->
            case coe v1 of
              C_CredentialDeposit_838 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_838 v4
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
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_PoolDeposit_840 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_842 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_844 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_PoolDeposit_840 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_838 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_840 v4
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
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_DRepDeposit_842 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_844 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRepDeposit_842 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_838 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_840 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_842 v4
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
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_GovActionDeposit_844 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovActionDeposit_844 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_838 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_840 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_842 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_844 v4
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
                                             MAlonzo.Code.Ledger.Types.GovStructure.d_DecEq'45'TxId_556
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
d_PoolParams_850 a0 = ()
newtype T_PoolParams_850
  = C_PoolParams'46'constructor_13073 MAlonzo.Code.Ledger.Address.T_Credential_16
-- Ledger.Certs.PoolParams.rewardAddr
d_rewardAddr_854 ::
  T_PoolParams_850 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_854 v0
  = case coe v0 of
      C_PoolParams'46'constructor_13073 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DCert
d_DCert_856 a0 = ()
data T_DCert_856
  = C_delegate_858 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698)
                   (Maybe AgdaAny) Integer |
    C_dereg_860 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer |
    C_regpool_862 AgdaAny T_PoolParams_850 |
    C_retirepool_864 AgdaAny AgdaAny |
    C_regdrep_866 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 |
    C_deregdrep_868 MAlonzo.Code.Ledger.Address.T_Credential_16
                    Integer |
    C_ccreghot_870 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.Address.T_Credential_16)
-- Ledger.Certs.cwitness
d_cwitness_872 ::
  T_DCert_856 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_872 v0
  = case coe v0 of
      C_delegate_858 v1 v2 v3 v4 -> coe v1
      C_dereg_860 v1 v2 -> coe v1
      C_regpool_862 v1 v2
        -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1)
      C_retirepool_864 v1 v2
        -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1)
      C_regdrep_866 v1 v2 v3 -> coe v1
      C_deregdrep_868 v1 v2 -> coe v1
      C_ccreghot_870 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv
d_CertEnv_888 a0 = ()
data T_CertEnv_888
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_906 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_244
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.CertEnv.epoch
d_epoch_898 :: T_CertEnv_888 -> AgdaAny
d_epoch_898 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_906 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.pp
d_pp_900 ::
  T_CertEnv_888 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_900 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_906 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.votes
d_votes_902 ::
  T_CertEnv_888 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_votes_902 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_906 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.wdrls
d_wdrls_904 ::
  T_CertEnv_888 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_904 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_906 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState
d_DState_908 a0 = ()
data T_DState_908
  = C_'10214'_'44'_'44'_'10215''7496'_922 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DState.voteDelegs
d_voteDelegs_916 ::
  T_DState_908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_916 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_922 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.stakeDelegs
d_stakeDelegs_918 ::
  T_DState_908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_918 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_922 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.rewards
d_rewards_920 ::
  T_DState_908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_920 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_922 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState
d_PState_924 a0 = ()
data T_PState_924
  = C_'10214'_'44'_'10215''7510'_934 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.PState.pools
d_pools_930 ::
  T_PState_924 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_930 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_934 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState.retiring
d_retiring_932 ::
  T_PState_924 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_932 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_934 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState
d_GState_936 a0 = ()
data T_GState_936
  = C_'10214'_'44'_'10215''7515'_946 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.GState.dreps
d_dreps_942 ::
  T_GState_936 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_942 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_946 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState.ccHotKeys
d_ccHotKeys_944 ::
  T_GState_936 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_944 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_946 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState
d_CertState_948 a0 = ()
data T_CertState_948
  = C_'10214'_'44'_'44'_'10215''7580''738'_962 T_DState_908
                                               T_PState_924 T_GState_936
-- Ledger.Certs.CertState.dState
d_dState_956 :: T_CertState_948 -> T_DState_908
d_dState_956 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_962 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.pState
d_pState_958 :: T_CertState_948 -> T_PState_924
d_pState_958 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_962 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.gState
d_gState_960 :: T_CertState_948 -> T_GState_936
d_gState_960 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_962 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv
d_DelegEnv_964 a0 = ()
data T_DelegEnv_964
  = C_'10214'_'44'_'44'_'10215''7496''7497'_978 MAlonzo.Code.Ledger.PParams.T_PParams_244
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                [MAlonzo.Code.Ledger.Address.T_Credential_16]
-- Ledger.Certs.DelegEnv.pparams
d_pparams_972 ::
  T_DelegEnv_964 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_972 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_978 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.pools
d_pools_974 ::
  T_DelegEnv_964 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_974 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_978 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.delegatees
d_delegatees_976 ::
  T_DelegEnv_964 -> [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_delegatees_976 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_978 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GovCertEnv
d_GovCertEnv_980 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_980 = erased
-- Ledger.Certs.PoolEnv
d_PoolEnv_982 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_982 = erased
-- Ledger.Certs.rewardsBalance
d_rewardsBalance_984 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_DState_908 -> Integer
d_rewardsBalance_984 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe
                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v2 -> v2)) (coe d_rewards_920 (coe v1))
-- Ledger.Certs.HasCoin-CertState
d_HasCoin'45'CertState_990 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_990 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            d_rewardsBalance_984 (coe v0) (coe d_dState_956 (coe v1))))
-- Ledger.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1056 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1056
  = C_DELEG'45'delegate_1136 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1138 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
-- Ledger.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1058 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__1058
  = C_POOL'45'regpool_1140 | C_POOL'45'retirepool_1142
-- Ledger.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1060 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1060
  = C_GOVCERT'45'regdrep_1214 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1216 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1218
-- Ledger.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1062 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1062
  = C_CERT'45'deleg_1220 T__'8866'_'8640''10631'_'44'DELEG'10632'__1056 |
    C_CERT'45'pool_1222 T__'8866'_'8640''10631'_'44'POOL'10632'__1058 |
    C_CERT'45'vdel_1224 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1060
-- Ledger.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1064 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1064
  = C_CERT'45'base_1302 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1066 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_888 ->
  T_CertState_948 -> [T_DCert_856] -> T_CertState_948 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1066 = erased
-- Ledger.Certs._.keyDeposit
d_keyDeposit_1098 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_23013 -> Integer
d_keyDeposit_1098 ~v0 v1 = du_keyDeposit_1098 v1
du_keyDeposit_1098 :: T_GeneralizeTel_23013 -> Integer
du_keyDeposit_1098 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_332
      (coe d_'46'generalizedField'45'pp_22993 (coe v0))
-- Ledger.Certs._.drepActivity
d_drepActivity_1246 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_39819 -> AgdaAny
d_drepActivity_1246 ~v0 v1 = du_drepActivity_1246 v1
du_drepActivity_1246 :: T_GeneralizeTel_39819 -> AgdaAny
du_drepActivity_1246 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_376
      (coe d_'46'generalizedField'45'pp_39799 (coe v0))
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_22993 ::
  T_GeneralizeTel_23013 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_'46'generalizedField'45'pp_22993 v0
  = case coe v0 of
      C_mkGeneralizeTel_23015 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_22995 ::
  T_GeneralizeTel_23013 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_22995 v0
  = case coe v0 of
      C_mkGeneralizeTel_23015 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_22997 ::
  T_GeneralizeTel_23013 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_22997 v0
  = case coe v0 of
      C_mkGeneralizeTel_23015 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_22999 ::
  T_GeneralizeTel_23013 -> Integer
d_'46'generalizedField'45'd_22999 v0
  = case coe v0 of
      C_mkGeneralizeTel_23015 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_23001 ::
  T_GeneralizeTel_23013 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698
d_'46'generalizedField'45'mv_23001 v0
  = case coe v0 of
      C_mkGeneralizeTel_23015 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-delegatees
d_'46'generalizedField'45'delegatees_23003 ::
  T_GeneralizeTel_23013 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_'46'generalizedField'45'delegatees_23003 v0
  = case coe v0 of
      C_mkGeneralizeTel_23015 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mkh
d_'46'generalizedField'45'mkh_23005 ::
  T_GeneralizeTel_23013 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_23005 v0
  = case coe v0 of
      C_mkGeneralizeTel_23015 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_23007 ::
  T_GeneralizeTel_23013 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_23007 v0
  = case coe v0 of
      C_mkGeneralizeTel_23015 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_23009 ::
  T_GeneralizeTel_23013 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_23009 v0
  = case coe v0 of
      C_mkGeneralizeTel_23015 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_23011 ::
  T_GeneralizeTel_23013 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_23011 v0
  = case coe v0 of
      C_mkGeneralizeTel_23015 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_23013 a0 = ()
data T_GeneralizeTel_23013
  = C_mkGeneralizeTel_23015 MAlonzo.Code.Ledger.PParams.T_PParams_244
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                            (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698)
                            [MAlonzo.Code.Ledger.Address.T_Credential_16] (Maybe AgdaAny)
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_32631 ::
  T_GeneralizeTel_32647 -> Integer
d_'46'generalizedField'45'd_32631 v0
  = case coe v0 of
      C_mkGeneralizeTel_32649 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_32633 ::
  T_GeneralizeTel_32647 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_32633 v0
  = case coe v0 of
      C_mkGeneralizeTel_32649 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_32635 ::
  T_GeneralizeTel_32647 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_32635 v0
  = case coe v0 of
      C_mkGeneralizeTel_32649 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_32637 ::
  T_GeneralizeTel_32647 -> AgdaAny
d_'46'generalizedField'45'e_32637 v0
  = case coe v0 of
      C_mkGeneralizeTel_32649 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_32639 ::
  T_GeneralizeTel_32647 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_'46'generalizedField'45'vs_32639 v0
  = case coe v0 of
      C_mkGeneralizeTel_32649 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_32641 ::
  T_GeneralizeTel_32647 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_32641 v0
  = case coe v0 of
      C_mkGeneralizeTel_32649 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_32643 ::
  T_GeneralizeTel_32647 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_32643 v0
  = case coe v0 of
      C_mkGeneralizeTel_32649 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-an
d_'46'generalizedField'45'an_32645 ::
  T_GeneralizeTel_32647 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_'46'generalizedField'45'an_32645 v0
  = case coe v0 of
      C_mkGeneralizeTel_32649 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_32647 a0 = ()
data T_GeneralizeTel_32647
  = C_mkGeneralizeTel_32649 Integer
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_39799 ::
  T_GeneralizeTel_39819 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_'46'generalizedField'45'pp_39799 v0
  = case coe v0 of
      C_mkGeneralizeTel_39821 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_39801 ::
  T_GeneralizeTel_39819 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_'46'generalizedField'45'vs_39801 v0
  = case coe v0 of
      C_mkGeneralizeTel_39821 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_39803 ::
  T_GeneralizeTel_39819 -> AgdaAny
d_'46'generalizedField'45'e_39803 v0
  = case coe v0 of
      C_mkGeneralizeTel_39821 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_39805 ::
  T_GeneralizeTel_39819 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_39805 v0
  = case coe v0 of
      C_mkGeneralizeTel_39821 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_39807 ::
  T_GeneralizeTel_39819 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_39807 v0
  = case coe v0 of
      C_mkGeneralizeTel_39821 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_39809 ::
  T_GeneralizeTel_39819 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_39809 v0
  = case coe v0 of
      C_mkGeneralizeTel_39821 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rewards
d_'46'generalizedField'45'rewards_39811 ::
  T_GeneralizeTel_39819 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_39811 v0
  = case coe v0 of
      C_mkGeneralizeTel_39821 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_39813 ::
  T_GeneralizeTel_39819 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_39813 v0
  = case coe v0 of
      C_mkGeneralizeTel_39821 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_39815 ::
  T_GeneralizeTel_39819 -> T_PState_924
d_'46'generalizedField'45'st'7510'_39815 v0
  = case coe v0 of
      C_mkGeneralizeTel_39821 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_39817 ::
  T_GeneralizeTel_39819 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_39817 v0
  = case coe v0 of
      C_mkGeneralizeTel_39821 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_39819 a0 = ()
data T_GeneralizeTel_39819
  = C_mkGeneralizeTel_39821 MAlonzo.Code.Ledger.PParams.T_PParams_244
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_PState_924
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
