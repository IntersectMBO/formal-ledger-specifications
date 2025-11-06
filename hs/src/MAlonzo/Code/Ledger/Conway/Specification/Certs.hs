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
         MAlonzo.Code.Ledger.Core.Specification.Gov.Base.d_epochStructure_648
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
d_Emax_562 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_Emax_562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_392
      (coe v0)
-- _.PParams.a
d_a_564 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_a_564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_364 (coe v0)
-- _.PParams.a0
d_a0_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_396 (coe v0)
-- _.PParams.b
d_b_568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_b_568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_366 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMaxTermLength_570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_408
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMinSize_572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_coinsPerUTxOByte_574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_376
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_collateralPercentage_576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_398
      (coe v0)
-- _.PParams.costmdls
d_costmdls_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_costmdls_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_400
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_drepActivity_580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_416
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_drepDeposit_582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_414
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionDeposit_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_412
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionLifetime_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_410
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_keyDeposit_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_368
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxBlockExUnits_592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_356
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxBlockSize_594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_348
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxCollateralInputs_596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_360
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxHeaderSize_598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_352
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerBlock_600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_384
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerTx_602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_382
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxTxExUnits_604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_354
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxTxSize_606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_350
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxValSize_608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_358
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_380
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_minUTxOValue_612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_390
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_372
      (coe v0)
-- _.PParams.nopt
d_nopt_616 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_nopt_616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_394
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_618 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_poolDeposit_618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_370
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
      (coe v0)
-- _.PParams.prices
d_prices_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_prices_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_378
      (coe v0)
-- _.PParams.pv
d_pv_624 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_362 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_626 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_388
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_628 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_386
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_630 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_374
      (coe v0)
-- Ledger.Conway.Specification.Certs._.Anchor
d_Anchor_784 a0 = ()
-- Ledger.Conway.Specification.Certs._.DecEq-VDeleg
d_DecEq'45'VDeleg_800 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_800 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GovVote
d_GovVote_830 a0 = ()
-- Ledger.Conway.Specification.Certs._.VDeleg
d_VDeleg_918 a0 = ()
-- Ledger.Conway.Specification.Certs._.VoteDelegs
d_VoteDelegs_922 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_922 = erased
-- Ledger.Conway.Specification.Certs._.isGovVoterDRep
d_isGovVoterDRep_936 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_936 ~v0 = du_isGovVoterDRep_936
du_isGovVoterDRep_936 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_936
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_isGovVoterDRep_1214
-- Ledger.Conway.Specification.Certs._.Anchor.hash
d_hash_952 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886 ->
  AgdaAny
d_hash_952 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_hash_894
      (coe v0)
-- Ledger.Conway.Specification.Certs._.Anchor.url
d_url_954 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_954 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_url_892
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GovVote.anchor
d_anchor_1014 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886
d_anchor_1014 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_914
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GovVote.gid
d_gid_1016 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1016 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gid_908
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GovVote.vote
d_vote_1018 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
d_vote_1018 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_vote_912
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GovVote.voter
d_voter_1020 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874
d_voter_1020 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_voter_910
      (coe v0)
-- Ledger.Conway.Specification.Certs._.CCHotKeys
d_CCHotKeys_1078 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_CCHotKeys_1078 = erased
-- Ledger.Conway.Specification.Certs._.CCHotKeysOf
d_CCHotKeysOf_1080 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1080 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CCHotKeysOf_1162
      (coe v0)
-- Ledger.Conway.Specification.Certs._.CertEnv
d_CertEnv_1082 a0 = ()
-- Ledger.Conway.Specification.Certs._.CertState
d_CertState_1086 a0 = ()
-- Ledger.Conway.Specification.Certs._.CertStateOf
d_CertStateOf_1090 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCertState_1490 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394
d_CertStateOf_1090 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CertStateOf_1498
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DCert
d_DCert_1094 a0 = ()
-- Ledger.Conway.Specification.Certs._.DReps
d_DReps_1098 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_1098 = erased
-- Ledger.Conway.Specification.Certs._.DRepsOf
d_DRepsOf_1100 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDReps_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1100 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DRepsOf_1178
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DState
d_DState_1102 a0 = ()
-- Ledger.Conway.Specification.Certs._.DStateOf
d_DStateOf_1106 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1350
d_DStateOf_1106 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DStateOf_1438
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1108 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1108 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DecEq'45'DepositPurpose_1132
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DelegEnv
d_DelegEnv_1110 a0 = ()
-- Ledger.Conway.Specification.Certs._.DepositPurpose
d_DepositPurpose_1114 a0 = ()
-- Ledger.Conway.Specification.Certs._.Deposits
d_Deposits_1116 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Deposits_1116 = erased
-- Ledger.Conway.Specification.Certs._.DepositsOf
d_DepositsOf_1118 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1118 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DepositsOf_1124
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GState
d_GState_1120 a0 = ()
-- Ledger.Conway.Specification.Certs._.GStateOf
d_GStateOf_1124 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1470 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1382
d_GStateOf_1124 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_GStateOf_1478
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasCCHotKeys
d_HasCCHotKeys_1128 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_1132 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1154
d_HasCCHotKeys'45'CertState_1132 ~v0
  = du_HasCCHotKeys'45'CertState_1132
