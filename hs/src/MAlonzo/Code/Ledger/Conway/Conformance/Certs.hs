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
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_40 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_70 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
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
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_122 = erased
-- _.THash
d_THash_176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_176 = erased
-- _.PParams
d_PParams_208 a0 = ()
-- _.Withdrawals
d_Withdrawals_330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_330 = erased
-- _.addEpoch
d_addEpoch_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_334 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_644
         (coe v0))
-- _.isKeyHash
d_isKeyHash_364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_364 = erased
-- _.PParams.Emax
d_Emax_558 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_Emax_558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_388
      (coe v0)
-- _.PParams.a
d_a_560 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_a_560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_360 (coe v0)
-- _.PParams.a0
d_a0_562 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_392 (coe v0)
-- _.PParams.b
d_b_564 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_b_564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_362 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_ccMaxTermLength_566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_404
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_ccMinSize_568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_402
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_coinsPerUTxOByte_570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_372
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_collateralPercentage_572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_394
      (coe v0)
-- _.PParams.costmdls
d_costmdls_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_costmdls_574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_396
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_drepActivity_576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_412
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_drepDeposit_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_410
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204
d_drepThresholds_580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_govActionDeposit_582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_408
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_govActionLifetime_584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_406
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_keyDeposit_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_maxBlockExUnits_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_352
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxBlockSize_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_344
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxCollateralInputs_592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_356
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxHeaderSize_594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_348
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxRefScriptSizePerBlock_596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_380
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxRefScriptSizePerTx_598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_378
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_maxTxExUnits_600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_350
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxTxSize_602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_346
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxValSize_604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_354
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_376
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_minUTxOValue_608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_386
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_368
      (coe v0)
-- _.PParams.nopt
d_nopt_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_nopt_612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_390
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_poolDeposit_614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_616 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_248
d_poolThresholds_616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_398
      (coe v0)
-- _.PParams.prices
d_prices_618 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_prices_618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_374
      (coe v0)
-- _.PParams.pv
d_pv_620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_358 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_384
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_624 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_382
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_626 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_370
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.Anchor
d_Anchor_780 a0 = ()
-- Ledger.Conway.Conformance.Certs._.DecEq-VDeleg
d_DecEq'45'VDeleg_796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote
d_GovVote_826 a0 = ()
-- Ledger.Conway.Conformance.Certs._.VDeleg
d_VDeleg_914 a0 = ()
-- Ledger.Conway.Conformance.Certs._.VoteDelegs
d_VoteDelegs_918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_918 = erased
-- Ledger.Conway.Conformance.Certs._.isGovVoterDRep
d_isGovVoterDRep_932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_790 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_932 ~v0 = du_isGovVoterDRep_932
du_isGovVoterDRep_932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_790 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_932
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1210
-- Ledger.Conway.Conformance.Certs._.Anchor.hash
d_hash_952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814 ->
  AgdaAny
d_hash_952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_822
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.Anchor.url
d_url_954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_820
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.anchor
d_anchor_1014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814
d_anchor_1014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_952
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.gid
d_gid_1016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_946
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.vote
d_vote_1018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_928
d_vote_1018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_950
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.voter
d_voter_1020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_790
d_voter_1020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_948
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1080 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1082 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1084 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1086 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__1088 a0 a1 a2 a3
                                                      a4
  = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__1090 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Certs.CCHotKeys
d_CCHotKeys_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_CCHotKeys_1092 = erased
-- Ledger.Conway.Conformance.Certs.Certs.CCHotKeysOf
d_CCHotKeysOf_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1150 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1158
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv
d_CertEnv_1106 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CertState
d_CertState_1110 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CertStateOf
d_CertStateOf_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1486 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390
d_CertStateOf_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1494
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DCert
d_DCert_1118 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DReps
d_DReps_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_1128 = erased
-- Ledger.Conway.Conformance.Certs.Certs.DRepsOf
d_DRepsOf_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1166 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1174
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DStateOf
d_DStateOf_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1426 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1346
d_DStateOf_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1434
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1128
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv
d_DelegEnv_1140 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DepositPurpose
d_DepositPurpose_1144 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.Deposits
d_Deposits_1146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Deposits_1146 = erased
-- Ledger.Conway.Conformance.Certs.Certs.DepositsOf
d_DepositsOf_1148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1112 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1120
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.GState
d_GState_1156 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.GStateOf
d_GStateOf_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1466 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1378
d_GStateOf_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1474
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasCCHotKeys
d_HasCCHotKeys_1164 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1150
d_HasCCHotKeys'45'CertState_1168 ~v0
  = du_HasCCHotKeys'45'CertState_1168
