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

module MAlonzo.Code.Ledger.Conway.Specification.Certs where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Certs
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.Credential
d_Credential_40 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_70 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_70 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_70 v2 v3
du_DecEq'45'Credential_70 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_70 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe v0) (coe v1)
-- _.Epoch
d_Epoch_122 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_122 = erased
-- _.THash
d_THash_176 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_176 = erased
-- _.PParams
d_PParams_208 a0 = ()
-- _.Withdrawals
d_Withdrawals_330 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_330 = erased
-- _.addEpoch
d_addEpoch_334 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_334 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Base.d_epochStructure_646
         (coe v0))
-- _.isKeyHash
d_isKeyHash_366 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_366 = erased
-- _.PParams.Emax
d_Emax_560 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_Emax_560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_390
      (coe v0)
-- _.PParams.a
d_a_562 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_a_562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_362 (coe v0)
-- _.PParams.a0
d_a0_564 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_394 (coe v0)
-- _.PParams.b
d_b_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_b_566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_364 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_ccMaxTermLength_568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_406
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_ccMinSize_570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_404
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_coinsPerUTxOByte_572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_374
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_collateralPercentage_574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_396
      (coe v0)
-- _.PParams.costmdls
d_costmdls_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_costmdls_576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_398
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_drepActivity_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_414
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_drepDeposit_580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_412
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206
d_drepThresholds_582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_govActionDeposit_584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_govActionLifetime_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_408
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_keyDeposit_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_maxBlockExUnits_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_354
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxBlockSize_592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_346
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxCollateralInputs_594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_358
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxHeaderSize_596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_350
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxRefScriptSizePerBlock_598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_382
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxRefScriptSizePerTx_600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_380
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_maxTxExUnits_602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_352
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxTxSize_604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_348
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxValSize_606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_356
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_378
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_minUTxOValue_610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_388
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_370
      (coe v0)
-- _.PParams.nopt
d_nopt_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_nopt_614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_392
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_616 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_poolDeposit_616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_618 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_250
d_poolThresholds_618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_400
      (coe v0)
-- _.PParams.prices
d_prices_620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_prices_620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_376
      (coe v0)
-- _.PParams.pv
d_pv_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_360 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_624 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_386
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_626 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_384
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_628 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_372
      (coe v0)
-- Ledger.Conway.Specification.Certs._.Anchor
d_Anchor_782 a0 = ()
-- Ledger.Conway.Specification.Certs._.DReps
d_DReps_792 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_792 = erased
-- Ledger.Conway.Specification.Certs._.DecEq-VDeleg
d_DecEq'45'VDeleg_802 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_802 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1108
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GovVote
d_GovVote_832 a0 = ()
-- Ledger.Conway.Specification.Certs._.VDeleg
d_VDeleg_924 a0 = ()
-- Ledger.Conway.Specification.Certs._.VoteDelegs
d_VoteDelegs_928 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_928 = erased
-- Ledger.Conway.Specification.Certs._.isGovVoterDRep
d_isGovVoterDRep_946 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_872 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_946 ~v0 = du_isGovVoterDRep_946
du_isGovVoterDRep_946 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_872 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_946
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_isGovVoterDRep_1212
-- Ledger.Conway.Specification.Certs._.Anchor.hash
d_hash_962 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_884 ->
  AgdaAny
d_hash_962 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_hash_892
      (coe v0)
-- Ledger.Conway.Specification.Certs._.Anchor.url
d_url_964 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_884 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_964 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_url_890
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GovVote.anchor
d_anchor_1024 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_884
d_anchor_1024 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_912
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GovVote.gid
d_gid_1026 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1026 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gid_906
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GovVote.vote
d_vote_1028 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_864
d_vote_1028 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_vote_910
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GovVote.voter
d_voter_1030 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_872
d_voter_1030 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_voter_908
      (coe v0)
-- Ledger.Conway.Specification.Certs._.CCHotKeys
d_CCHotKeys_1092 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_CCHotKeys_1092 = erased
-- Ledger.Conway.Specification.Certs._.CCHotKeysOf
d_CCHotKeysOf_1094 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1166 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1094 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CCHotKeysOf_1174
      (coe v0)
