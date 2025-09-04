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
import qualified MAlonzo.Code.Data.Irrelevant
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
d_PParams_206 a0 = ()
-- _.Withdrawals
d_Withdrawals_324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_324 = erased
-- _.addEpoch
d_addEpoch_328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_328 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_642
         (coe v0))
-- _.isKeyHash
d_isKeyHash_358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_358 = erased
-- _.PParams.Emax
d_Emax_552 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_Emax_552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_386
      (coe v0)
-- _.PParams.a
d_a_554 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_a_554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_358 (coe v0)
-- _.PParams.a0
d_a0_556 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_390 (coe v0)
-- _.PParams.b
d_b_558 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_b_558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_360 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_560 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_ccMaxTermLength_560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_402
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_562 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_ccMinSize_562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_400
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_564 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_coinsPerUTxOByte_564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_370
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_collateralPercentage_566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_392
      (coe v0)
-- _.PParams.costmdls
d_costmdls_568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_costmdls_568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_394
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_drepActivity_570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_410
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_drepDeposit_572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_408
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202
d_drepThresholds_574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_398
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_govActionDeposit_576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_406
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_govActionLifetime_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_404
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_keyDeposit_580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_maxBlockExUnits_582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_350
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxBlockSize_584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_342
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxCollateralInputs_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_354
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxHeaderSize_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_346
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxRefScriptSizePerBlock_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_378
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxRefScriptSizePerTx_592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_376
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_maxTxExUnits_594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_348
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxTxSize_596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_344
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxValSize_598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_352
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_374
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_minUTxOValue_602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_384
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_366
      (coe v0)
-- _.PParams.nopt
d_nopt_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_nopt_606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_388
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_poolDeposit_608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_364
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246
d_poolThresholds_610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_396
      (coe v0)
-- _.PParams.prices
d_prices_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_prices_612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_372
      (coe v0)
-- _.PParams.pv
d_pv_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_356 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_616 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_382
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_618 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_380
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_368
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.Anchor
d_Anchor_774 a0 = ()
-- Ledger.Conway.Conformance.Certs._.DecEq-VDeleg
d_DecEq'45'VDeleg_790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1032
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote
d_GovVote_820 a0 = ()
-- Ledger.Conway.Conformance.Certs._.VDeleg
d_VDeleg_880 a0 = ()
-- Ledger.Conway.Conformance.Certs._.VoteDelegs
d_VoteDelegs_884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_884 = erased
-- Ledger.Conway.Conformance.Certs._.isGovVoterDRep
d_isGovVoterDRep_898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_898 ~v0 = du_isGovVoterDRep_898
du_isGovVoterDRep_898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_898
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1134
-- Ledger.Conway.Conformance.Certs._.Anchor.hash
d_hash_918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_810 ->
  AgdaAny
