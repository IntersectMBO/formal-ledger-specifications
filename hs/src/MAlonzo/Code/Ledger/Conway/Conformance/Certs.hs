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
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1030
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
d_isGovVoterDRep_896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_896 ~v0 = du_isGovVoterDRep_896
du_isGovVoterDRep_896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_896
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1132
-- Ledger.Conway.Conformance.Certs._.Anchor.hash
d_hash_916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_808 ->
  AgdaAny
d_hash_916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_816
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.Anchor.url
d_url_918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_808 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_814
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.anchor
d_anchor_978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_808
d_anchor_978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_944
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.gid
d_gid_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_938
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.vote
d_vote_982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_920
d_vote_982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_942
      (coe v0)
-- Ledger.Conway.Conformance.Certs._.GovVote.voter
d_voter_984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784
d_voter_984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_940
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1030 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1034 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1036 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1038 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1040 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CCHotKeys
d_CCHotKeys_1042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_CCHotKeys_1042 = erased
-- Ledger.Conway.Conformance.Certs.Certs.CCHotKeysOf
d_CCHotKeysOf_1044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1106 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1114
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv
d_CertEnv_1054 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CertState
d_CertState_1058 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.CertStateOf
d_CertStateOf_1062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342
d_CertStateOf_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1446
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DCert
d_DCert_1066 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DReps
d_DReps_1076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_1076 = erased
-- Ledger.Conway.Conformance.Certs.Certs.DRepsOf
d_DRepsOf_1078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1130
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DStateOf
d_DStateOf_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1378 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
d_DStateOf_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1386
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv
d_DelegEnv_1088 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.DepositPurpose
d_DepositPurpose_1092 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.Deposits
d_Deposits_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Deposits_1094 = erased
-- Ledger.Conway.Conformance.Certs.Certs.DepositsOf
d_DepositsOf_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1076
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.GState
d_GState_1104 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.GStateOf
d_GStateOf_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330
d_GStateOf_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1426
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasCCHotKeys
d_HasCCHotKeys_1112 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_1116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1106
d_HasCCHotKeys'45'GState_1116 ~v0 = du_HasCCHotKeys'45'GState_1116
du_HasCCHotKeys'45'GState_1116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1106
du_HasCCHotKeys'45'GState_1116
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1470
-- Ledger.Conway.Conformance.Certs.Certs.HasCast-CertEnv
d_HasCast'45'CertEnv_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1118 ~v0 = du_HasCast'45'CertEnv_1118
du_HasCast'45'CertEnv_1118 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1118
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1494
-- Ledger.Conway.Conformance.Certs.Certs.HasCast-DelegEnv
d_HasCast'45'DelegEnv_1124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_1124 ~v0 = du_HasCast'45'DelegEnv_1124
du_HasCast'45'DelegEnv_1124 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_1124
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1504
-- Ledger.Conway.Conformance.Certs.Certs.HasCast-PState
d_HasCast'45'PState_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_1128 ~v0 = du_HasCast'45'PState_1128
du_HasCast'45'PState_1128 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_1128
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1498
-- Ledger.Conway.Conformance.Certs.Certs.HasCertState
d_HasCertState_1130 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasCoin-CertState
d_HasCoin'45'CertState_1134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_1134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1492
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasDReps
d_HasDReps_1136 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasDReps-CertState
d_HasDReps'45'CertState_1140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
d_HasDReps'45'CertState_1140 ~v0 = du_HasDReps'45'CertState_1140
du_HasDReps'45'CertState_1140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
du_HasDReps'45'CertState_1140
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1480
-- Ledger.Conway.Conformance.Certs.Certs.HasDReps-GState
d_HasDReps'45'GState_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
d_HasDReps'45'GState_1142 ~v0 = du_HasDReps'45'GState_1142
du_HasDReps'45'GState_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
du_HasDReps'45'GState_1142
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1468
-- Ledger.Conway.Conformance.Certs.Certs.HasDState
d_HasDState_1144 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasDState-CertState
d_HasDState'45'CertState_1148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1378
d_HasDState'45'CertState_1148 ~v0 = du_HasDState'45'CertState_1148
du_HasDState'45'CertState_1148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1378
du_HasDState'45'CertState_1148
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1472
-- Ledger.Conway.Conformance.Certs.Certs.HasDeposits
d_HasDeposits_1150 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasGState
d_HasGState_1154 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasGState-CertState
d_HasGState'45'CertState_1158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1418
d_HasGState'45'CertState_1158 ~v0 = du_HasGState'45'CertState_1158
du_HasGState'45'CertState_1158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1418
du_HasGState'45'CertState_1158
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1476
-- Ledger.Conway.Conformance.Certs.Certs.HasPParams-CertEnv
d_HasPParams'45'CertEnv_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
d_HasPParams'45'CertEnv_1160 ~v0 = du_HasPParams'45'CertEnv_1160
du_HasPParams'45'CertEnv_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
du_HasPParams'45'CertEnv_1160
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1454
-- Ledger.Conway.Conformance.Certs.Certs.HasPState
d_HasPState_1162 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasPState-CertState
d_HasPState'45'CertState_1166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398
d_HasPState'45'CertState_1166 ~v0 = du_HasPState'45'CertState_1166
du_HasPState'45'CertState_1166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398
du_HasPState'45'CertState_1166
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1474
-- Ledger.Conway.Conformance.Certs.Certs.HasPools
d_HasPools_1168 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasPools-CertState
d_HasPools'45'CertState_1172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
d_HasPools'45'CertState_1172 ~v0 = du_HasPools'45'CertState_1172
du_HasPools'45'CertState_1172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
du_HasPools'45'CertState_1172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1482
-- Ledger.Conway.Conformance.Certs.Certs.HasPools-PState
d_HasPools'45'PState_1174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
d_HasPools'45'PState_1174 ~v0 = du_HasPools'45'PState_1174
du_HasPools'45'PState_1174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
du_HasPools'45'PState_1174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1464
-- Ledger.Conway.Conformance.Certs.Certs.HasRetiring
d_HasRetiring_1176 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasRetiring-PState
d_HasRetiring'45'PState_1180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1154
d_HasRetiring'45'PState_1180 ~v0 = du_HasRetiring'45'PState_1180
du_HasRetiring'45'PState_1180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1154
du_HasRetiring'45'PState_1180
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1466
-- Ledger.Conway.Conformance.Certs.Certs.HasRewards
d_HasRewards_1182 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasRewards-CertState
d_HasRewards'45'CertState_1186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
d_HasRewards'45'CertState_1186 ~v0
  = du_HasRewards'45'CertState_1186