-- Ledger.Conway.Specification.Certs._.CertEnv
d_CertEnv_1096 a0 = ()
-- Ledger.Conway.Specification.Certs._.CertState
d_CertState_1100 a0 = ()
-- Ledger.Conway.Specification.Certs._.CertStateOf
d_CertStateOf_1104 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCertState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386
d_CertStateOf_1104 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CertStateOf_1490
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DCert
d_DCert_1108 a0 = ()
-- Ledger.Conway.Specification.Certs._.DState
d_DState_1112 a0 = ()
-- Ledger.Conway.Specification.Certs._.DStateOf
d_DStateOf_1116 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1342
d_DStateOf_1116 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DStateOf_1430
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1118 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1118 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1146
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DelegEnv
d_DelegEnv_1120 a0 = ()
-- Ledger.Conway.Specification.Certs._.DepositPurpose
d_DepositPurpose_1124 a0 = ()
-- Ledger.Conway.Specification.Certs._.Deposits
d_Deposits_1126 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Deposits_1126 = erased
-- Ledger.Conway.Specification.Certs._.DepositsOf
d_DepositsOf_1128 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1130 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1128 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DepositsOf_1138
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GState
d_GState_1130 a0 = ()
-- Ledger.Conway.Specification.Certs._.GStateOf
d_GStateOf_1134 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1462 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1374
d_GStateOf_1134 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_GStateOf_1470
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasCCHotKeys
d_HasCCHotKeys_1138 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_1142 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1166
d_HasCCHotKeys'45'CertState_1142 ~v0
  = du_HasCCHotKeys'45'CertState_1142
du_HasCCHotKeys'45'CertState_1142 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1166
du_HasCCHotKeys'45'CertState_1142
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCCHotKeys'45'CertState_1526
-- Ledger.Conway.Specification.Certs._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_1144 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1166
d_HasCCHotKeys'45'GState_1144 ~v0 = du_HasCCHotKeys'45'GState_1144
du_HasCCHotKeys'45'GState_1144 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1166
du_HasCCHotKeys'45'GState_1144
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCCHotKeys'45'GState_1514
-- Ledger.Conway.Specification.Certs._.HasCast-CertEnv
d_HasCast'45'CertEnv_1146 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1146 ~v0 = du_HasCast'45'CertEnv_1146
du_HasCast'45'CertEnv_1146 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1146
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'CertEnv_1542
-- Ledger.Conway.Specification.Certs._.HasCast-CertState
d_HasCast'45'CertState_1148 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_1148 ~v0 = du_HasCast'45'CertState_1148
du_HasCast'45'CertState_1148 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_1148
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'CertState_1550
-- Ledger.Conway.Specification.Certs._.HasCast-DState
d_HasCast'45'DState_1150 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_1150 ~v0 = du_HasCast'45'DState_1150
du_HasCast'45'DState_1150 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_1150
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'DState_1544
-- Ledger.Conway.Specification.Certs._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_1152 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_1152 ~v0 = du_HasCast'45'DelegEnv_1152
du_HasCast'45'DelegEnv_1152 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_1152
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'DelegEnv_1552
-- Ledger.Conway.Specification.Certs._.HasCast-GState
d_HasCast'45'GState_1154 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_1154 ~v0 = du_HasCast'45'GState_1154
du_HasCast'45'GState_1154 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_1154
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'GState_1548
-- Ledger.Conway.Specification.Certs._.HasCast-PState
d_HasCast'45'PState_1156 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_1156 ~v0 = du_HasCast'45'PState_1156
du_HasCast'45'PState_1156 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_1156
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'PState_1546
-- Ledger.Conway.Specification.Certs._.HasCertState
d_HasCertState_1158 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasCoin-CertState
d_HasCoin'45'CertState_1162 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_1162 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_HasCoin'45'CertState_1540
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasDReps-CertState
d_HasDReps'45'CertState_1164 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasDReps_1232
d_HasDReps'45'CertState_1164 ~v0 = du_HasDReps'45'CertState_1164
du_HasDReps'45'CertState_1164 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasDReps_1232
du_HasDReps'45'CertState_1164
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDReps'45'CertState_1524
-- Ledger.Conway.Specification.Certs._.HasDReps-GState
d_HasDReps'45'GState_1166 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasDReps_1232
d_HasDReps'45'GState_1166 ~v0 = du_HasDReps'45'GState_1166
du_HasDReps'45'GState_1166 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasDReps_1232
du_HasDReps'45'GState_1166
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDReps'45'GState_1512
-- Ledger.Conway.Specification.Certs._.HasDState
d_HasDState_1168 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasDState-CertState
d_HasDState'45'CertState_1172 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1422
d_HasDState'45'CertState_1172 ~v0 = du_HasDState'45'CertState_1172
du_HasDState'45'CertState_1172 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1422
du_HasDState'45'CertState_1172
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDState'45'CertState_1516
-- Ledger.Conway.Specification.Certs._.HasDeposits
d_HasDeposits_1174 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasGState
d_HasGState_1178 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasGState-CertState
d_HasGState'45'CertState_1182 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1462
d_HasGState'45'CertState_1182 ~v0 = du_HasGState'45'CertState_1182
du_HasGState'45'CertState_1182 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1462
du_HasGState'45'CertState_1182
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasGState'45'CertState_1520
-- Ledger.Conway.Specification.Certs._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_1184 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
d_HasPParams'45'CertEnv_1184 ~v0 = du_HasPParams'45'CertEnv_1184
du_HasPParams'45'CertEnv_1184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
du_HasPParams'45'CertEnv_1184
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPParams'45'CertEnv_1498
-- Ledger.Conway.Specification.Certs._.HasPState
d_HasPState_1186 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasPState-CertState
d_HasPState'45'CertState_1190 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1442
d_HasPState'45'CertState_1190 ~v0 = du_HasPState'45'CertState_1190
du_HasPState'45'CertState_1190 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1442
du_HasPState'45'CertState_1190
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPState'45'CertState_1518
-- Ledger.Conway.Specification.Certs._.HasPools
d_HasPools_1192 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasPools-CertState
d_HasPools'45'CertState_1196 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182
d_HasPools'45'CertState_1196 ~v0 = du_HasPools'45'CertState_1196
du_HasPools'45'CertState_1196 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182
du_HasPools'45'CertState_1196
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPools'45'CertState_1528
-- Ledger.Conway.Specification.Certs._.HasPools-PState
d_HasPools'45'PState_1198 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182
d_HasPools'45'PState_1198 ~v0 = du_HasPools'45'PState_1198
du_HasPools'45'PState_1198 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182
du_HasPools'45'PState_1198
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPools'45'PState_1508
-- Ledger.Conway.Specification.Certs._.HasRetiring
d_HasRetiring_1200 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasRetiring-PState
d_HasRetiring'45'PState_1204 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRetiring_1198
d_HasRetiring'45'PState_1204 ~v0 = du_HasRetiring'45'PState_1204
du_HasRetiring'45'PState_1204 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRetiring_1198
du_HasRetiring'45'PState_1204
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasRetiring'45'PState_1510
-- Ledger.Conway.Specification.Certs._.HasRewards
d_HasRewards_1206 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasRewards-CertState
d_HasRewards'45'CertState_1210 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1214
d_HasRewards'45'CertState_1210 ~v0
  = du_HasRewards'45'CertState_1210