d_hash_918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_818
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.Anchor.url
d_url_920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_810 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_816
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.anchor
d_anchor_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_810
d_anchor_980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_946
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.gid
d_gid_982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_940
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.vote
d_vote_984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_922
d_vote_984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_944
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.voter
d_voter_986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784
d_voter_986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_942
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1032 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1036 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1038 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1040 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1042 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CCHotKeys
d_CCHotKeys_1044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_CCHotKeys_1044 = erased
-- Ledger.Conway.Conformance.Certs.Certs.CCHotKeysOf
d_CCHotKeysOf_1046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1106 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1114
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv
d_CertEnv_1056 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CertState
d_CertState_1060 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CertStateOf
d_CertStateOf_1064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322
d_CertStateOf_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1426
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DCert
d_DCert_1068 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DReps
d_DReps_1078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_1078 = erased
-- Ledger.Conway.Conformance.Certs.Certs.DRepsOf
d_DRepsOf_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1130
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DStateOf
d_DStateOf_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1358 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282
d_DStateOf_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1366
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv
d_DelegEnv_1090 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DepositPurpose
d_DepositPurpose_1094 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.Deposits
d_Deposits_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Deposits_1096 = erased
-- Ledger.Conway.Conformance.Certs.Certs.DepositsOf
d_DepositsOf_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1078
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.GState
d_GState_1106 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.GStateOf
d_GStateOf_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1398 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1310
d_GStateOf_1110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1406
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasCCHotKeys
d_HasCCHotKeys_1114 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1106
d_HasCCHotKeys'45'GState_1118 ~v0 = du_HasCCHotKeys'45'GState_1118
du_HasCCHotKeys'45'GState_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1106
du_HasCCHotKeys'45'GState_1118
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1450
-- Ledger.Conway.Conformance.Certs.Certs.HasCast-CertEnv
d_HasCast'45'CertEnv_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1120 ~v0 = du_HasCast'45'CertEnv_1120
du_HasCast'45'CertEnv_1120 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1120
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1474
-- Ledger.Conway.Conformance.Certs.Certs.HasCast-DelegEnv
d_HasCast'45'DelegEnv_1126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_1126 ~v0 = du_HasCast'45'DelegEnv_1126
du_HasCast'45'DelegEnv_1126 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_1126
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1484
-- Ledger.Conway.Conformance.Certs.Certs.HasCast-PState
d_HasCast'45'PState_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_1130 ~v0 = du_HasCast'45'PState_1130
du_HasCast'45'PState_1130 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_1130
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1478
-- Ledger.Conway.Conformance.Certs.Certs.HasCertState
d_HasCertState_1132 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasCoin-CertState
d_HasCoin'45'CertState_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1472
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasDReps
d_HasDReps_1138 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasDReps-CertState
d_HasDReps'45'CertState_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
d_HasDReps'45'CertState_1142 ~v0 = du_HasDReps'45'CertState_1142
du_HasDReps'45'CertState_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
du_HasDReps'45'CertState_1142
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1460
-- Ledger.Conway.Conformance.Certs.Certs.HasDReps-GState
d_HasDReps'45'GState_1144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
d_HasDReps'45'GState_1144 ~v0 = du_HasDReps'45'GState_1144
du_HasDReps'45'GState_1144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
du_HasDReps'45'GState_1144
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1448
-- Ledger.Conway.Conformance.Certs.Certs.HasDState
d_HasDState_1146 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasDState-CertState
d_HasDState'45'CertState_1150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1358
d_HasDState'45'CertState_1150 ~v0 = du_HasDState'45'CertState_1150
du_HasDState'45'CertState_1150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1358
du_HasDState'45'CertState_1150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1452
-- Ledger.Conway.Conformance.Certs.Certs.HasDeposits
d_HasDeposits_1152 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasGState
d_HasGState_1156 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasGState-CertState
d_HasGState'45'CertState_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1398
d_HasGState'45'CertState_1160 ~v0 = du_HasGState'45'CertState_1160
du_HasGState'45'CertState_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1398
du_HasGState'45'CertState_1160
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1456
-- Ledger.Conway.Conformance.Certs.Certs.HasPParams-CertEnv
d_HasPParams'45'CertEnv_1162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
d_HasPParams'45'CertEnv_1162 ~v0 = du_HasPParams'45'CertEnv_1162
du_HasPParams'45'CertEnv_1162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
du_HasPParams'45'CertEnv_1162
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1434
-- Ledger.Conway.Conformance.Certs.Certs.HasPState
d_HasPState_1164 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasPState-CertState
d_HasPState'45'CertState_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1378
d_HasPState'45'CertState_1168 ~v0 = du_HasPState'45'CertState_1168
du_HasPState'45'CertState_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1378
du_HasPState'45'CertState_1168
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1454
-- Ledger.Conway.Conformance.Certs.Certs.HasPools
d_HasPools_1170 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasPools-CertState
d_HasPools'45'CertState_1174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
d_HasPools'45'CertState_1174 ~v0 = du_HasPools'45'CertState_1174
du_HasPools'45'CertState_1174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
du_HasPools'45'CertState_1174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1462
-- Ledger.Conway.Conformance.Certs.Certs.HasPools-PState
d_HasPools'45'PState_1176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
d_HasPools'45'PState_1176 ~v0 = du_HasPools'45'PState_1176
du_HasPools'45'PState_1176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
du_HasPools'45'PState_1176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1444
-- Ledger.Conway.Conformance.Certs.Certs.HasRetiring
d_HasRetiring_1178 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasRetiring-PState
d_HasRetiring'45'PState_1182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1154
d_HasRetiring'45'PState_1182 ~v0 = du_HasRetiring'45'PState_1182
du_HasRetiring'45'PState_1182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1154
du_HasRetiring'45'PState_1182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1446
-- Ledger.Conway.Conformance.Certs.Certs.HasRewards
d_HasRewards_1184 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasRewards-CertState
d_HasRewards'45'CertState_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
d_HasRewards'45'CertState_1188 ~v0
  = du_HasRewards'45'CertState_1188