du_HasRewards'45'CertState_1186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
du_HasRewards'45'CertState_1186
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1478
-- Ledger.Conway.Conformance.Certs.Certs.HasRewards-DState
d_HasRewards'45'DState_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
d_HasRewards'45'DState_1188 ~v0 = du_HasRewards'45'DState_1188
du_HasRewards'45'DState_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
du_HasRewards'45'DState_1188
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1462
-- Ledger.Conway.Conformance.Certs.Certs.HasStake
d_HasStake_1190 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasStakeDelegs
d_HasStakeDelegs_1194 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Certs.Certs.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_1198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1202
d_HasStakeDelegs'45'DState_1198 ~v0
  = du_HasStakeDelegs'45'DState_1198
du_HasStakeDelegs'45'DState_1198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1202
du_HasStakeDelegs'45'DState_1198
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1460
-- Ledger.Conway.Conformance.Certs.Certs.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_1200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840
d_HasVoteDelegs'45'CertState_1200 ~v0
  = du_HasVoteDelegs'45'CertState_1200
du_HasVoteDelegs'45'CertState_1200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840
du_HasVoteDelegs'45'CertState_1200
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1484
-- Ledger.Conway.Conformance.Certs.Certs.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_1202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840
d_HasVoteDelegs'45'DState_1202 ~v0
  = du_HasVoteDelegs'45'DState_1202