du_HasRewards'45'CertState_1210 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1214
du_HasRewards'45'CertState_1210
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasRewards'45'CertState_1522
-- Ledger.Conway.Specification.Certs._.HasRewards-DState
d_HasRewards'45'DState_1212 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1214
d_HasRewards'45'DState_1212 ~v0 = du_HasRewards'45'DState_1212
du_HasRewards'45'DState_1212 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1214
du_HasRewards'45'DState_1212
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasRewards'45'DState_1506
-- Ledger.Conway.Specification.Certs._.HasStake
d_HasStake_1214 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasStakeDelegs
d_HasStakeDelegs_1218 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_1222 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1246
d_HasStakeDelegs'45'CertState_1222 ~v0
  = du_HasStakeDelegs'45'CertState_1222
du_HasStakeDelegs'45'CertState_1222 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1246
du_HasStakeDelegs'45'CertState_1222
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasStakeDelegs'45'CertState_1532
-- Ledger.Conway.Specification.Certs._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_1224 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1246
d_HasStakeDelegs'45'DState_1224 ~v0
  = du_HasStakeDelegs'45'DState_1224
du_HasStakeDelegs'45'DState_1224 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1246
du_HasStakeDelegs'45'DState_1224
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasStakeDelegs'45'DState_1504
-- Ledger.Conway.Specification.Certs._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_1226 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_946
d_HasVoteDelegs'45'CertState_1226 ~v0
  = du_HasVoteDelegs'45'CertState_1226
du_HasVoteDelegs'45'CertState_1226 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_946
du_HasVoteDelegs'45'CertState_1226
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasVoteDelegs'45'CertState_1530
-- Ledger.Conway.Specification.Certs._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_1228 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_946
d_HasVoteDelegs'45'DState_1228 ~v0
  = du_HasVoteDelegs'45'DState_1228
du_HasVoteDelegs'45'DState_1228 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_946
du_HasVoteDelegs'45'DState_1228
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasVoteDelegs'45'DState_1502
-- Ledger.Conway.Specification.Certs._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_1230 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'CertEnv_1230 ~v0
  = du_HasWithdrawals'45'CertEnv_1230