du_HasRewards'45'CertState_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
du_HasRewards'45'CertState_1188
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1458
-- Ledger.Conway.Conformance.Certs.Certs.HasRewards-DState
d_HasRewards'45'DState_1190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
d_HasRewards'45'DState_1190 ~v0 = du_HasRewards'45'DState_1190
du_HasRewards'45'DState_1190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
du_HasRewards'45'DState_1190
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1442
-- Ledger.Conway.Conformance.Certs.Certs.HasStakeDelegs
d_HasStakeDelegs_1192 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_1196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1186
d_HasStakeDelegs'45'DState_1196 ~v0
  = du_HasStakeDelegs'45'DState_1196
du_HasStakeDelegs'45'DState_1196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1186
du_HasStakeDelegs'45'DState_1196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1440
-- Ledger.Conway.Conformance.Certs.Certs.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_1198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_842
d_HasVoteDelegs'45'CertState_1198 ~v0
  = du_HasVoteDelegs'45'CertState_1198
du_HasVoteDelegs'45'CertState_1198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_842
du_HasVoteDelegs'45'CertState_1198
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1464
-- Ledger.Conway.Conformance.Certs.Certs.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_1200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_842
d_HasVoteDelegs'45'DState_1200 ~v0
  = du_HasVoteDelegs'45'DState_1200
du_HasVoteDelegs'45'DState_1200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_842
du_HasVoteDelegs'45'DState_1200
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1438
-- Ledger.Conway.Conformance.Certs.Certs.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_1202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'CertEnv_1202 ~v0
  = du_HasWithdrawals'45'CertEnv_1202
du_HasWithdrawals'45'CertEnv_1202 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
du_HasWithdrawals'45'CertEnv_1202
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1436
-- Ledger.Conway.Conformance.Certs.Certs.PState
d_PState_1208 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.PStateOf
d_PStateOf_1212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1378 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
d_PStateOf_1212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1386
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PoolEnv
d_PoolEnv_1216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_PoolEnv_1216 = erased
-- Ledger.Conway.Conformance.Certs.Certs.Pools
d_Pools_1218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Pools_1218 = erased
-- Ledger.Conway.Conformance.Certs.Certs.PoolsOf
d_PoolsOf_1220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1146
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.Retiring
d_Retiring_1222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Retiring_1222 = erased
-- Ledger.Conway.Conformance.Certs.Certs.RetiringOf
d_RetiringOf_1224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1162
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.Rewards
d_Rewards_1226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Rewards_1226 = erased
-- Ledger.Conway.Conformance.Certs.Certs.RewardsOf
d_RewardsOf_1228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1178
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakeDelegs
d_StakeDelegs_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_StakeDelegs_1230 = erased
-- Ledger.Conway.Conformance.Certs.Certs.StakeDelegsOf
d_StakeDelegsOf_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1194
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams
d_StakePoolParams_1234 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.cwitness
d_cwitness_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_1240 ~v0 = du_cwitness_1240
du_cwitness_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_1240
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1240
-- Ledger.Conway.Conformance.Certs.Certs.rewardsBalance
d_rewardsBalance_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282 ->
  Integer
d_rewardsBalance_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1466
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.coldCreds
d_coldCreds_1300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1258 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_1300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1278
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.epoch
d_epoch_1302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1258 ->
  AgdaAny
d_epoch_1302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1270
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.pp
d_pp_1304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1258 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pp_1304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1272 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.votes
d_votes_1306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1258 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930]
d_votes_1306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1274
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.wdrls
d_wdrls_1308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1276
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.dState
d_dState_1312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282
d_dState_1312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1330
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.gState
d_gState_1314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1310
d_gState_1314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1334
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.pState
d_pState_1316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
d_pState_1316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1332
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.delegatees
d_delegatees_1346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1338 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1350
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.pools
d_pools_1348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1348
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.pparams
d_pparams_1350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1338 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_1350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1346
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.GState.ccHotKeys
d_ccHotKeys_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1310 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1318
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.GState.dreps
d_dreps_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1310 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1316
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1106 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1114
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasCertState.CertStateOf
d_CertStateOf_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322
d_CertStateOf_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1426
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasDReps.DRepsOf
d_DRepsOf_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1130
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasDState.DStateOf
d_DStateOf_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1358 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282
d_DStateOf_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1366
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasDeposits.DepositsOf
d_DepositsOf_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1078
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasGState.GStateOf
d_GStateOf_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1398 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1310
d_GStateOf_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1406
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasPState.PStateOf
d_PStateOf_1394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1378 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
d_PStateOf_1394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1386
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasPools.PoolsOf
d_PoolsOf_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1146
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasRetiring.RetiringOf
d_RetiringOf_1402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1162
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasRewards.RewardsOf
d_RewardsOf_1406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1178
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1194
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState.pools
d_pools_1414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1304
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState.retiring
d_retiring_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1306
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.cost
d_cost_1420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1030 ->
  Integer