du_HasVoteDelegs'45'DState_1202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840
du_HasVoteDelegs'45'DState_1202
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1458
-- Ledger.Conway.Conformance.Certs.Certs.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_1204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'CertEnv_1204 ~v0
  = du_HasWithdrawals'45'CertEnv_1204
du_HasWithdrawals'45'CertEnv_1204 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
du_HasWithdrawals'45'CertEnv_1204
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1456
-- Ledger.Conway.Conformance.Certs.Certs.PState
d_PState_1210 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.PStateOf
d_PStateOf_1214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_PStateOf_1214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1406
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PoolEnv
d_PoolEnv_1218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_PoolEnv_1218 = erased
-- Ledger.Conway.Conformance.Certs.Certs.Pools
d_Pools_1220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Pools_1220 = erased
-- Ledger.Conway.Conformance.Certs.Certs.PoolsOf
d_PoolsOf_1222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1146
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.Retiring
d_Retiring_1224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Retiring_1224 = erased
-- Ledger.Conway.Conformance.Certs.Certs.RetiringOf
d_RetiringOf_1226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1162
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.Rewards
d_Rewards_1228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Rewards_1228 = erased
-- Ledger.Conway.Conformance.Certs.Certs.RewardsOf
d_RewardsOf_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1178
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.Stake
d_Stake_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Stake_1232 = erased
-- Ledger.Conway.Conformance.Certs.Certs.StakeDelegs
d_StakeDelegs_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_StakeDelegs_1234 = erased
-- Ledger.Conway.Conformance.Certs.Certs.StakeDelegsOf
d_StakeDelegsOf_1236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1210
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakeOf
d_StakeOf_1238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1194
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams
d_StakePoolParams_1240 a0 = ()
-- Ledger.Conway.Conformance.Certs.Certs.cwitness
d_cwitness_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_1246 ~v0 = du_cwitness_1246
du_cwitness_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_1246
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1260
-- Ledger.Conway.Conformance.Certs.Certs.rewardsBalance
d_rewardsBalance_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  Integer
d_rewardsBalance_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1486
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.coldCreds
d_coldCreds_1306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1278 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_1306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1298
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.epoch
d_epoch_1308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1278 ->
  AgdaAny