du_HasCCHotKeys'45'CertState_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1150
du_HasCCHotKeys'45'CertState_1168
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1530
-- Ledger.Conway.Conformance.Certs.Certs.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_1170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1150
d_HasCCHotKeys'45'GState_1170 ~v0 = du_HasCCHotKeys'45'GState_1170
du_HasCCHotKeys'45'GState_1170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1150
du_HasCCHotKeys'45'GState_1170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1518
-- Ledger.Conway.Conformance.Certs.Certs.HasCast-CertEnv
d_HasCast'45'CertEnv_1172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1172 ~v0 = du_HasCast'45'CertEnv_1172
du_HasCast'45'CertEnv_1172 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1546
-- Ledger.Conway.Conformance.Certs.Certs.HasCast-DelegEnv
d_HasCast'45'DelegEnv_1178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_1178 ~v0 = du_HasCast'45'DelegEnv_1178
du_HasCast'45'DelegEnv_1178 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_1178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1556
-- Ledger.Conway.Conformance.Certs.Certs.HasCast-PState
d_HasCast'45'PState_1182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_1182 ~v0 = du_HasCast'45'PState_1182
du_HasCast'45'PState_1182 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_1182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1550
-- Ledger.Conway.Conformance.Certs.Certs.HasCertState
d_HasCertState_1184 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasCoin-CertState
d_HasCoin'45'CertState_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1544
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasDReps
d_HasDReps_1190 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasDReps-CertState
d_HasDReps'45'CertState_1194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1166
d_HasDReps'45'CertState_1194 ~v0 = du_HasDReps'45'CertState_1194
du_HasDReps'45'CertState_1194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1166
du_HasDReps'45'CertState_1194
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1528
-- Ledger.Conway.Conformance.Certs.Certs.HasDReps-GState
d_HasDReps'45'GState_1196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1166
d_HasDReps'45'GState_1196 ~v0 = du_HasDReps'45'GState_1196
du_HasDReps'45'GState_1196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1166
du_HasDReps'45'GState_1196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1516
-- Ledger.Conway.Conformance.Certs.Certs.HasDState
d_HasDState_1198 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasDState-CertState
d_HasDState'45'CertState_1202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1426
d_HasDState'45'CertState_1202 ~v0 = du_HasDState'45'CertState_1202
du_HasDState'45'CertState_1202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1426
du_HasDState'45'CertState_1202
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1520
-- Ledger.Conway.Conformance.Certs.Certs.HasDeposits
d_HasDeposits_1204 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasGState
d_HasGState_1208 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasGState-CertState
d_HasGState'45'CertState_1212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1466
d_HasGState'45'CertState_1212 ~v0 = du_HasGState'45'CertState_1212
du_HasGState'45'CertState_1212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1466
du_HasGState'45'CertState_1212
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1524
-- Ledger.Conway.Conformance.Certs.Certs.HasPParams-CertEnv
d_HasPParams'45'CertEnv_1214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420
d_HasPParams'45'CertEnv_1214 ~v0 = du_HasPParams'45'CertEnv_1214
du_HasPParams'45'CertEnv_1214 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420
du_HasPParams'45'CertEnv_1214
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1502
-- Ledger.Conway.Conformance.Certs.Certs.HasPState
d_HasPState_1216 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasPState-CertState
d_HasPState'45'CertState_1220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1446
d_HasPState'45'CertState_1220 ~v0 = du_HasPState'45'CertState_1220
du_HasPState'45'CertState_1220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1446
du_HasPState'45'CertState_1220
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1522
-- Ledger.Conway.Conformance.Certs.Certs.HasPools
d_HasPools_1222 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasPools-CertState
d_HasPools'45'CertState_1226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182
d_HasPools'45'CertState_1226 ~v0 = du_HasPools'45'CertState_1226
du_HasPools'45'CertState_1226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182
du_HasPools'45'CertState_1226
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1532
-- Ledger.Conway.Conformance.Certs.Certs.HasPools-PState
d_HasPools'45'PState_1228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182
d_HasPools'45'PState_1228 ~v0 = du_HasPools'45'PState_1228
du_HasPools'45'PState_1228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182
du_HasPools'45'PState_1228
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1512
-- Ledger.Conway.Conformance.Certs.Certs.HasRetiring
d_HasRetiring_1230 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasRetiring-PState
d_HasRetiring'45'PState_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1198
d_HasRetiring'45'PState_1234 ~v0 = du_HasRetiring'45'PState_1234
du_HasRetiring'45'PState_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1198
du_HasRetiring'45'PState_1234
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1514
-- Ledger.Conway.Conformance.Certs.Certs.HasRewards
d_HasRewards_1236 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasRewards-CertState
d_HasRewards'45'CertState_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1214
d_HasRewards'45'CertState_1240 ~v0
  = du_HasRewards'45'CertState_1240
du_HasRewards'45'CertState_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1214
du_HasRewards'45'CertState_1240
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1526
-- Ledger.Conway.Conformance.Certs.Certs.HasRewards-DState
d_HasRewards'45'DState_1242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1214
d_HasRewards'45'DState_1242 ~v0 = du_HasRewards'45'DState_1242
du_HasRewards'45'DState_1242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1214
du_HasRewards'45'DState_1242
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1510
-- Ledger.Conway.Conformance.Certs.Certs.HasStake
d_HasStake_1244 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasStakeDelegs
d_HasStakeDelegs_1248 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1246
d_HasStakeDelegs'45'CertState_1252 ~v0
  = du_HasStakeDelegs'45'CertState_1252