du_HasWithdrawals'45'CertEnv_1230 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
du_HasWithdrawals'45'CertEnv_1230
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasWithdrawals'45'CertEnv_1500
-- Ledger.Conway.Specification.Certs._.PState
d_PState_1232 a0 = ()
-- Ledger.Conway.Specification.Certs._.PStateOf
d_PStateOf_1236 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1442 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1358
d_PStateOf_1236 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PStateOf_1450
      (coe v0)
-- Ledger.Conway.Specification.Certs._.PoolEnv
d_PoolEnv_1240 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_PoolEnv_1240 = erased
-- Ledger.Conway.Specification.Certs._.Pools
d_Pools_1242 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Pools_1242 = erased
-- Ledger.Conway.Specification.Certs._.PoolsOf
d_PoolsOf_1244 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1244 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PoolsOf_1190
      (coe v0)
-- Ledger.Conway.Specification.Certs._.Retiring
d_Retiring_1246 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Retiring_1246 = erased
-- Ledger.Conway.Specification.Certs._.RetiringOf
d_RetiringOf_1248 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRetiring_1198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1248 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_RetiringOf_1206
      (coe v0)
-- Ledger.Conway.Specification.Certs._.Rewards
d_Rewards_1250 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Rewards_1250 = erased
-- Ledger.Conway.Specification.Certs._.RewardsOf
d_RewardsOf_1252 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1214 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1252 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_RewardsOf_1222
      (coe v0)
-- Ledger.Conway.Specification.Certs._.Stake
d_Stake_1254 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Stake_1254 = erased
-- Ledger.Conway.Specification.Certs._.StakeDelegs
d_StakeDelegs_1256 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_StakeDelegs_1256 = erased
-- Ledger.Conway.Specification.Certs._.StakeDelegsOf
d_StakeDelegsOf_1258 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1258 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_StakeDelegsOf_1254
      (coe v0)
-- Ledger.Conway.Specification.Certs._.StakeOf
d_StakeOf_1260 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStake_1230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1260 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_StakeOf_1238
      (coe v0)
-- Ledger.Conway.Specification.Certs._.StakePoolParams
d_StakePoolParams_1262 a0 = ()
-- Ledger.Conway.Specification.Certs._.cwitness
d_cwitness_1268 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_1268 ~v0 = du_cwitness_1268
du_cwitness_1268 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_1268
  = coe MAlonzo.Code.Ledger.Core.Specification.Certs.du_cwitness_1300
-- Ledger.Conway.Specification.Certs._.rewardsBalance
d_rewardsBalance_1284 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1342 ->
  Integer
d_rewardsBalance_1284 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_rewardsBalance_1534
      (coe v0)
-- Ledger.Conway.Specification.Certs._.CertEnv.coldCreds
d_coldCreds_1294 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1318 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_1294 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_coldCreds_1338
      (coe v0)
-- Ledger.Conway.Specification.Certs._.CertEnv.epoch
d_epoch_1296 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1318 ->
  AgdaAny