du_HasCCHotKeys'45'CertState_1132 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1154
du_HasCCHotKeys'45'CertState_1132
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCCHotKeys'45'CertState_1534
-- Ledger.Conway.Specification.Certs._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_1134 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1154
d_HasCCHotKeys'45'GState_1134 ~v0 = du_HasCCHotKeys'45'GState_1134
du_HasCCHotKeys'45'GState_1134 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1154
du_HasCCHotKeys'45'GState_1134
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCCHotKeys'45'GState_1522
-- Ledger.Conway.Specification.Certs._.HasCast-CertEnv
d_HasCast'45'CertEnv_1136 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1136 ~v0 = du_HasCast'45'CertEnv_1136
du_HasCast'45'CertEnv_1136 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1136
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'CertEnv_1550
-- Ledger.Conway.Specification.Certs._.HasCast-CertState
d_HasCast'45'CertState_1138 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_1138 ~v0 = du_HasCast'45'CertState_1138
du_HasCast'45'CertState_1138 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_1138
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'CertState_1558
-- Ledger.Conway.Specification.Certs._.HasCast-DState
d_HasCast'45'DState_1140 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_1140 ~v0 = du_HasCast'45'DState_1140
du_HasCast'45'DState_1140 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_1140
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'DState_1552
-- Ledger.Conway.Specification.Certs._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_1142 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_1142 ~v0 = du_HasCast'45'DelegEnv_1142
du_HasCast'45'DelegEnv_1142 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_1142
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'DelegEnv_1560
-- Ledger.Conway.Specification.Certs._.HasCast-GState
d_HasCast'45'GState_1144 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_1144 ~v0 = du_HasCast'45'GState_1144
du_HasCast'45'GState_1144 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_1144
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'GState_1556
-- Ledger.Conway.Specification.Certs._.HasCast-PState
d_HasCast'45'PState_1146 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_1146 ~v0 = du_HasCast'45'PState_1146
du_HasCast'45'PState_1146 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_1146
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'PState_1554
-- Ledger.Conway.Specification.Certs._.HasCertState
d_HasCertState_1148 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasCoin-CertState
d_HasCoin'45'CertState_1152 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_1152 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_HasCoin'45'CertState_1548
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasDReps
d_HasDReps_1154 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasDReps-CertState
d_HasDReps'45'CertState_1158 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDReps_1170
d_HasDReps'45'CertState_1158 ~v0 = du_HasDReps'45'CertState_1158
du_HasDReps'45'CertState_1158 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDReps_1170
du_HasDReps'45'CertState_1158
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDReps'45'CertState_1532
-- Ledger.Conway.Specification.Certs._.HasDReps-GState
d_HasDReps'45'GState_1160 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDReps_1170
d_HasDReps'45'GState_1160 ~v0 = du_HasDReps'45'GState_1160
du_HasDReps'45'GState_1160 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDReps_1170
du_HasDReps'45'GState_1160
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDReps'45'GState_1520
-- Ledger.Conway.Specification.Certs._.HasDState
d_HasDState_1162 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasDState-CertState
d_HasDState'45'CertState_1166 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1430
d_HasDState'45'CertState_1166 ~v0 = du_HasDState'45'CertState_1166
du_HasDState'45'CertState_1166 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1430
du_HasDState'45'CertState_1166
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDState'45'CertState_1524
-- Ledger.Conway.Specification.Certs._.HasDeposits
d_HasDeposits_1168 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasGState
d_HasGState_1172 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasGState-CertState
d_HasGState'45'CertState_1176 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1470
d_HasGState'45'CertState_1176 ~v0 = du_HasGState'45'CertState_1176
du_HasGState'45'CertState_1176 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1470
du_HasGState'45'CertState_1176
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasGState'45'CertState_1528
-- Ledger.Conway.Specification.Certs._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_1178 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424
d_HasPParams'45'CertEnv_1178 ~v0 = du_HasPParams'45'CertEnv_1178
du_HasPParams'45'CertEnv_1178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424
du_HasPParams'45'CertEnv_1178
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPParams'45'CertEnv_1506
-- Ledger.Conway.Specification.Certs._.HasPState
d_HasPState_1180 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasPState-CertState
d_HasPState'45'CertState_1184 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1450
d_HasPState'45'CertState_1184 ~v0 = du_HasPState'45'CertState_1184
du_HasPState'45'CertState_1184 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1450
du_HasPState'45'CertState_1184
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPState'45'CertState_1526
-- Ledger.Conway.Specification.Certs._.HasPools
d_HasPools_1186 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasPools-CertState
d_HasPools'45'CertState_1190 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186
d_HasPools'45'CertState_1190 ~v0 = du_HasPools'45'CertState_1190
du_HasPools'45'CertState_1190 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186
du_HasPools'45'CertState_1190
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPools'45'CertState_1536
-- Ledger.Conway.Specification.Certs._.HasPools-PState
d_HasPools'45'PState_1192 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186
d_HasPools'45'PState_1192 ~v0 = du_HasPools'45'PState_1192
du_HasPools'45'PState_1192 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186
du_HasPools'45'PState_1192
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPools'45'PState_1516
-- Ledger.Conway.Specification.Certs._.HasRetiring
d_HasRetiring_1194 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasRetiring-PState
d_HasRetiring'45'PState_1198 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRetiring_1202
d_HasRetiring'45'PState_1198 ~v0 = du_HasRetiring'45'PState_1198
du_HasRetiring'45'PState_1198 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRetiring_1202
du_HasRetiring'45'PState_1198
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasRetiring'45'PState_1518
-- Ledger.Conway.Specification.Certs._.HasRewards
d_HasRewards_1200 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasRewards-CertState
d_HasRewards'45'CertState_1204 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1218
d_HasRewards'45'CertState_1204 ~v0
  = du_HasRewards'45'CertState_1204