du_HasStakeDelegs'45'CertState_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1246
du_HasStakeDelegs'45'CertState_1252
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1536
-- Ledger.Conway.Conformance.Certs.Certs.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1246
d_HasStakeDelegs'45'DState_1254 ~v0
  = du_HasStakeDelegs'45'DState_1254
du_HasStakeDelegs'45'DState_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1246
du_HasStakeDelegs'45'DState_1254
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1508
-- Ledger.Conway.Conformance.Certs.Certs.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_846
d_HasVoteDelegs'45'CertState_1256 ~v0
  = du_HasVoteDelegs'45'CertState_1256
du_HasVoteDelegs'45'CertState_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_846
du_HasVoteDelegs'45'CertState_1256
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1534
-- Ledger.Conway.Conformance.Certs.Certs.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_846
d_HasVoteDelegs'45'DState_1258 ~v0
  = du_HasVoteDelegs'45'DState_1258
du_HasVoteDelegs'45'DState_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_846
du_HasVoteDelegs'45'DState_1258
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1506
-- Ledger.Conway.Conformance.Certs.Certs.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'CertEnv_1260 ~v0
  = du_HasWithdrawals'45'CertEnv_1260
du_HasWithdrawals'45'CertEnv_1260 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
du_HasWithdrawals'45'CertEnv_1260
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1504
-- Ledger.Conway.Conformance.Certs.Certs.PState
d_PState_1266 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.PStateOf
d_PStateOf_1270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1446 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1362
d_PStateOf_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1454
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PoolEnv
d_PoolEnv_1274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_PoolEnv_1274 = erased
-- Ledger.Conway.Conformance.Certs.Certs.Pools
d_Pools_1276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Pools_1276 = erased
-- Ledger.Conway.Conformance.Certs.Certs.PoolsOf
d_PoolsOf_1278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1190
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.Retiring
d_Retiring_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Retiring_1280 = erased
-- Ledger.Conway.Conformance.Certs.Certs.RetiringOf
d_RetiringOf_1282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1206
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.Rewards
d_Rewards_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Rewards_1284 = erased
-- Ledger.Conway.Conformance.Certs.Certs.RewardsOf
d_RewardsOf_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1214 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1222
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.Stake
d_Stake_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Stake_1288 = erased
-- Ledger.Conway.Conformance.Certs.Certs.StakeDelegs
d_StakeDelegs_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_StakeDelegs_1290 = erased
-- Ledger.Conway.Conformance.Certs.Certs.StakeDelegsOf
d_StakeDelegsOf_1292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1254
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakeOf
d_StakeOf_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1238
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams
d_StakePoolParams_1296 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.cwitness
d_cwitness_1302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1286 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_1302 ~v0 = du_cwitness_1302
du_cwitness_1302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1286 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_1302
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1304
-- Ledger.Conway.Conformance.Certs.Certs.isPoolRegistered
d_isPoolRegistered_1310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1072
d_isPoolRegistered_1310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1636
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.rewardsBalance
d_rewardsBalance_1320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1346 ->
  Integer
d_rewardsBalance_1320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1538
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.coldCreds
d_coldCreds_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1322 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1342
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.epoch
d_epoch_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1322 ->
  AgdaAny
d_epoch_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1334
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.pp
d_pp_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1322 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pp_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1336 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.votes
d_votes_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1322 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
d_votes_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1338
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.wdrls
d_wdrls_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1340
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.dState
d_dState_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1346
d_dState_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.gState
d_gState_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1378
d_gState_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.pState
d_pState_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1362
d_pState_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.delegatees
d_delegatees_1414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1406 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1418
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.pools
d_pools_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1416
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.pparams
d_pparams_1418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_1418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1414
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.GState.ccHotKeys
d_ccHotKeys_1432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1386
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.GState.dreps
d_dreps_1434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1384
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1150 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1158
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasCertState.CertStateOf
d_CertStateOf_1442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1486 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390
d_CertStateOf_1442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1494
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasDReps.DRepsOf
d_DRepsOf_1446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1166 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1174
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasDState.DStateOf
d_DStateOf_1450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1426 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1346
d_DStateOf_1450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1434
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasDeposits.DepositsOf
d_DepositsOf_1454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1112 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1120
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasGState.GStateOf
d_GStateOf_1458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1466 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1378
d_GStateOf_1458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1474
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasPState.PStateOf
d_PStateOf_1462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1446 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1362
d_PStateOf_1462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1454
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasPools.PoolsOf
d_PoolsOf_1466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1190
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasRetiring.RetiringOf
d_RetiringOf_1470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1206
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasRewards.RewardsOf
d_RewardsOf_1474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1214 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1222
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasStake.StakeOf
d_StakeOf_1478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1238
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1254
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState.fPools
d_fPools_1486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1362 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_1486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1372
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState.pools
d_pools_1488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1362 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1370
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState.retiring
d_retiring_1490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1362 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1374
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.cost
d_cost_1494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1072 ->
  Integer
d_cost_1494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1086 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.margin
d_margin_1496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1072 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_1496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1088
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.owners
d_owners_1498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1072 ->
  [AgdaAny]
d_owners_1498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1084
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.pledge
d_pledge_1500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1072 ->
  Integer
d_pledge_1500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1090
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.rewardAccount
d_rewardAccount_1502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1072 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_1502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1092
      (coe v0)