d_epoch_1308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1290
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.pp
d_pp_1310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1278 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pp_1310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1292 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.votes
d_votes_1312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1278 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
d_votes_1312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1294
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertEnv.wdrls
d_wdrls_1314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1296
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.dState
d_dState_1318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
d_dState_1318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1350
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.gState
d_gState_1320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330
d_gState_1320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1354
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.CertState.pState
d_pState_1322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_pState_1322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1352
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.delegatees
d_delegatees_1352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1358 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1370
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.pools
d_pools_1354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1368
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.DelegEnv.pparams
d_pparams_1356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1358 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1366
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.GState.ccHotKeys
d_ccHotKeys_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1338
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.GState.dreps
d_dreps_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1336
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1106 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1114
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasCertState.CertStateOf
d_CertStateOf_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342
d_CertStateOf_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1446
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasDReps.DRepsOf
d_DRepsOf_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1130
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasDState.DStateOf
d_DStateOf_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1378 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
d_DStateOf_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1386
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasDeposits.DepositsOf
d_DepositsOf_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1076
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasGState.GStateOf
d_GStateOf_1396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330
d_GStateOf_1396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1426
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasPState.PStateOf
d_PStateOf_1400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_PStateOf_1400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1406
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasPools.PoolsOf
d_PoolsOf_1404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1146
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasRetiring.RetiringOf
d_RetiringOf_1408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1162
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasRewards.RewardsOf
d_RewardsOf_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1178
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasStake.StakeOf
d_StakeOf_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1194
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1210
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState.pools
d_pools_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1324
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.PState.retiring
d_retiring_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1326
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.cost
d_cost_1430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  Integer
d_cost_1430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1042 (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.margin
d_margin_1432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_1432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1044
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.owners
d_owners_1434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  [AgdaAny]
d_owners_1434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1040
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.pledge
d_pledge_1436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  Integer
d_pledge_1436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1046
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Certs.StakePoolParams.rewardAccount
d_rewardAccount_1438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1028 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_1438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1048
      (coe v0)
-- Ledger.Conway.Conformance.Certs.DState
d_DState_1440 a0 = ()
data T_DState_1440
  = C_'10214'_'44'_'44'_'44'_'10215''7496'_1458 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.DState.voteDelegs
d_voteDelegs_1450 ::
  T_DState_1440 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1450 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1458 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.stakeDelegs
d_stakeDelegs_1452 ::
  T_DState_1440 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1452 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1458 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.rewards
d_rewards_1454 ::
  T_DState_1440 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1454 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1458 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.DState.deposits
d_deposits_1456 ::
  T_DState_1440 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1456 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1458 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState
d_GState_1460 a0 = ()
data T_GState_1460
  = C_'10214'_'44'_'44'_'10215''7515'_1474 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs.GState.dreps
d_dreps_1468 ::
  T_GState_1460 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1468 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1474 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState.ccHotKeys
d_ccHotKeys_1470 ::
  T_GState_1460 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1470 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1474 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GState.deposits
d_deposits_1472 ::
  T_GState_1460 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1472 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1474 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState
d_CertState_1476 a0 = ()
data T_CertState_1476
  = C_'10214'_'44'_'44'_'10215''7580''738'_1490 T_DState_1440
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
                                                T_GState_1460
-- Ledger.Conway.Conformance.Certs.CertState.dState
d_dState_1484 :: T_CertState_1476 -> T_DState_1440
d_dState_1484 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1490 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState.pState
d_pState_1486 ::
  T_CertState_1476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_pState_1486 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1490 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.CertState.gState
d_gState_1488 :: T_CertState_1476 -> T_GState_1460
d_gState_1488 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1490 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.HasCast-DState
d_HasCast'45'DState_1492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_1492 ~v0 = du_HasCast'45'DState_1492
du_HasCast'45'DState_1492 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_1492
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
                                 (1440 :: Integer) (9415815257714143971 :: Integer)
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
                                    (1440 :: Integer) (9415815257714143971 :: Integer)
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
                                       (1440 :: Integer) (9415815257714143971 :: Integer)
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
                                       (1228 :: Integer) (9415815257714143971 :: Integer)
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
                                          (1440 :: Integer) (9415815257714143971 :: Integer)
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
                                          (1094 :: Integer) (9415815257714143971 :: Integer)
                                          "Ledger.Conway.Conformance.Certs.Certs.Deposits"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7496'_1458))
-- Ledger.Conway.Conformance.Certs.HasCast-GState
d_HasCast'45'GState_1494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_1494 ~v0 = du_HasCast'45'GState_1494
du_HasCast'45'GState_1494 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_1494
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
                                 (1460 :: Integer) (9415815257714143971 :: Integer)
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
                                    (1460 :: Integer) (9415815257714143971 :: Integer)
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
                                       (1460 :: Integer) (9415815257714143971 :: Integer)
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
                                       (1094 :: Integer) (9415815257714143971 :: Integer)
                                       "Ledger.Conway.Conformance.Certs.Certs.Deposits"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''7515'_1474))
-- Ledger.Conway.Conformance.Certs.HasCast-CertState
d_HasCast'45'CertState_1496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_1496 ~v0 = du_HasCast'45'CertState_1496
du_HasCast'45'CertState_1496 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_1496
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
                                 (1476 :: Integer) (9415815257714143971 :: Integer)
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
                                 (1440 :: Integer) (9415815257714143971 :: Integer)
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
                                    (1476 :: Integer) (9415815257714143971 :: Integer)
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
                                    (1210 :: Integer) (9415815257714143971 :: Integer)
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
                                       (1476 :: Integer) (9415815257714143971 :: Integer)
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
                                       (1460 :: Integer) (9415815257714143971 :: Integer)
                                       "Ledger.Conway.Conformance.Certs.GState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''7580''738'_1490))
-- Ledger.Conway.Conformance.Certs.certDeposit
d_certDeposit_1498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1498 ~v0 v1 v2 = du_certDeposit_1498 v1 v2
du_certDeposit_1498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1498 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1244 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                      (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1252 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1058
                      (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1258 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                      (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
                      (coe v1)))
         _ -> coe v2)
-- Ledger.Conway.Conformance.Certs.certRefund
d_certRefund_1514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1052]
d_certRefund_1514 ~v0 v1 = du_certRefund_1514 v1
du_certRefund_1514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1052]
du_certRefund_1514 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_444
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1246 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                   (coe v2))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1254 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1058
                   (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Conformance.Certs.updateCertDeposit
d_updateCertDeposit_1520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_1520 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1244 v4 v5 v6 v7
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
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
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                      (coe v4))
                   (coe v7)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1246 v4 v5
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
                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                   (coe v0)))
             (coe v3)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                   (coe v4)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1248 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
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
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1056
                      (coe v4))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_364
                      (coe v1))))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1250 v4 v5
        -> coe v3
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1252 v4 v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
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
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1058
                      (coe v4))
                   (coe v5)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1254 v4 v5
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
                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                   (coe v0)))
             (coe v3)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1058
                   (coe v4)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1256 v4 v5
        -> coe v3
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1258 v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
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
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                      (coe v4))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
                      (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1640 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__1640
  = C_POOL'45'regpool_1644 | C_POOL'45'retirepool_1646
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1642 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1642
  = C_DELEG'45'delegate_1720 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1722 Integer
                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'reg_1796 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._.keyDeposit
d_keyDeposit_1678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GeneralizeTel_24683 -> Integer
d_keyDeposit_1678 ~v0 v1 = du_keyDeposit_1678 v1
du_keyDeposit_1678 :: T_GeneralizeTel_24683 -> Integer
du_keyDeposit_1678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
      (coe d_'46'generalizedField'45'pp_24661 (coe v0))
-- Ledger.Conway.Conformance.Certs._.keyDeposit
d_keyDeposit_1754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GeneralizeTel_43777 -> Integer
d_keyDeposit_1754 ~v0 v1 = du_keyDeposit_1754 v1
du_keyDeposit_1754 :: T_GeneralizeTel_43777 -> Integer
du_keyDeposit_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
      (coe d_'46'generalizedField'45'pp_43759 (coe v0))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1798 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1798
  = C_GOVCERT'45'regdrep_1874 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1876 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOVCERT'45'ccreghot_1878 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1880 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1880
  = C_CERT'45'deleg_1882 T__'8866'_'8640''10631'_'44'DELEG'10632'__1642 |
    C_CERT'45'pool_1884 T__'8866'_'8640''10631'_'44'POOL'10632'__1640 |
    C_CERT'45'vdel_1886 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1798
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1888 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1888
  = C_CERT'45'base_1970 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs._.drepActivity
d_drepActivity_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GeneralizeTel_90661 -> AgdaAny
d_drepActivity_1910 ~v0 v1 = du_drepActivity_1910 v1
du_drepActivity_1910 :: T_GeneralizeTel_90661 -> AgdaAny
du_drepActivity_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_410
      (coe d_'46'generalizedField'45'pp_90635 (coe v0))
-- Ledger.Conway.Conformance.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1278 ->
  T_CertState_1476 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242] ->
  T_CertState_1476 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1972 = erased
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_24661 ::
  T_GeneralizeTel_24683 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_'46'generalizedField'45'pp_24661 v0
  = case coe v0 of
      C_mkGeneralizeTel_24685 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_24663 ::
  T_GeneralizeTel_24683 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_'46'generalizedField'45'c_24663 v0
  = case coe v0 of
      C_mkGeneralizeTel_24685 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_24665 ::
  T_GeneralizeTel_24683 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_24665 v0
  = case coe v0 of
      C_mkGeneralizeTel_24685 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_24667 ::
  T_GeneralizeTel_24683 -> Integer