du_HasRewards'45'CertState_1204 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1218
du_HasRewards'45'CertState_1204
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasRewards'45'CertState_1530
-- Ledger.Conway.Specification.Certs._.HasRewards-DState
d_HasRewards'45'DState_1206 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1218
d_HasRewards'45'DState_1206 ~v0 = du_HasRewards'45'DState_1206
du_HasRewards'45'DState_1206 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1218
du_HasRewards'45'DState_1206
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasRewards'45'DState_1514
-- Ledger.Conway.Specification.Certs._.HasStake
d_HasStake_1208 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasStakeDelegs
d_HasStakeDelegs_1212 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Certs._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_1216 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1250
d_HasStakeDelegs'45'CertState_1216 ~v0
  = du_HasStakeDelegs'45'CertState_1216
du_HasStakeDelegs'45'CertState_1216 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1250
du_HasStakeDelegs'45'CertState_1216
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasStakeDelegs'45'CertState_1540
-- Ledger.Conway.Specification.Certs._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_1218 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1250
d_HasStakeDelegs'45'DState_1218 ~v0
  = du_HasStakeDelegs'45'DState_1218
du_HasStakeDelegs'45'DState_1218 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1250
du_HasStakeDelegs'45'DState_1218
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasStakeDelegs'45'DState_1512
-- Ledger.Conway.Specification.Certs._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_1220 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
d_HasVoteDelegs'45'CertState_1220 ~v0
  = du_HasVoteDelegs'45'CertState_1220
du_HasVoteDelegs'45'CertState_1220 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
du_HasVoteDelegs'45'CertState_1220
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasVoteDelegs'45'CertState_1538
-- Ledger.Conway.Specification.Certs._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_1222 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
d_HasVoteDelegs'45'DState_1222 ~v0
  = du_HasVoteDelegs'45'DState_1222
du_HasVoteDelegs'45'DState_1222 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
du_HasVoteDelegs'45'DState_1222
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasVoteDelegs'45'DState_1510
-- Ledger.Conway.Specification.Certs._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_1224 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'CertEnv_1224 ~v0
  = du_HasWithdrawals'45'CertEnv_1224
du_HasWithdrawals'45'CertEnv_1224 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
du_HasWithdrawals'45'CertEnv_1224
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasWithdrawals'45'CertEnv_1508
-- Ledger.Conway.Specification.Certs._.PState
d_PState_1226 a0 = ()
-- Ledger.Conway.Specification.Certs._.PStateOf
d_PStateOf_1230 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1450 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366
d_PStateOf_1230 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PStateOf_1458
      (coe v0)