d_cost_1420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1044 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.margin
d_margin_1422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1030 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_1422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1046
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.owners
d_owners_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1030 ->
  [AgdaAny]
d_owners_1424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1042
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.pledge
d_pledge_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1030 ->
  Integer
d_pledge_1426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1048
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.rewardAccount
d_rewardAccount_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1030 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1050
      (coe v0)
-- Ledger.Conway.Conformance.Certs.DState
d_DState_1430 a0 = ()
data T_DState_1430
  = C_'10214'_'44'_'44'_'44'_'10215''7496'_1448 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.DState.voteDelegs
d_voteDelegs_1440 ::
  T_DState_1430 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1440 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1448 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.stakeDelegs
d_stakeDelegs_1442 ::
  T_DState_1430 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1442 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1448 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.rewards
d_rewards_1444 ::
  T_DState_1430 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1444 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1448 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.deposits
d_deposits_1446 ::
  T_DState_1430 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1446 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1448 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState
d_GState_1450 a0 = ()
data T_GState_1450
  = C_'10214'_'44'_'44'_'10215''7515'_1464 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.GState.dreps
d_dreps_1458 ::
  T_GState_1450 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1458 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1464 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState.ccHotKeys
d_ccHotKeys_1460 ::
  T_GState_1450 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1460 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1464 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState.deposits
d_deposits_1462 ::
  T_GState_1450 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1462 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1464 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState
d_CertState_1466 a0 = ()
data T_CertState_1466
  = C_'10214'_'44'_'44'_'10215''7580''738'_1480 T_DState_1430
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
                                                T_GState_1450
-- Ledger.Conway.Conformance.Certs.CertState.dState
d_dState_1474 :: T_CertState_1466 -> T_DState_1430
d_dState_1474 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1480 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState.pState
d_pState_1476 ::
  T_CertState_1466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
d_pState_1476 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1480 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState.gState
d_gState_1478 :: T_CertState_1466 -> T_GState_1450
d_gState_1478 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1480 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.HasCast-DState
d_HasCast'45'DState_1482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_1482 ~v0 = du_HasCast'45'DState_1482
du_HasCast'45'DState_1482 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_1482
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
                                 (1430 :: Integer) (9415815257714143971 :: Integer)
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
                                 (884 :: Integer) (9415815257714143971 :: Integer)
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
                                    (1430 :: Integer) (9415815257714143971 :: Integer)
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
                                                      (284 :: Integer)
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
                                                               (1166 :: Integer)
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
                                                                              (596 :: Integer)
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
                                                                     (596 :: Integer)
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
                                       (1430 :: Integer) (9415815257714143971 :: Integer)
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
                                       (1226 :: Integer) (9415815257714143971 :: Integer)
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
                                          (1430 :: Integer) (9415815257714143971 :: Integer)
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
                                          (1096 :: Integer) (9415815257714143971 :: Integer)
                                          "Ledger.Conway.Conformance.Certs.Certs.Deposits"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7496'_1448))