-- Ledger.Conway.Conformance.Certs.DState
d_DState_1504 a0 = ()
data T_DState_1504
  = C_'10214'_'44'_'44'_'44'_'10215''7496'_1522 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.DState.voteDelegs
d_voteDelegs_1514 ::
  T_DState_1504 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1514 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1522 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.stakeDelegs
d_stakeDelegs_1516 ::
  T_DState_1504 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1516 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1522 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.rewards
d_rewards_1518 ::
  T_DState_1504 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1518 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1522 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.deposits
d_deposits_1520 ::
  T_DState_1504 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1520 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1522 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState
d_GState_1524 a0 = ()
data T_GState_1524
  = C_'10214'_'44'_'44'_'10215''7515'_1538 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.GState.dreps
d_dreps_1532 ::
  T_GState_1524 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1532 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1538 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState.ccHotKeys
d_ccHotKeys_1534 ::
  T_GState_1524 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1534 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1538 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState.deposits
d_deposits_1536 ::
  T_GState_1524 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1536 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1538 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState
d_CertState_1540 a0 = ()
data T_CertState_1540
  = C_'10214'_'44'_'44'_'10215''7580''738'_1554 T_DState_1504
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1362
                                                T_GState_1524
-- Ledger.Conway.Conformance.Certs.CertState.dState
d_dState_1548 :: T_CertState_1540 -> T_DState_1504
d_dState_1548 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1554 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState.pState
d_pState_1550 ::
  T_CertState_1540 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1362