d_'46'generalizedField'45'd_24667 v0
  = case coe v0 of
      C_mkGeneralizeTel_24685 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_24669 ::
  T_GeneralizeTel_24683 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_796
d_'46'generalizedField'45'mv_24669 v0
  = case coe v0 of
      C_mkGeneralizeTel_24685 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-delegatees
d_'46'generalizedField'45'delegatees_24671 ::
  T_GeneralizeTel_24683 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_'46'generalizedField'45'delegatees_24671 v0
  = case coe v0 of
      C_mkGeneralizeTel_24685 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-mkh
d_'46'generalizedField'45'mkh_24673 ::
  T_GeneralizeTel_24683 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_24673 v0
  = case coe v0 of
      C_mkGeneralizeTel_24685 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_24675 ::
  T_GeneralizeTel_24683 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_24675 v0
  = case coe v0 of
      C_mkGeneralizeTel_24685 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_24677 ::
  T_GeneralizeTel_24683 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_24677 v0
  = case coe v0 of
      C_mkGeneralizeTel_24685 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_24679 ::
  T_GeneralizeTel_24683 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_24679 v0
  = case coe v0 of
      C_mkGeneralizeTel_24685 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_24681 ::
  T_GeneralizeTel_24683 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_24681 v0
  = case coe v0 of
      C_mkGeneralizeTel_24685 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_24683 a0 = ()