-- Ledger.Conway.Conformance.Certs.HasCast-GState
d_HasCast'45'GState_1484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_1484 ~v0 = du_HasCast'45'GState_1484
du_HasCast'45'GState_1484 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_1484
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
                                 (1450 :: Integer) (9415815257714143971 :: Integer)
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
                                                   (284 :: Integer) (753823221557309123 :: Integer)
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
                                                            (1166 :: Integer)
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
                                                                           (596 :: Integer)
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
                                                                  (596 :: Integer)
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
                                    (1450 :: Integer) (9415815257714143971 :: Integer)
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
                                                      (284 :: Integer)
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
                                                               (1166 :: Integer)
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
                                                                              (596 :: Integer)
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
                                                                     (596 :: Integer)
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
                                                                     (284 :: Integer)
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
                                                                              (1166 :: Integer)
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
                                                                                             (596 ::
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
                                                                                    (596 :: Integer)
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
                                       (1450 :: Integer) (9415815257714143971 :: Integer)
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
                                       (1096 :: Integer) (9415815257714143971 :: Integer)
                                       "Ledger.Conway.Conformance.Certs.Certs.Deposits"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''7515'_1464))
-- Ledger.Conway.Conformance.Certs.HasCast-CertState
d_HasCast'45'CertState_1486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_1486 ~v0 = du_HasCast'45'CertState_1486
du_HasCast'45'CertState_1486 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_1486
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
                                 (1466 :: Integer) (9415815257714143971 :: Integer)
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
                                 (1430 :: Integer) (9415815257714143971 :: Integer)
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
                                    (1466 :: Integer) (9415815257714143971 :: Integer)
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
                                    (1208 :: Integer) (9415815257714143971 :: Integer)
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
                                       (1466 :: Integer) (9415815257714143971 :: Integer)
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
                                       (1450 :: Integer) (9415815257714143971 :: Integer)
                                       "Ledger.Conway.Conformance.Certs.GState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''7580''738'_1480))
-- Ledger.Conway.Conformance.Certs.certDeposit
d_certDeposit_1488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1488 ~v0 v1 v2 = du_certDeposit_1488 v1 v2
du_certDeposit_1488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1488 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1224 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
                      (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1232 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1060
                      (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1238 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
                      (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
                      (coe v1)))
         _ -> coe v2)
-- Ledger.Conway.Conformance.Certs.certRefund
d_certRefund_1504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1054]
d_certRefund_1504 ~v0 v1 = du_certRefund_1504 v1
du_certRefund_1504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1054]
du_certRefund_1504 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_444
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1226 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
                   (coe v2))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1234 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1060
                   (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Conformance.Certs.updateCertDeposit
d_updateCertDeposit_1510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_1510 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1224 v4 v5 v6 v7
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                (coe v0))
             v3
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
                      (coe v4))
                   (coe v7)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1226 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1480
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
             (coe
                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                erased
                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                   (coe v0)))
             (coe v3)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
                   (coe v4)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1228 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                (coe v0))
             v3
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1058
                      (coe v4))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_364
                      (coe v1))))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1230 v4 v5
        -> coe v3
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1232 v4 v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                (coe v0))
             v3
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1060
                      (coe v4))
                   (coe v5)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1234 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1480
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
             (coe
                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                erased
                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                   (coe v0)))
             (coe v3)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1060
                   (coe v4)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1236 v4 v5
        -> coe v3
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1238 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                (coe v0))
             v3
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
                      (coe v4))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
                      (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1630 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__1630
  = C_POOL'45'regpool_1634 | C_POOL'45'retirepool_1636
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1632 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1632
  = C_DELEG'45'delegate_1710 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1712 Integer
                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'reg_1786 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._.keyDeposit
d_keyDeposit_1668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GeneralizeTel_24653 -> Integer
d_keyDeposit_1668 ~v0 v1 = du_keyDeposit_1668 v1
du_keyDeposit_1668 :: T_GeneralizeTel_24653 -> Integer
du_keyDeposit_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
      (coe d_'46'generalizedField'45'pp_24631 (coe v0))
-- Ledger.Conway.Conformance.Certs._.keyDeposit
d_keyDeposit_1744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GeneralizeTel_43747 -> Integer
d_keyDeposit_1744 ~v0 v1 = du_keyDeposit_1744 v1
du_keyDeposit_1744 :: T_GeneralizeTel_43747 -> Integer
du_keyDeposit_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
      (coe d_'46'generalizedField'45'pp_43729 (coe v0))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1788 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1788
  = C_GOVCERT'45'regdrep_1864 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1866 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOVCERT'45'ccreghot_1868 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1870 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1870
  = C_CERT'45'deleg_1872 T__'8866'_'8640''10631'_'44'DELEG'10632'__1632 |
    C_CERT'45'pool_1874 T__'8866'_'8640''10631'_'44'POOL'10632'__1630 |
    C_CERT'45'vdel_1876 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1788
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1878 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1878
  = C_CERT'45'base_1960 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._.drepActivity
d_drepActivity_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GeneralizeTel_90631 -> AgdaAny
d_drepActivity_1900 ~v0 v1 = du_drepActivity_1900 v1
du_drepActivity_1900 :: T_GeneralizeTel_90631 -> AgdaAny
du_drepActivity_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_410
      (coe d_'46'generalizedField'45'pp_90605 (coe v0))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1258 ->
  T_CertState_1466 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222] ->
  T_CertState_1466 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1962 = erased
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_24631 ::
  T_GeneralizeTel_24653 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_'46'generalizedField'45'pp_24631 v0
  = case coe v0 of
      C_mkGeneralizeTel_24655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_24633 ::
  T_GeneralizeTel_24653 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_'46'generalizedField'45'c_24633 v0
  = case coe v0 of
      C_mkGeneralizeTel_24655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_24635 ::
  T_GeneralizeTel_24653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_24635 v0
  = case coe v0 of
      C_mkGeneralizeTel_24655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_24637 ::
  T_GeneralizeTel_24653 -> Integer