d_pState_1550 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1554 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState.gState
d_gState_1552 :: T_CertState_1540 -> T_GState_1524
d_gState_1552 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1554 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.HasCast-DState
d_HasCast'45'DState_1556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_1556 ~v0 = du_HasCast'45'DState_1556
du_HasCast'45'DState_1556 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_1556
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1504 :: Integer) (9415815257714143971 :: Integer)
                                 "Ledger.Conway.Conformance.Certs.DState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (918 :: Integer) (9415815257714143971 :: Integer)
                                 "Ledger.Conway.Conformance.Certs._.VoteDelegs"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (1504 :: Integer) (9415815257714143971 :: Integer)
                                    "Ledger.Conway.Conformance.Certs.DState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (180 :: Integer) (9254951203007797098 :: Integer)
                                    "abstract-set-theory.FiniteSetTheory._.Map"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.RightAssoc
                                       (MAlonzo.RTE.Related (1.0 :: Double)))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (40 :: Integer) (9415815257714143971 :: Integer)
                                             "_.Credential"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (292 :: Integer)
                                                      (753823221557309123 :: Integer)
                                                      "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                         (coe
                                                            (MAlonzo.RTE.QName
                                                               (1170 :: Integer)
                                                               (7805089389717466778 :: Integer)
                                                               "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
                                                               (MAlonzo.RTE.Fixity
                                                                  MAlonzo.RTE.NonAssoc
                                                                  MAlonzo.RTE.Unrelated)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                  (coe (1 :: Integer))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (26 :: Integer)
                                                         (14321319370142338143 :: Integer)
                                                         "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                               (coe
                                                                  (MAlonzo.RTE.QName
                                                                     (206 :: Integer)
                                                                     (14321319370142338143 ::
                                                                        Integer)
                                                                     "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
                                                                     (MAlonzo.RTE.Fixity
                                                                        MAlonzo.RTE.NonAssoc
                                                                        MAlonzo.RTE.Unrelated)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                        (coe
                                                                           (MAlonzo.RTE.QName
                                                                              (598 :: Integer)
                                                                              (7805089389717466778 ::
                                                                                 Integer)
                                                                              "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                              (MAlonzo.RTE.Fixity
                                                                                 MAlonzo.RTE.NonAssoc
                                                                                 MAlonzo.RTE.Unrelated)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                 (coe
                                                                                    (1 :: Integer))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                      (coe
                                                         (MAlonzo.RTE.QName
                                                            (210 :: Integer)
                                                            (14321319370142338143 :: Integer)
                                                            "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                               (coe
                                                                  (MAlonzo.RTE.QName
                                                                     (598 :: Integer)
                                                                     (7805089389717466778 ::
                                                                        Integer)
                                                                     "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                     (MAlonzo.RTE.Fixity
                                                                        MAlonzo.RTE.NonAssoc
                                                                        MAlonzo.RTE.Unrelated)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                        (coe (1 :: Integer))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (176 :: Integer) (9415815257714143971 :: Integer)
                                                "_.THash"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1504 :: Integer) (9415815257714143971 :: Integer)
                                       "Ledger.Conway.Conformance.Certs.DState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1284 :: Integer) (9415815257714143971 :: Integer)
                                       "Ledger.Conway.Conformance.Certs.Certs.Rewards"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (1504 :: Integer) (9415815257714143971 :: Integer)
                                          "Ledger.Conway.Conformance.Certs.DState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (1146 :: Integer) (9415815257714143971 :: Integer)
                                          "Ledger.Conway.Conformance.Certs.Certs.Deposits"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7496'_1522))
-- Ledger.Conway.Conformance.Certs.HasCast-GState
d_HasCast'45'GState_1558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_1558 ~v0 = du_HasCast'45'GState_1558
du_HasCast'45'GState_1558 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_1558
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1524 :: Integer) (9415815257714143971 :: Integer)
                                 "Ledger.Conway.Conformance.Certs.GState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (180 :: Integer) (9254951203007797098 :: Integer)
                                 "abstract-set-theory.FiniteSetTheory._.Map"
                                 (MAlonzo.RTE.Fixity
                                    MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (1.0 :: Double)))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (40 :: Integer) (9415815257714143971 :: Integer)
                                          "_.Credential"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (292 :: Integer) (753823221557309123 :: Integer)
                                                   "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                      (coe
                                                         (MAlonzo.RTE.QName
                                                            (1170 :: Integer)
                                                            (7805089389717466778 :: Integer)
                                                            "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                               (coe (1 :: Integer))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (26 :: Integer)
                                                      (14321319370142338143 :: Integer)
                                                      "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                            (coe
                                                               (MAlonzo.RTE.QName
                                                                  (206 :: Integer)
                                                                  (14321319370142338143 :: Integer)
                                                                  "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
                                                                  (MAlonzo.RTE.Fixity
                                                                     MAlonzo.RTE.NonAssoc
                                                                     MAlonzo.RTE.Unrelated)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                     (coe
                                                                        (MAlonzo.RTE.QName
                                                                           (598 :: Integer)
                                                                           (7805089389717466778 ::
                                                                              Integer)
                                                                           "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                           (MAlonzo.RTE.Fixity
                                                                              MAlonzo.RTE.NonAssoc
                                                                              MAlonzo.RTE.Unrelated)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                              (coe (1 :: Integer))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (210 :: Integer)
                                                         (14321319370142338143 :: Integer)
                                                         "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                            (coe
                                                               (MAlonzo.RTE.QName
                                                                  (598 :: Integer)
                                                                  (7805089389717466778 :: Integer)
                                                                  "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                  (MAlonzo.RTE.Fixity
                                                                     MAlonzo.RTE.NonAssoc
                                                                     MAlonzo.RTE.Unrelated)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                     (coe (1 :: Integer))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (122 :: Integer) (9415815257714143971 :: Integer)
                                             "_.Epoch"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (1524 :: Integer) (9415815257714143971 :: Integer)
                                    "Ledger.Conway.Conformance.Certs.GState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (180 :: Integer) (9254951203007797098 :: Integer)
                                    "abstract-set-theory.FiniteSetTheory._.Map"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.RightAssoc
                                       (MAlonzo.RTE.Related (1.0 :: Double)))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (40 :: Integer) (9415815257714143971 :: Integer)
                                             "_.Credential"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (292 :: Integer)
                                                      (753823221557309123 :: Integer)
                                                      "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                         (coe
                                                            (MAlonzo.RTE.QName
                                                               (1170 :: Integer)
                                                               (7805089389717466778 :: Integer)
                                                               "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
                                                               (MAlonzo.RTE.Fixity
                                                                  MAlonzo.RTE.NonAssoc
                                                                  MAlonzo.RTE.Unrelated)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                  (coe (1 :: Integer))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (26 :: Integer)
                                                         (14321319370142338143 :: Integer)
                                                         "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                               (coe
                                                                  (MAlonzo.RTE.QName
                                                                     (206 :: Integer)
                                                                     (14321319370142338143 ::
                                                                        Integer)
                                                                     "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
                                                                     (MAlonzo.RTE.Fixity
                                                                        MAlonzo.RTE.NonAssoc
                                                                        MAlonzo.RTE.Unrelated)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                        (coe
                                                                           (MAlonzo.RTE.QName
                                                                              (598 :: Integer)
                                                                              (7805089389717466778 ::
                                                                                 Integer)
                                                                              "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                              (MAlonzo.RTE.Fixity
                                                                                 MAlonzo.RTE.NonAssoc
                                                                                 MAlonzo.RTE.Unrelated)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                 (coe
                                                                                    (1 :: Integer))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                      (coe
                                                         (MAlonzo.RTE.QName
                                                            (210 :: Integer)
                                                            (14321319370142338143 :: Integer)
                                                            "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                               (coe
                                                                  (MAlonzo.RTE.QName
                                                                     (598 :: Integer)
                                                                     (7805089389717466778 ::
                                                                        Integer)
                                                                     "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                     (MAlonzo.RTE.Fixity
                                                                        MAlonzo.RTE.NonAssoc
                                                                        MAlonzo.RTE.Unrelated)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                        (coe (1 :: Integer))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (10 :: Integer) (15412666033012224255 :: Integer)
                                                "Agda.Builtin.Maybe.Maybe"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (20 :: Integer)
                                                         (10880583612240331187 :: Integer)
                                                         "Agda.Primitive.lzero"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                      (coe
                                                         (MAlonzo.RTE.QName
                                                            (40 :: Integer)
                                                            (9415815257714143971 :: Integer)
                                                            "_.Credential"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                               (coe
                                                                  (MAlonzo.RTE.QName
                                                                     (292 :: Integer)
                                                                     (753823221557309123 :: Integer)
                                                                     "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
                                                                     (MAlonzo.RTE.Fixity
                                                                        MAlonzo.RTE.NonAssoc
                                                                        MAlonzo.RTE.Unrelated)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                        (coe
                                                                           (MAlonzo.RTE.QName
                                                                              (1170 :: Integer)
                                                                              (7805089389717466778 ::
                                                                                 Integer)
                                                                              "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
                                                                              (MAlonzo.RTE.Fixity
                                                                                 MAlonzo.RTE.NonAssoc
                                                                                 MAlonzo.RTE.Unrelated)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                 (coe
                                                                                    (1 :: Integer))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                  (coe
                                                                     (MAlonzo.RTE.QName
                                                                        (26 :: Integer)
                                                                        (14321319370142338143 ::
                                                                           Integer)
                                                                        "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
                                                                        (MAlonzo.RTE.Fixity
                                                                           MAlonzo.RTE.NonAssoc
                                                                           MAlonzo.RTE.Unrelated)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                              (coe
                                                                                 (MAlonzo.RTE.QName
                                                                                    (206 :: Integer)
                                                                                    (14321319370142338143 ::
                                                                                       Integer)
                                                                                    "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                       (coe
                                                                                          (MAlonzo.RTE.QName
                                                                                             (598 ::
                                                                                                Integer)
                                                                                             (7805089389717466778 ::
                                                                                                Integer)
                                                                                             "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                             (MAlonzo.RTE.Fixity
                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                (coe
                                                                                                   (1 ::
                                                                                                      Integer))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                     (coe
                                                                        (MAlonzo.RTE.QName
                                                                           (210 :: Integer)
                                                                           (14321319370142338143 ::
                                                                              Integer)
                                                                           "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
                                                                           (MAlonzo.RTE.Fixity
                                                                              MAlonzo.RTE.NonAssoc
                                                                              MAlonzo.RTE.Unrelated)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                              (coe
                                                                                 (MAlonzo.RTE.QName
                                                                                    (598 :: Integer)
                                                                                    (7805089389717466778 ::
                                                                                       Integer)
                                                                                    "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1524 :: Integer) (9415815257714143971 :: Integer)
                                       "Ledger.Conway.Conformance.Certs.GState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1146 :: Integer) (9415815257714143971 :: Integer)
                                       "Ledger.Conway.Conformance.Certs.Certs.Deposits"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''7515'_1538))
-- Ledger.Conway.Conformance.Certs.HasCast-CertState
d_HasCast'45'CertState_1560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_1560 ~v0 = du_HasCast'45'CertState_1560
du_HasCast'45'CertState_1560 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_1560
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1540 :: Integer) (9415815257714143971 :: Integer)
                                 "Ledger.Conway.Conformance.Certs.CertState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1504 :: Integer) (9415815257714143971 :: Integer)
                                 "Ledger.Conway.Conformance.Certs.DState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (1540 :: Integer) (9415815257714143971 :: Integer)
                                    "Ledger.Conway.Conformance.Certs.CertState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (1266 :: Integer) (9415815257714143971 :: Integer)
                                    "Ledger.Conway.Conformance.Certs.Certs.PState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1540 :: Integer) (9415815257714143971 :: Integer)
                                       "Ledger.Conway.Conformance.Certs.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1524 :: Integer) (9415815257714143971 :: Integer)
                                       "Ledger.Conway.Conformance.Certs.GState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''7580''738'_1554))
-- Ledger.Conway.Conformance.Certs.certDeposit
d_certDeposit_1562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1562 ~v0 v1 v2 = du_certDeposit_1562 v1 v2
du_certDeposit_1562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1562 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_588
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1288 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_834
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1098
                      (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1296 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_834
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1102
                      (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1302 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_834
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1098
                      (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                      (coe v1)))
         _ -> coe v2)
-- Ledger.Conway.Conformance.Certs.certRefund
d_certRefund_1578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1286 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1096]
d_certRefund_1578 ~v0 v1 = du_certRefund_1578 v1
du_certRefund_1578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1286 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1096]
du_certRefund_1578 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_444
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1290 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1098
                   (coe v2))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1298 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1102
                   (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Conformance.Certs.updateCertDeposit
d_updateCertDeposit_1584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_1584 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1288 v4 v5 v6 v7
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__546
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1128
                (coe v0))
             v3
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_834
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1098
                      (coe v4))
                   (coe v7)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1290 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1540
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1480
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
             (coe
                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                erased
                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1128
                   (coe v0)))
             (coe v3)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1098
                   (coe v4)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1292 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__546
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1128
                (coe v0))
             v3
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_834
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1100
                      (coe v4))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                      (coe v1))))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1294 v4 v5
        -> coe v3
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1296 v4 v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__546
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1128
                (coe v0))
             v3
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_834
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1102
                      (coe v4))
                   (coe v5)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1298 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1540
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1480
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
             (coe
                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                erased
                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1128
                   (coe v0)))
             (coe v3)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1102
                   (coe v4)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1300 v4 v5
        -> coe v3
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1302 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__546
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1128
                (coe v0))
             v3
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_834
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1098
                      (coe v4))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                      (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1706 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1706
  = C_DELEG'45'delegate_1780 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1782 Integer
                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'reg_1856 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._.keyDeposit
d_keyDeposit_1738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GeneralizeTel_20787 -> Integer
d_keyDeposit_1738 ~v0 v1 = du_keyDeposit_1738 v1
du_keyDeposit_1738 :: T_GeneralizeTel_20787 -> Integer
du_keyDeposit_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
      (coe d_'46'generalizedField'45'pp_20765 (coe v0))
-- Ledger.Conway.Conformance.Certs._.keyDeposit
d_keyDeposit_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GeneralizeTel_39881 -> Integer
d_keyDeposit_1814 ~v0 v1 = du_keyDeposit_1814 v1
du_keyDeposit_1814 :: T_GeneralizeTel_39881 -> Integer
du_keyDeposit_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
      (coe d_'46'generalizedField'45'pp_39863 (coe v0))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1858 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1858
  = C_GOVCERT'45'regdrep_1934 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1936 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOVCERT'45'ccreghot_1938 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1940 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1940
  = C_CERT'45'deleg_1942 T__'8866'_'8640''10631'_'44'DELEG'10632'__1706 |
    C_CERT'45'pool_1944 MAlonzo.Code.Ledger.Conway.Specification.Certs.T__'8866'_'8640''10631'_'44'POOL'10632'__1642 |
    C_CERT'45'vdel_1946 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1858
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__1948 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__1948
  = C_CERT'45'pre_2028 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._.drepActivity
d_drepActivity_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GeneralizeTel_86503 -> AgdaAny
d_drepActivity_1970 ~v0 v1 = du_drepActivity_1970 v1
du_drepActivity_1970 :: T_GeneralizeTel_86503 -> AgdaAny
du_drepActivity_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_412
      (coe d_'46'generalizedField'45'pp_86477 (coe v0))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__2030 a0 a1 a2 a3
                                                      a4
  = ()
data T__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__2030
  = C_CERT'45'post_2032
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1322 ->
  T_CertState_1540 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1286] ->
  T_CertState_1540 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2034 = erased
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_20765 ::
  T_GeneralizeTel_20787 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_'46'generalizedField'45'pp_20765 v0
  = case coe v0 of
      C_mkGeneralizeTel_20789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_20767 ::
  T_GeneralizeTel_20787 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_'46'generalizedField'45'c_20767 v0
  = case coe v0 of
      C_mkGeneralizeTel_20789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_20769 ::
  T_GeneralizeTel_20787 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_20769 v0
  = case coe v0 of
      C_mkGeneralizeTel_20789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_20771 ::
  T_GeneralizeTel_20787 -> Integer
d_'46'generalizedField'45'd_20771 v0
  = case coe v0 of
      C_mkGeneralizeTel_20789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_20773 ::
  T_GeneralizeTel_20787 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_802
d_'46'generalizedField'45'mv_20773 v0
  = case coe v0 of
      C_mkGeneralizeTel_20789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-delegatees
d_'46'generalizedField'45'delegatees_20775 ::
  T_GeneralizeTel_20787 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_'46'generalizedField'45'delegatees_20775 v0
  = case coe v0 of
      C_mkGeneralizeTel_20789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-mkh
d_'46'generalizedField'45'mkh_20777 ::
  T_GeneralizeTel_20787 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_20777 v0
  = case coe v0 of
      C_mkGeneralizeTel_20789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_20779 ::
  T_GeneralizeTel_20787 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_20779 v0
  = case coe v0 of
      C_mkGeneralizeTel_20789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_20781 ::
  T_GeneralizeTel_20787 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_20781 v0
  = case coe v0 of
      C_mkGeneralizeTel_20789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_20783 ::
  T_GeneralizeTel_20787 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_20783 v0
  = case coe v0 of
      C_mkGeneralizeTel_20789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_20785 ::
  T_GeneralizeTel_20787 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_20785 v0
  = case coe v0 of
      C_mkGeneralizeTel_20789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_20787 a0 = ()
data T_GeneralizeTel_20787
  = C_mkGeneralizeTel_20789 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
                            MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                            (Maybe
                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_802)
                            [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                            (Maybe AgdaAny) MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_39863 ::
  T_GeneralizeTel_39881 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_'46'generalizedField'45'pp_39863 v0
  = case coe v0 of
      C_mkGeneralizeTel_39883 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_39865 ::
  T_GeneralizeTel_39881 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_'46'generalizedField'45'c_39865 v0
  = case coe v0 of
      C_mkGeneralizeTel_39883 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_39867 ::
  T_GeneralizeTel_39881 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_39867 v0
  = case coe v0 of
      C_mkGeneralizeTel_39883 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_39869 ::
  T_GeneralizeTel_39881 -> Integer
d_'46'generalizedField'45'd_39869 v0
  = case coe v0 of
      C_mkGeneralizeTel_39883 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_39871 ::
  T_GeneralizeTel_39881 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_39871 v0
  = case coe v0 of
      C_mkGeneralizeTel_39883 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-delegatees
d_'46'generalizedField'45'delegatees_39873 ::
  T_GeneralizeTel_39881 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_'46'generalizedField'45'delegatees_39873 v0
  = case coe v0 of
      C_mkGeneralizeTel_39883 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_39875 ::
  T_GeneralizeTel_39881 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_39875 v0
  = case coe v0 of
      C_mkGeneralizeTel_39883 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_39877 ::
  T_GeneralizeTel_39881 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_39877 v0
  = case coe v0 of
      C_mkGeneralizeTel_39883 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_39879 ::
  T_GeneralizeTel_39881 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_39879 v0
  = case coe v0 of
      C_mkGeneralizeTel_39883 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_39881 a0 = ()
data T_GeneralizeTel_39881
  = C_mkGeneralizeTel_39883 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
                            MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_48059 ::
  T_GeneralizeTel_48079 -> Integer
d_'46'generalizedField'45'd_48059 v0
  = case coe v0 of
      C_mkGeneralizeTel_48081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_48061 ::
  T_GeneralizeTel_48079 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_'46'generalizedField'45'c_48061 v0
  = case coe v0 of
      C_mkGeneralizeTel_48081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_48063 ::
  T_GeneralizeTel_48079 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_48063 v0
  = case coe v0 of
      C_mkGeneralizeTel_48081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-e
d_'46'generalizedField'45'e_48065 ::
  T_GeneralizeTel_48079 -> AgdaAny
d_'46'generalizedField'45'e_48065 v0
  = case coe v0 of
      C_mkGeneralizeTel_48081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_48067 ::
  T_GeneralizeTel_48079 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
d_'46'generalizedField'45'vs_48067 v0
  = case coe v0 of
      C_mkGeneralizeTel_48081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_48069 ::
  T_GeneralizeTel_48079 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_48069 v0
  = case coe v0 of
      C_mkGeneralizeTel_48081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-cc
d_'46'generalizedField'45'cc_48071 ::
  T_GeneralizeTel_48079 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_'46'generalizedField'45'cc_48071 v0
  = case coe v0 of
      C_mkGeneralizeTel_48081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_48073 ::
  T_GeneralizeTel_48079 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_48073 v0
  = case coe v0 of
      C_mkGeneralizeTel_48081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_48075 ::
  T_GeneralizeTel_48079 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_48075 v0
  = case coe v0 of
      C_mkGeneralizeTel_48081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-an
d_'46'generalizedField'45'an_48077 ::
  T_GeneralizeTel_48079 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814
d_'46'generalizedField'45'an_48077 v0
  = case coe v0 of
      C_mkGeneralizeTel_48081 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_48079 a0 = ()
data T_GeneralizeTel_48079
  = C_mkGeneralizeTel_48081 Integer
                            MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_86477 ::
  T_GeneralizeTel_86503 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_'46'generalizedField'45'pp_86477 v0
  = case coe v0 of
      C_mkGeneralizeTel_86505 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_86479 ::
  T_GeneralizeTel_86503 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
d_'46'generalizedField'45'vs_86479 v0
  = case coe v0 of
      C_mkGeneralizeTel_86505 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-e
d_'46'generalizedField'45'e_86481 ::
  T_GeneralizeTel_86503 -> AgdaAny
d_'46'generalizedField'45'e_86481 v0
  = case coe v0 of
      C_mkGeneralizeTel_86505 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_86483 ::
  T_GeneralizeTel_86503 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_86483 v0
  = case coe v0 of
      C_mkGeneralizeTel_86505 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_86485 ::
  T_GeneralizeTel_86503 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_86485 v0
  = case coe v0 of
      C_mkGeneralizeTel_86505 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_86487 ::
  T_GeneralizeTel_86503 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_86487 v0
  = case coe v0 of
      C_mkGeneralizeTel_86505 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rewards
d_'46'generalizedField'45'rewards_86489 ::
  T_GeneralizeTel_86503 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_86489 v0
  = case coe v0 of
      C_mkGeneralizeTel_86505 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-cc
d_'46'generalizedField'45'cc_86491 ::
  T_GeneralizeTel_86503 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_'46'generalizedField'45'cc_86491 v0
  = case coe v0 of
      C_mkGeneralizeTel_86505 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_86493 ::
  T_GeneralizeTel_86503 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_86493 v0
  = case coe v0 of
      C_mkGeneralizeTel_86505 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ddep
d_'46'generalizedField'45'ddep_86495 ::
  T_GeneralizeTel_86503 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ddep_86495 v0
  = case coe v0 of
      C_mkGeneralizeTel_86505 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_86497 ::
  T_GeneralizeTel_86503 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1362
d_'46'generalizedField'45'st'7510'_86497 v0
  = case coe v0 of
      C_mkGeneralizeTel_86505 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_86499 ::
  T_GeneralizeTel_86503 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_86499 v0
  = case coe v0 of
      C_mkGeneralizeTel_86505 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-gdep
d_'46'generalizedField'45'gdep_86501 ::
  T_GeneralizeTel_86503 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'gdep_86501 v0
  = case coe v0 of
      C_mkGeneralizeTel_86505 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_86503 a0 = ()
data T_GeneralizeTel_86503
  = C_mkGeneralizeTel_86505 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
                            [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
                            AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1362
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