-- Ledger.Conway.Specification.Certs._.PoolEnv
d_PoolEnv_1234 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_PoolEnv_1234 = erased
-- Ledger.Conway.Specification.Certs._.Pools
d_Pools_1236 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Pools_1236 = erased
-- Ledger.Conway.Specification.Certs._.PoolsOf
d_PoolsOf_1238 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1238 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PoolsOf_1194
      (coe v0)
-- Ledger.Conway.Specification.Certs._.Retiring
d_Retiring_1240 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Retiring_1240 = erased
-- Ledger.Conway.Specification.Certs._.RetiringOf
d_RetiringOf_1242 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRetiring_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1242 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_RetiringOf_1210
      (coe v0)
-- Ledger.Conway.Specification.Certs._.Rewards
d_Rewards_1244 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Rewards_1244 = erased
-- Ledger.Conway.Specification.Certs._.RewardsOf
d_RewardsOf_1246 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1218 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1246 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_RewardsOf_1226
      (coe v0)
-- Ledger.Conway.Specification.Certs._.Stake
d_Stake_1248 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Stake_1248 = erased
-- Ledger.Conway.Specification.Certs._.StakeDelegs
d_StakeDelegs_1250 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_StakeDelegs_1250 = erased
-- Ledger.Conway.Specification.Certs._.StakeDelegsOf
d_StakeDelegsOf_1252 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1250 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1252 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_StakeDelegsOf_1258
      (coe v0)
-- Ledger.Conway.Specification.Certs._.StakeOf
d_StakeOf_1254 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStake_1234 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1254 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_StakeOf_1242
      (coe v0)
-- Ledger.Conway.Specification.Certs._.StakePoolParams
d_StakePoolParams_1256 a0 = ()
-- Ledger.Conway.Specification.Certs._.cwitness
d_cwitness_1262 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_1262 ~v0 = du_cwitness_1262
du_cwitness_1262 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_1262
  = coe MAlonzo.Code.Ledger.Core.Specification.Certs.du_cwitness_1308
-- Ledger.Conway.Specification.Certs._.rewardsBalance
d_rewardsBalance_1278 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1350 ->
  Integer
d_rewardsBalance_1278 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_rewardsBalance_1542
      (coe v0)
-- Ledger.Conway.Specification.Certs._.CertEnv.coldCreds
d_coldCreds_1288 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1326 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_1288 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_coldCreds_1346
      (coe v0)
-- Ledger.Conway.Specification.Certs._.CertEnv.epoch
d_epoch_1290 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1326 ->
  AgdaAny
d_epoch_1290 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_epoch_1338 (coe v0)
-- Ledger.Conway.Specification.Certs._.CertEnv.pp
d_pp_1292 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pp_1292 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pp_1340 (coe v0)
-- Ledger.Conway.Specification.Certs._.CertEnv.votes
d_votes_1294 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1326 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
d_votes_1294 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_votes_1342 (coe v0)
-- Ledger.Conway.Specification.Certs._.CertEnv.wdrls
d_wdrls_1296 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1296 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_wdrls_1344 (coe v0)
-- Ledger.Conway.Specification.Certs._.CertState.dState
d_dState_1300 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1350
d_dState_1300 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_dState_1402 (coe v0)
-- Ledger.Conway.Specification.Certs._.CertState.gState
d_gState_1302 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1382
d_gState_1302 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_gState_1406 (coe v0)
-- Ledger.Conway.Specification.Certs._.CertState.pState
d_pState_1304 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366
d_pState_1304 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pState_1404 (coe v0)
-- Ledger.Conway.Specification.Certs._.DState.rewards
d_rewards_1326 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1326 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_rewards_1362
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DState.stakeDelegs
d_stakeDelegs_1328 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1328 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_stakeDelegs_1360
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DState.voteDelegs
d_voteDelegs_1330 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1330 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_voteDelegs_1358
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DelegEnv.delegatees
d_delegatees_1334 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DelegEnv_1410 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1334 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_delegatees_1422
      (coe v0)
-- Ledger.Conway.Specification.Certs._.DelegEnv.pools
d_pools_1336 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DelegEnv_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1336 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pools_1420 (coe v0)
-- Ledger.Conway.Specification.Certs._.DelegEnv.pparams
d_pparams_1338 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DelegEnv_1410 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_1338 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pparams_1418
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GState.ccHotKeys
d_ccHotKeys_1352 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1352 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_ccHotKeys_1390
      (coe v0)