d_'46'generalizedField'45'd_24637 v0
  = case coe v0 of
      C_mkGeneralizeTel_24655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_24639 ::
  T_GeneralizeTel_24653 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_796
d_'46'generalizedField'45'mv_24639 v0
  = case coe v0 of
      C_mkGeneralizeTel_24655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-delegatees
d_'46'generalizedField'45'delegatees_24641 ::
  T_GeneralizeTel_24653 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_'46'generalizedField'45'delegatees_24641 v0
  = case coe v0 of
      C_mkGeneralizeTel_24655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-mkh
d_'46'generalizedField'45'mkh_24643 ::
  T_GeneralizeTel_24653 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_24643 v0
  = case coe v0 of
      C_mkGeneralizeTel_24655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_24645 ::
  T_GeneralizeTel_24653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_24645 v0
  = case coe v0 of
      C_mkGeneralizeTel_24655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_24647 ::
  T_GeneralizeTel_24653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_24647 v0
  = case coe v0 of
      C_mkGeneralizeTel_24655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_24649 ::
  T_GeneralizeTel_24653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_24649 v0
  = case coe v0 of
      C_mkGeneralizeTel_24655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_24651 ::
  T_GeneralizeTel_24653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_24651 v0
  = case coe v0 of
      C_mkGeneralizeTel_24655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_24653 a0 = ()
data T_GeneralizeTel_24653
  = C_mkGeneralizeTel_24655 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
                            MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                            (Maybe
                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_796)
                            [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                            (Maybe AgdaAny) MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_43729 ::
  T_GeneralizeTel_43747 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_'46'generalizedField'45'pp_43729 v0
  = case coe v0 of
      C_mkGeneralizeTel_43749 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_43731 ::
  T_GeneralizeTel_43747 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_'46'generalizedField'45'c_43731 v0
  = case coe v0 of
      C_mkGeneralizeTel_43749 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_43733 ::
  T_GeneralizeTel_43747 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_43733 v0
  = case coe v0 of
      C_mkGeneralizeTel_43749 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_43735 ::
  T_GeneralizeTel_43747 -> Integer
d_'46'generalizedField'45'd_43735 v0
  = case coe v0 of
      C_mkGeneralizeTel_43749 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_43737 ::
  T_GeneralizeTel_43747 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_43737 v0
  = case coe v0 of
      C_mkGeneralizeTel_43749 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-delegatees
d_'46'generalizedField'45'delegatees_43739 ::
  T_GeneralizeTel_43747 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_'46'generalizedField'45'delegatees_43739 v0
  = case coe v0 of
      C_mkGeneralizeTel_43749 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_43741 ::
  T_GeneralizeTel_43747 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_43741 v0
  = case coe v0 of
      C_mkGeneralizeTel_43749 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_43743 ::
  T_GeneralizeTel_43747 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_43743 v0
  = case coe v0 of
      C_mkGeneralizeTel_43749 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_43745 ::
  T_GeneralizeTel_43747 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_43745 v0
  = case coe v0 of
      C_mkGeneralizeTel_43749 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_43747 a0 = ()
data T_GeneralizeTel_43747
  = C_mkGeneralizeTel_43749 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
                            MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_51981 ::
  T_GeneralizeTel_52001 -> Integer
d_'46'generalizedField'45'd_51981 v0
  = case coe v0 of
      C_mkGeneralizeTel_52003 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_51983 ::
  T_GeneralizeTel_52001 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_'46'generalizedField'45'c_51983 v0
  = case coe v0 of
      C_mkGeneralizeTel_52003 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_51985 ::
  T_GeneralizeTel_52001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_51985 v0
  = case coe v0 of
      C_mkGeneralizeTel_52003 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-e
d_'46'generalizedField'45'e_51987 ::
  T_GeneralizeTel_52001 -> AgdaAny
d_'46'generalizedField'45'e_51987 v0
  = case coe v0 of
      C_mkGeneralizeTel_52003 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_51989 ::
  T_GeneralizeTel_52001 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930]