data T_GeneralizeTel_24683
  = C_mkGeneralizeTel_24685 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
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
d_'46'generalizedField'45'pp_43759 ::
  T_GeneralizeTel_43777 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_'46'generalizedField'45'pp_43759 v0
  = case coe v0 of
      C_mkGeneralizeTel_43779 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_43761 ::
  T_GeneralizeTel_43777 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_'46'generalizedField'45'c_43761 v0
  = case coe v0 of
      C_mkGeneralizeTel_43779 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_43763 ::
  T_GeneralizeTel_43777 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_43763 v0
  = case coe v0 of
      C_mkGeneralizeTel_43779 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_43765 ::
  T_GeneralizeTel_43777 -> Integer
d_'46'generalizedField'45'd_43765 v0
  = case coe v0 of
      C_mkGeneralizeTel_43779 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_43767 ::
  T_GeneralizeTel_43777 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_43767 v0
  = case coe v0 of
      C_mkGeneralizeTel_43779 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-delegatees
d_'46'generalizedField'45'delegatees_43769 ::
  T_GeneralizeTel_43777 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_'46'generalizedField'45'delegatees_43769 v0
  = case coe v0 of
      C_mkGeneralizeTel_43779 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_43771 ::
  T_GeneralizeTel_43777 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_43771 v0
  = case coe v0 of
      C_mkGeneralizeTel_43779 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_43773 ::
  T_GeneralizeTel_43777 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_43773 v0
  = case coe v0 of
      C_mkGeneralizeTel_43779 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_43775 ::
  T_GeneralizeTel_43777 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_43775 v0
  = case coe v0 of
      C_mkGeneralizeTel_43779 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_43777 a0 = ()
data T_GeneralizeTel_43777
  = C_mkGeneralizeTel_43779 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
                            MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Certs..generalizedField-d
d_'46'generalizedField'45'd_52011 ::
  T_GeneralizeTel_52031 -> Integer
d_'46'generalizedField'45'd_52011 v0
  = case coe v0 of
      C_mkGeneralizeTel_52033 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-c
d_'46'generalizedField'45'c_52013 ::
  T_GeneralizeTel_52031 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_'46'generalizedField'45'c_52013 v0
  = case coe v0 of
      C_mkGeneralizeTel_52033 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_52015 ::
  T_GeneralizeTel_52031 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_52015 v0
  = case coe v0 of
      C_mkGeneralizeTel_52033 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-e
d_'46'generalizedField'45'e_52017 ::
  T_GeneralizeTel_52031 -> AgdaAny