-- Ledger.Conway.Specification.Certs._.GState.dreps
d_dreps_1354 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1354 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_dreps_1388 (coe v0)
-- Ledger.Conway.Specification.Certs._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1358 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1358 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CCHotKeysOf_1162
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasCertState.CertStateOf
d_CertStateOf_1362 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCertState_1490 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394
d_CertStateOf_1362 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CertStateOf_1498
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasDReps.DRepsOf
d_DRepsOf_1366 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDReps_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1366 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DRepsOf_1178
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasDState.DStateOf
d_DStateOf_1370 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1350
d_DStateOf_1370 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DStateOf_1438
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasDeposits.DepositsOf
d_DepositsOf_1374 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1374 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DepositsOf_1124
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasGState.GStateOf
d_GStateOf_1378 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1470 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1382
d_GStateOf_1378 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_GStateOf_1478
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasPState.PStateOf
d_PStateOf_1382 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1450 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366
d_PStateOf_1382 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PStateOf_1458
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasPools.PoolsOf
d_PoolsOf_1386 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1386 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PoolsOf_1194
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasRetiring.RetiringOf
d_RetiringOf_1390 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRetiring_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1390 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_RetiringOf_1210
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasRewards.RewardsOf
d_RewardsOf_1394 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1218 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1394 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_RewardsOf_1226
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasStake.StakeOf
d_StakeOf_1398 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStake_1234 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1398 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_StakeOf_1242
      (coe v0)
-- Ledger.Conway.Specification.Certs._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1402 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasStakeDelegs_1250 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1402 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_StakeDelegsOf_1258
      (coe v0)
-- Ledger.Conway.Specification.Certs._.PState.fPools
d_fPools_1406 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_1406 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_fPools_1376 (coe v0)
-- Ledger.Conway.Specification.Certs._.PState.pools
d_pools_1408 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1408 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pools_1374 (coe v0)
-- Ledger.Conway.Specification.Certs._.PState.retiring
d_retiring_1410 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1410 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_retiring_1378
      (coe v0)
-- Ledger.Conway.Specification.Certs._.StakePoolParams.cost
d_cost_1414 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1076 ->
  Integer
d_cost_1414 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_cost_1090 (coe v0)
-- Ledger.Conway.Specification.Certs._.StakePoolParams.margin
d_margin_1416 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_1416 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_margin_1092 (coe v0)
-- Ledger.Conway.Specification.Certs._.StakePoolParams.owners
d_owners_1418 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1076 ->
  [AgdaAny]
d_owners_1418 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_owners_1088 (coe v0)
-- Ledger.Conway.Specification.Certs._.StakePoolParams.pledge
d_pledge_1420 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1076 ->
  Integer
d_pledge_1420 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pledge_1094 (coe v0)
-- Ledger.Conway.Specification.Certs._.StakePoolParams.rewardAccount
d_rewardAccount_1422 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_1422 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_rewardAccount_1096
      (coe v0)
-- Ledger.Conway.Specification.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1494 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1494
  = C_DELEG'45'delegate_1496 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1498 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_DELEG'45'reg_1500 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Certs.isPoolRegistered
d_isPoolRegistered_1502 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Certs.T_StakePoolParams_1076
d_isPoolRegistered_1502 v0 v1 v2
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
                     MAlonzo.Code.Ledger.Core.Specification.Gov.Base.d_cryptoStructure_602
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
d__'8866'_'8640''10631'_'44'POOL'10632'__1508 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__1508
  = C_POOL'45'regpool_1512 | C_POOL'45'retirepool_1514
-- Ledger.Conway.Specification.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1516 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1516
  = C_GOVCERT'45'regdrep_1518 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1520 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1522 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1524 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1524
  = C_CERT'45'deleg_1526 T__'8866'_'8640''10631'_'44'DELEG'10632'__1494 |
    C_CERT'45'pool_1528 T__'8866'_'8640''10631'_'44'POOL'10632'__1508 |
    C_CERT'45'vdel_1530 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1516
-- Ledger.Conway.Specification.Certs._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__1532 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__1532
  = C_CERT'45'pre_1540 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Certs._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__1542 a0 a1 a2 a3
                                                      a4
  = ()
data T__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__1542
  = C_CERT'45'post_1546
-- Ledger.Conway.Specification.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1548 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290] ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1548 = erased