d_'46'generalizedField'45'vs_51989 v0
  = case coe v0 of
      C_mkGeneralizeTel_52003 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_51991 ::
  T_GeneralizeTel_52001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_51991 v0
  = case coe v0 of
      C_mkGeneralizeTel_52003 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-cc
d_'46'generalizedField'45'cc_51993 ::
  T_GeneralizeTel_52001 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_'46'generalizedField'45'cc_51993 v0
  = case coe v0 of
      C_mkGeneralizeTel_52003 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_51995 ::
  T_GeneralizeTel_52001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_51995 v0
  = case coe v0 of
      C_mkGeneralizeTel_52003 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_51997 ::
  T_GeneralizeTel_52001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_51997 v0
  = case coe v0 of
      C_mkGeneralizeTel_52003 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-an
d_'46'generalizedField'45'an_51999 ::
  T_GeneralizeTel_52001 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_810
d_'46'generalizedField'45'an_51999 v0
  = case coe v0 of
      C_mkGeneralizeTel_52003 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_52001 a0 = ()
data T_GeneralizeTel_52001
  = C_mkGeneralizeTel_52003 Integer
                            MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_810
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_90605 ::
  T_GeneralizeTel_90631 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_'46'generalizedField'45'pp_90605 v0
  = case coe v0 of
      C_mkGeneralizeTel_90633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_90607 ::
  T_GeneralizeTel_90631 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930]
d_'46'generalizedField'45'vs_90607 v0
  = case coe v0 of
      C_mkGeneralizeTel_90633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-e
d_'46'generalizedField'45'e_90609 ::
  T_GeneralizeTel_90631 -> AgdaAny
d_'46'generalizedField'45'e_90609 v0
  = case coe v0 of
      C_mkGeneralizeTel_90633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_90611 ::
  T_GeneralizeTel_90631 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_90611 v0
  = case coe v0 of
      C_mkGeneralizeTel_90633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_90613 ::
  T_GeneralizeTel_90631 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_90613 v0
  = case coe v0 of
      C_mkGeneralizeTel_90633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_90615 ::
  T_GeneralizeTel_90631 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_90615 v0
  = case coe v0 of
      C_mkGeneralizeTel_90633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rewards
d_'46'generalizedField'45'rewards_90617 ::
  T_GeneralizeTel_90631 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_90617 v0
  = case coe v0 of
      C_mkGeneralizeTel_90633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-cc
d_'46'generalizedField'45'cc_90619 ::
  T_GeneralizeTel_90631 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_'46'generalizedField'45'cc_90619 v0
  = case coe v0 of
      C_mkGeneralizeTel_90633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_90621 ::
  T_GeneralizeTel_90631 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_90621 v0
  = case coe v0 of
      C_mkGeneralizeTel_90633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ddep
d_'46'generalizedField'45'ddep_90623 ::
  T_GeneralizeTel_90631 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ddep_90623 v0
  = case coe v0 of
      C_mkGeneralizeTel_90633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_90625 ::
  T_GeneralizeTel_90631 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
d_'46'generalizedField'45'st'7510'_90625 v0
  = case coe v0 of
      C_mkGeneralizeTel_90633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_90627 ::
  T_GeneralizeTel_90631 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_90627 v0
  = case coe v0 of
      C_mkGeneralizeTel_90633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-gdep
d_'46'generalizedField'45'gdep_90629 ::
  T_GeneralizeTel_90631 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'gdep_90629 v0
  = case coe v0 of
      C_mkGeneralizeTel_90633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_90631 a0 = ()
data T_GeneralizeTel_90631
  = C_mkGeneralizeTel_90633 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
                            [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930]
                            AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