d_'46'generalizedField'45'e_52017 v0
  = case coe v0 of
      C_mkGeneralizeTel_52033 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_52019 ::
  T_GeneralizeTel_52031 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
d_'46'generalizedField'45'vs_52019 v0
  = case coe v0 of
      C_mkGeneralizeTel_52033 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_52021 ::
  T_GeneralizeTel_52031 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_52021 v0
  = case coe v0 of
      C_mkGeneralizeTel_52033 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-cc
d_'46'generalizedField'45'cc_52023 ::
  T_GeneralizeTel_52031 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_'46'generalizedField'45'cc_52023 v0
  = case coe v0 of
      C_mkGeneralizeTel_52033 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_52025 ::
  T_GeneralizeTel_52031 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_52025 v0
  = case coe v0 of
      C_mkGeneralizeTel_52033 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dep
d_'46'generalizedField'45'dep_52027 ::
  T_GeneralizeTel_52031 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_52027 v0
  = case coe v0 of
      C_mkGeneralizeTel_52033 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-an
d_'46'generalizedField'45'an_52029 ::
  T_GeneralizeTel_52031 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_808
d_'46'generalizedField'45'an_52029 v0
  = case coe v0 of
      C_mkGeneralizeTel_52033 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_52031 a0 = ()
data T_GeneralizeTel_52031
  = C_mkGeneralizeTel_52033 Integer
                            MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_808
-- Ledger.Conway.Conformance.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_90635 ::
  T_GeneralizeTel_90661 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_'46'generalizedField'45'pp_90635 v0
  = case coe v0 of
      C_mkGeneralizeTel_90663 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_90637 ::
  T_GeneralizeTel_90661 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
d_'46'generalizedField'45'vs_90637 v0
  = case coe v0 of
      C_mkGeneralizeTel_90663 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-e
d_'46'generalizedField'45'e_90639 ::
  T_GeneralizeTel_90661 -> AgdaAny
d_'46'generalizedField'45'e_90639 v0
  = case coe v0 of
      C_mkGeneralizeTel_90663 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_90641 ::
  T_GeneralizeTel_90661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_90641 v0
  = case coe v0 of
      C_mkGeneralizeTel_90663 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_90643 ::
  T_GeneralizeTel_90661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_90643 v0
  = case coe v0 of
      C_mkGeneralizeTel_90663 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_90645 ::
  T_GeneralizeTel_90661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_90645 v0
  = case coe v0 of
      C_mkGeneralizeTel_90663 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-rewards
d_'46'generalizedField'45'rewards_90647 ::
  T_GeneralizeTel_90661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_90647 v0
  = case coe v0 of
      C_mkGeneralizeTel_90663 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-cc
d_'46'generalizedField'45'cc_90649 ::
  T_GeneralizeTel_90661 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_'46'generalizedField'45'cc_90649 v0
  = case coe v0 of
      C_mkGeneralizeTel_90663 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_90651 ::
  T_GeneralizeTel_90661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_90651 v0
  = case coe v0 of
      C_mkGeneralizeTel_90663 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ddep
d_'46'generalizedField'45'ddep_90653 ::
  T_GeneralizeTel_90661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ddep_90653 v0
  = case coe v0 of
      C_mkGeneralizeTel_90663 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_90655 ::
  T_GeneralizeTel_90661 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_'46'generalizedField'45'st'7510'_90655 v0
  = case coe v0 of
      C_mkGeneralizeTel_90663 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_90657 ::
  T_GeneralizeTel_90661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_90657 v0
  = case coe v0 of
      C_mkGeneralizeTel_90663 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs..generalizedField-gdep
d_'46'generalizedField'45'gdep_90659 ::
  T_GeneralizeTel_90661 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'gdep_90659 v0
  = case coe v0 of
      C_mkGeneralizeTel_90663 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Certs.GeneralizeTel
d_GeneralizeTel_90661 a0 = ()
data T_GeneralizeTel_90661
  = C_mkGeneralizeTel_90663 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
                            [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
                            AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