d_epoch_1296 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_epoch_1330 (coe v0)
-- Ledger.Conway.Specification.Certs._.CertEnv.pp
d_pp_1298 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1318 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pp_1298 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pp_1332 (coe v0)
-- Ledger.Conway.Specification.Certs._.CertEnv.votes
d_votes_1300 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1318 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896]
d_votes_1300 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_votes_1334 (coe v0)
-- Ledger.Conway.Specification.Certs._.CertEnv.wdrls
d_wdrls_1302 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1302 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_wdrls_1336 (coe v0)
-- Ledger.Conway.Specification.Certs._.CertState.dState
d_dState_1306 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1342
d_dState_1306 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_dState_1394 (coe v0)
-- Ledger.Conway.Specification.Certs._.CertState.gState
d_gState_1308 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1374
d_gState_1308 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_gState_1398 (coe v0)
-- Ledger.Conway.Specification.Certs._.CertState.pState
d_pState_1310 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1358
d_pState_1310 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pState_1396 (coe v0)
-- Ledger.Conway.Specification.Certs._.DState.rewards
d_rewards_1332 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1332 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_rewards_1354
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DState.stakeDelegs
d_stakeDelegs_1334 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1334 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_stakeDelegs_1352
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DState.voteDelegs
d_voteDelegs_1336 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1336 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_voteDelegs_1350
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DelegEnv.delegatees
d_delegatees_1340 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DelegEnv_1402 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1340 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_delegatees_1414
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DelegEnv.pools
d_pools_1342 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DelegEnv_1402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1342 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pools_1412 (coe v0)
-- Ledger.Conway.Specification.Certs._.DelegEnv.pparams
d_pparams_1344 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DelegEnv_1402 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_1344 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pparams_1410
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GState.ccHotKeys
d_ccHotKeys_1358 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1374 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1358 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_ccHotKeys_1382
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GState.dreps
d_dreps_1360 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1374 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1360 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_dreps_1380 (coe v0)
-- Ledger.Conway.Specification.Certs._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1364 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1166 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1364 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CCHotKeysOf_1174
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasCertState.CertStateOf
d_CertStateOf_1368 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCertState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386
d_CertStateOf_1368 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CertStateOf_1490
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasDState.DStateOf
d_DStateOf_1372 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1342
d_DStateOf_1372 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DStateOf_1430
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasDeposits.DepositsOf
d_DepositsOf_1376 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1130 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1376 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DepositsOf_1138
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasGState.GStateOf
d_GStateOf_1380 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1462 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1374
d_GStateOf_1380 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_GStateOf_1470
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasPState.PStateOf
d_PStateOf_1384 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1442 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1358
d_PStateOf_1384 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PStateOf_1450
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasPools.PoolsOf
d_PoolsOf_1388 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1388 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PoolsOf_1190
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasRetiring.RetiringOf
d_RetiringOf_1392 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRetiring_1198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1392 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_RetiringOf_1206
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasRewards.RewardsOf
d_RewardsOf_1396 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1214 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1396 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_RewardsOf_1222
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasStake.StakeOf
d_StakeOf_1400 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStake_1230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1400 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_StakeOf_1238
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1404 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1404 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_StakeDelegsOf_1254
      (coe v0)
-- Ledger.Conway.Specification.Certs._.PState.fPools
d_fPools_1408 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_1408 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_fPools_1368 (coe v0)
-- Ledger.Conway.Specification.Certs._.PState.pools
d_pools_1410 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1410 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pools_1366 (coe v0)
-- Ledger.Conway.Specification.Certs._.PState.retiring
d_retiring_1412 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1412 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_retiring_1370
      (coe v0)
-- Ledger.Conway.Specification.Certs._.StakePoolParams.cost
d_cost_1416 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090 ->
  Integer
d_cost_1416 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_cost_1104 (coe v0)
-- Ledger.Conway.Specification.Certs._.StakePoolParams.margin
d_margin_1418 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_1418 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_margin_1106 (coe v0)
-- Ledger.Conway.Specification.Certs._.StakePoolParams.owners
d_owners_1420 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090 ->
  [AgdaAny]
d_owners_1420 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_owners_1102 (coe v0)
-- Ledger.Conway.Specification.Certs._.StakePoolParams.pledge
d_pledge_1422 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090 ->
  Integer
d_pledge_1422 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pledge_1108 (coe v0)
-- Ledger.Conway.Specification.Certs._.StakePoolParams.rewardAccount
d_rewardAccount_1424 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_1424 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_rewardAccount_1110
      (coe v0)
-- Ledger.Conway.Specification.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1496 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1496
  = C_DELEG'45'delegate_1498 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1500 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_DELEG'45'reg_1502 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Certs.isPoolRegistered
d_isPoolRegistered_1504 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1090
d_isPoolRegistered_1504 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
         (coe
            MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Gov.Base.d_cryptoStructure_600
                     (coe v0)))))
         (coe v2)
         (let v3
                = MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
          coe
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v3
               (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1)))))
-- Ledger.Conway.Specification.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1510 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__1510
  = C_POOL'45'regpool_1514 | C_POOL'45'retirepool_1516
-- Ledger.Conway.Specification.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1518 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1518
  = C_GOVCERT'45'regdrep_1520 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1522 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1524 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1526 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1526
  = C_CERT'45'deleg_1528 T__'8866'_'8640''10631'_'44'DELEG'10632'__1496 |
    C_CERT'45'pool_1530 T__'8866'_'8640''10631'_'44'POOL'10632'__1510 |
    C_CERT'45'vdel_1532 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1518
-- Ledger.Conway.Specification.Certs._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__1534 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__1534
  = C_CERT'45'pre_1542 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Certs._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__1544 a0 a1 a2 a3
                                                      a4
  = ()
data T__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__1544
  = C_CERT'45'post_1548
-- Ledger.Conway.Specification.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1550 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1318 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1550 = erased
