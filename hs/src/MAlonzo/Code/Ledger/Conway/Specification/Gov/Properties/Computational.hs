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

module MAlonzo.Code.Ledger.Conway.Specification.Gov.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError

-- _.DecEq-Credential
d_DecEq'45'Credential_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_78 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_78 v2 v3
du_DecEq'45'Credential_78 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_78 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe v0) (coe v1)
-- _.Epoch
d_Epoch_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_130 = erased
-- _.PParams
d_PParams_216 a0 = ()
-- _.preoEpoch
d_preoEpoch_432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_432 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2498
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
            (coe v1)))
-- _.pvCanFollow
d_pvCanFollow_436 a0 a1 a2 = ()
-- _.PParams.Emax
d_Emax_568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_Emax_568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_392
      (coe v0)
-- _.PParams.a
d_a_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_a_570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_364 (coe v0)
-- _.PParams.a0
d_a0_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_396 (coe v0)
-- _.PParams.b
d_b_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_b_574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_366 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMaxTermLength_576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_408
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMinSize_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_coinsPerUTxOByte_580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_376
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_collateralPercentage_582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_398
      (coe v0)
-- _.PParams.costmdls
d_costmdls_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_costmdls_584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_400
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_drepActivity_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_416
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_drepDeposit_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_414
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionDeposit_592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_412
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionLifetime_594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_410
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_keyDeposit_596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_368
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxBlockExUnits_598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_356
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxBlockSize_600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_348
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxCollateralInputs_602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_360
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxHeaderSize_604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_352
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerBlock_606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_384
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerTx_608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_382
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxTxExUnits_610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_354
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxTxSize_612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_350
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxValSize_614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_358
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_616 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_380
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_618 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_minUTxOValue_618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_390
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_372
      (coe v0)
-- _.PParams.nopt
d_nopt_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_nopt_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_394
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_624 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_poolDeposit_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_370
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_626 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
      (coe v0)
-- _.PParams.prices
d_prices_628 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_prices_628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_378
      (coe v0)
-- _.PParams.pv
d_pv_630 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_362 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_632 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_388
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_634 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_386
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_636 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_374
      (coe v0)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.getHash
d_getHash_830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_830 ~v0 = du_getHash_830
du_getHash_830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_830
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHash_1170
-- Ledger.Conway.Specification.Gov.Properties.Computational._.getHashES
d_getHashES_832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_832 ~v0 = du_getHashES_832
du_getHashES_832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_832
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHashES_1182
-- Ledger.Conway.Specification.Gov.Properties.Computational._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_GovEnv_1802 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__878 = erased
-- Ledger.Conway.Specification.Gov.Properties.Computational._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__880 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovState
d_GovState_892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovState_892 = erased
-- Ledger.Conway.Specification.Gov.Properties.Computational._.allEnactable
d_allEnactable_930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_930 = erased
-- Ledger.Conway.Specification.Gov.Properties.Computational._.enactable
d_enactable_942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_942 = erased
-- Ledger.Conway.Specification.Gov.Properties.Computational._.getAidPairsList
d_getAidPairsList_946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_946 ~v0 = du_getAidPairsList_946
du_getAidPairsList_946 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_946
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.du_getAidPairsList_2008
-- Ledger.Conway.Specification.Gov.Properties.Computational._.hasParent'
d_hasParent''_952 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Properties.Computational._.hasParent?'
d_hasParent'63'''_956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_hasParent'63'''_2194
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2498
         (coe v0))
-- Ledger.Conway.Specification.Gov.Properties.Computational._.isRegistered
d_isRegistered_964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_GovEnv_1802 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874 ->
  ()
d_isRegistered_964 = erased
-- Ledger.Conway.Specification.Gov.Properties.Computational._.validHFAction
d_validHFAction_972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  ()
d_validHFAction_972 = erased
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovAction
d_GovAction_1042 a0 = ()
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovActionID
d_GovActionID_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_1048 = erased
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovActionType
d_GovActionType_1056 a0 = ()
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovProposal
d_GovProposal_1060 a0 = ()
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovRole
d_GovRole_1064 a0 = ()
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovVote
d_GovVote_1068 a0 = ()
-- Ledger.Conway.Specification.Gov.Properties.Computational._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_814
d_HasGovActionType'45'GovActionState_1108 ~v0
  = du_HasGovActionType'45'GovActionState_1108
du_HasGovActionType'45'GovActionState_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_814
du_HasGovActionType'45'GovActionState_1108
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1102
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovAction.gaData
d_gaData_1204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  AgdaAny
d_gaData_1204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_838
      (coe v0)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovAction.gaType
d_gaType_1206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796
d_gaType_1206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_836
      (coe v0)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovProposal.action
d_action_1238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830
d_action_1238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_992
      (coe v0)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovProposal.anchor
d_anchor_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_886
d_anchor_1240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1002
      (coe v0)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovProposal.deposit
d_deposit_1242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  Integer
d_deposit_1242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_998
      (coe v0)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovProposal.policy
d_policy_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  Maybe AgdaAny
d_policy_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_996
      (coe v0)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovProposal.prevAction
d_prevAction_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  AgdaAny
d_prevAction_1246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_994
      (coe v0)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovProposal.returnAddr
d_returnAddr_1248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1000
      (coe v0)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovVote.anchor
d_anchor_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_886
d_anchor_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_914
      (coe v0)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovVote.gid
d_gid_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_908
      (coe v0)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovVote.vote
d_vote_1264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_866
d_vote_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_912
      (coe v0)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.GovVote.voter
d_voter_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874
d_voter_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_910
      (coe v0)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.canVote
d_canVote_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_784 ->
  ()
d_canVote_1390 = erased
-- Ledger.Conway.Specification.Gov.Properties.Computational._.expired
d_expired_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_expired_1398 = erased
-- Ledger.Conway.Specification.Gov.Properties.Computational.lookupActionId
d_lookupActionId_1524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupActionId_1524 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v5 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
              (coe
                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1270
                          (coe v0))
                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                    (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                       (coe
                          (\ v6 ->
                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_threshold_1618
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2498
                             (coe v0))
                          v1 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                          (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                          v2)))
                 (coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_2462
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2498
                          (coe v0))
                       (coe v4) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                       (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))))
-- Ledger.Conway.Specification.Gov.Properties.Computational.isUpdateCommittee
d_isUpdateCommittee_1550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isUpdateCommittee_1550 ~v0 v1 = du_isUpdateCommittee_1550 v1
du_isUpdateCommittee_1550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isUpdateCommittee_1550 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_840 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_798
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_800
               -> case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                      -> case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                             -> coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                  (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                              erased))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_802
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_804
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_806
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_808
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_810
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Properties.Computational.hasPrev
d_hasPrev_1564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasPrev_1564 ~v0 v1 v2 = du_hasPrev_1564 v1 v2
du_hasPrev_1564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_hasPrev_1564 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1028 v2 v3 v4 v5 v6
        -> case coe v5 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_840 v7 v8
               -> case coe v7 of
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_798
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_800
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_802
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_804
                      -> let v9
                               = coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1418
                                   (coe v8) (coe v1) in
                         coe
                           (case coe v9 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                -> if coe v10
                                     then case coe v11 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                              -> coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                   (coe v10)
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                         (coe v8)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            erased (coe v12))))
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     else coe
                                            seq (coe v11)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe v10)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_806
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_808
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_810
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Properties.Computational.validHFAction?
d_validHFAction'63'_1598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_validHFAction'63'_1598 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1004 v4 v5 v6 v7 v8 v9
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_840 v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_798
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_800
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_802
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_804
                      -> case coe v3 of
                           MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1134 v12 v13 v14 v15 v16
                             -> case coe v14 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                    -> let v19
                                             = coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                 (coe
                                                    MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                    (coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1270
                                                          (coe v0)))
                                                    (coe
                                                       (\ v19 ->
                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                    (coe v18) (coe v5))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1418
                                                    (coe v17) (coe v11)) in
                                       coe
                                         (let v20
                                                = coe
                                                    MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                                                    (coe
                                                       (\ v20 ->
                                                          coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                            (coe
                                                               MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1270
                                                                     (coe v0)))
                                                               (coe
                                                                  (\ v21 ->
                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                       (coe
                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v20))
                                                               (coe v5))
                                                            (coe
                                                               du_hasPrev_1564
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v20))
                                                               (coe v11))))
                                                    (coe v2) in
                                          coe
                                            (case coe v19 of
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                 -> if coe v21
                                                      then case coe v22 of
                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v23
                                                               -> coe
                                                                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                       (coe v21)
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                          (coe
                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                             (coe v23))))
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      else coe
                                                             seq (coe v22)
                                                             (case coe v20 of
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                  -> if coe v23
                                                                       then case coe v24 of
                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                -> let v26
                                                                                         = coe
                                                                                             MAlonzo.Code.Data.List.Membership.Setoid.du_find_86
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                                                                                             (coe
                                                                                                v2)
                                                                                             (coe
                                                                                                v25) in
                                                                                   coe
                                                                                     (case coe
                                                                                             v26 of
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                          -> case coe
                                                                                                    v27 of
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                 -> case coe
                                                                                                           v28 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                                                        -> case coe
                                                                                                                  v32 of
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                                                               -> case coe
                                                                                                                         v34 of
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                                                      -> coe
                                                                                                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                              (coe
                                                                                                                                 v23)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                       (coe
                                                                                                                                          v30)
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                          (coe
                                                                                                                                             v35)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Function.Bundles.d_to_1868
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_460
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                   (coe
                                                                                                                                                      v2)
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                      (coe
                                                                                                                                                         v5)
                                                                                                                                                      (coe
                                                                                                                                                         v30)))
                                                                                                                                                v31)
                                                                                                                                             (coe
                                                                                                                                                v36)))))))
                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                       else coe
                                                                              seq (coe v24)
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v23)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_806
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_808
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_810
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Properties.Computational.isRegistered?
d_isRegistered'63'_1690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_GovEnv_1802 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isRegistered'63'_1690 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_884 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_786
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                       (coe
                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                             (let v5
                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                              (coe v0))) in
                              coe
                                (let v6
                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                              (coe v0)) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                      (coe v5) (coe v6))))))
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_236
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased
                             (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1384
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1400
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.d_certState_1828
                                         (coe v1))))))))
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_788
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                       (coe
                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (let v5
                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                           (coe v0))) in
                           coe
                             (let v6
                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                           (coe v0)) in
                              coe
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                   (coe v5) (coe v6)))))
                       (coe v4)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_236
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased
                             (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1382
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1400
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.d_certState_1828
                                         (coe v1))))))))
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_790
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                   (coe v0)))))
                       (coe v4)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_236
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased
                             (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1368
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1398
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.d_certState_1828
                                         (coe v1))))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Properties.Computational.Computational-GOV
d_Computational'45'GOV_1692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV_1692 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2080 (coe v0))
-- Ledger.Conway.Specification.Gov.Properties.Computational._.Go.GoVote.computeProof
d_computeProof_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1736 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (coe
                 d_lookupActionId_1524 v0
                 (MAlonzo.Code.Ledger.Conway.Specification.Gov.d_pparams_1822
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                 (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_880
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_910
                       (coe v3)))
                 (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_908
                    (coe v3))
                 (MAlonzo.Code.Ledger.Conway.Specification.Gov.d_epoch_1820
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                 v2)
              (d_isRegistered'63'_1690
                 (coe v0) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_910
                    (coe v3))) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                -> case coe v6 of
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                       -> if coe v10
                                            then case coe v11 of
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                     -> let v13
                                                              = coe
                                                                  MAlonzo.Code.Function.Bundles.d_from_2136
                                                                  (coe
                                                                     MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core.du_Any'8596'_154
                                                                     (coe v2))
                                                                  v9 in
                                                        coe
                                                          (case coe v13 of
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                               -> case coe v15 of
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                                      -> case coe v17 of
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                             -> case coe v3 of
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_916 v20 v21 v22 v23
                                                                                    -> case coe
                                                                                              v19 of
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                                           -> coe
                                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_addVote_1932
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2498
                                                                                                         (coe
                                                                                                            v0))
                                                                                                      (coe
                                                                                                         v2)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v14))
                                                                                                      (coe
                                                                                                         v21)
                                                                                                      (coe
                                                                                                         v22))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_GOV'45'Vote_2446
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                         (coe
                                                                                                            v14))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Function.Bundles.d_to_1868
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_460
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                               (coe
                                                                                                                  v2)
                                                                                                               (coe
                                                                                                                  v14))
                                                                                                            v16)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               v24)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  v12)
                                                                                                               (coe
                                                                                                                  v25))))))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            else coe
                                                   seq (coe v11)
                                                   (coe
                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                      (coe
                                                         ("\172\nisRegistered (.proj\8321 \915)\n(.Ledger.Conway.Specification.Gov.Actions.GovVote.voter sig)"
                                                          ::
                                                          Data.Text.Text)))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v8)
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                 (coe
                                    ("Dec\n(isRegistered (.proj\8321 \915)\n (.Ledger.Conway.Specification.Gov.Actions.GovVote.voter sig))"
                                     ::
                                     Data.Text.Text)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.Go.GoVote.completeness
d_completeness_1758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T__'8866'_'8640''10631'_'44'GOV'10632'__2444 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1758 = erased
-- Ledger.Conway.Specification.Gov.Properties.Computational._.Go.GoProp.Dec-actionWellFormed
d_Dec'45'actionWellFormed_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'actionWellFormed_1934 v0 ~v1 ~v2 ~v3
  = du_Dec'45'actionWellFormed_1934 v0
du_Dec'45'actionWellFormed_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'actionWellFormed_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_actionWellFormed'63'_2436
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2498
         (coe v0))
-- Ledger.Conway.Specification.Gov.Properties.Computational._.Go.GoProp.Dec-actionValid
d_Dec'45'actionValid_1936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'actionValid_1936 v0 ~v1 ~v2 ~v3
  = du_Dec'45'actionValid_1936 v0
du_Dec'45'actionValid_1936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'actionValid_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_actionValid'63'_2432
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2498
         (coe v0))
-- Ledger.Conway.Specification.Gov.Properties.Computational._.Go.GoProp.H
d_H_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_H_1938 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe
            MAlonzo.Code.Class.Decidable.Core.d_dec_16
            (coe
               du_Dec'45'actionWellFormed_1934 v0
               (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_992
                  (coe v3))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
            (coe
               MAlonzo.Code.Class.Decidable.Core.d_dec_16
               (coe
                  du_Dec'45'actionValid_1936 v0
                  (MAlonzo.Code.Ledger.Conway.Specification.Gov.d_rewardCreds_1830
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                  (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_996
                     (coe v3))
                  (MAlonzo.Code.Ledger.Conway.Specification.Gov.d_ppolicy_1824
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                  (MAlonzo.Code.Ledger.Conway.Specification.Gov.d_epoch_1820
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                  (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_992
                     (coe v3))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_998
                        (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_412
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.d_pparams_1822
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))))
               (coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                  (coe
                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                     (coe
                        d_validHFAction'63'_1598 (coe v0) (coe v3) (coe v2)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.d_enactState_1826
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))))
                  (coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.d_dec_16
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.d_hasParent'63'''_2194
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2498
                              (coe v0))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Gov.d_enactState_1826
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_836
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_992
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_994
                              (coe v3))))
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.d_dec_16
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1286
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1000
                                    (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1286
                                    (coe v0)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.d_dec_16
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (let v4
                                     = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                               (coe v0))) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                       (coe v4) (coe v5))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1000
                                    (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.d_rewardCreds_1830
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))))))))))
      (coe
         du_isUpdateCommittee_1550
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_992
            (coe v3)))
-- Ledger.Conway.Specification.Gov.Properties.Computational._.Go.GoProp.computeProof
d_computeProof_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1940 v0 v1 v2 v3
  = let v4 = d_H_1938 (coe v0) (coe v1) (coe v2) (coe v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                -> case coe v9 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                       -> case coe v11 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                              -> case coe v13 of
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                     -> case coe v15 of
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                            -> case coe v17 of
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                   -> case coe v18 of
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.C_HasParent''_2184 v24
                                                                          -> case coe v3 of
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1004 v25 v26 v27 v28 v29 v30
                                                                                 -> coe
                                                                                      seq (coe v19)
                                                                                      (case coe
                                                                                              v6 of
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v31 v32
                                                                                           -> if coe
                                                                                                   v31
                                                                                                then case coe
                                                                                                            v32 of
                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v33
                                                                                                         -> case coe
                                                                                                                   v33 of
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v34 v35
                                                                                                                -> case coe
                                                                                                                          v35 of
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v36 v37
                                                                                                                       -> case coe
                                                                                                                                 v37 of
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v38 v39
                                                                                                                              -> let v40
                                                                                                                                       = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
                                                                                                                                              (coe
                                                                                                                                                 (\ v40 ->
                                                                                                                                                    coe
                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_all'63'_1658
                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                      erased
                                                                                                                                                      erased
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                                                                                                                                                         (coe
                                                                                                                                                            (\ v41 ->
                                                                                                                                                               coe
                                                                                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                                                                                                                                                                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1654
                                                                                                                                                                          (coe
                                                                                                                                                                             v0)))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                                                                                                                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1654
                                                                                                                                                                             (coe
                                                                                                                                                                                v0)))
                                                                                                                                                                       (\ v42
                                                                                                                                                                          v43 ->
                                                                                                                                                                          v42)
                                                                                                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Gov.d_epoch_1820
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                             (coe
                                                                                                                                                                                v1)))
                                                                                                                                                                       v41)
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                                                                                                                       (\ v42
                                                                                                                                                                          v43 ->
                                                                                                                                                                          v43)
                                                                                                                                                                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1654
                                                                                                                                                                             (coe
                                                                                                                                                                                v0)))
                                                                                                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Gov.d_epoch_1820
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                             (coe
                                                                                                                                                                                v1)))
                                                                                                                                                                       v41))
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                       (coe
                                                                                                                                                                          (\ v42 ->
                                                                                                                                                                             coe
                                                                                                                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                               (let v43
                                                                                                                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v0))) in
                                                                                                                                                                                coe
                                                                                                                                                                                  (let v44
                                                                                                                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v0)) in
                                                                                                                                                                                   coe
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v43)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v44))))
                                                                                                                                                                               (coe
                                                                                                                                                                                  v42)
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Axiom.Set.du__'8745'__732
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                             erased
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v0))))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v0)))))
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                                                                                             (coe
                                                                                                                                                                                v34))
                                                                                                                                                                          (coe
                                                                                                                                                                             v36)))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                       (coe
                                                                                                                                                                          (\ v42 ->
                                                                                                                                                                             coe
                                                                                                                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                               (let v43
                                                                                                                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v0))) in
                                                                                                                                                                                coe
                                                                                                                                                                                  (let v44
                                                                                                                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v0)) in
                                                                                                                                                                                   coe
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v43)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v44))))
                                                                                                                                                                               (coe
                                                                                                                                                                                  v42)
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.du__'8745'__732
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                     erased
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v0))))
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1320
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 v0)))))
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v34))
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v36))))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))))
                                                                                                                                                      v40))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Class.IsSet.du_range_588
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                                                                 (coe
                                                                                                                                                    v34))) in
                                                                                                                                 coe
                                                                                                                                   (case coe
                                                                                                                                           v40 of
                                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v41 v42
                                                                                                                                        -> if coe
                                                                                                                                                v41
                                                                                                                                             then coe
                                                                                                                                                    seq
                                                                                                                                                    (coe
                                                                                                                                                       v42)
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.du_addAction_1918
                                                                                                                                                             (coe
                                                                                                                                                                v2)
                                                                                                                                                             (let v43
                                                                                                                                                                    = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2498
                                                                                                                                                                        (coe
                                                                                                                                                                           v0) in
                                                                                                                                                              coe
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
                                                                                                                                                                   (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
                                                                                                                                                                      (coe
                                                                                                                                                                         v43))
                                                                                                                                                                   (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_410
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.d_pparams_1822
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                            (coe
                                                                                                                                                                               v1))))
                                                                                                                                                                   (MAlonzo.Code.Ledger.Conway.Specification.Gov.d_epoch_1820
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                         (coe
                                                                                                                                                                            v1)))))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.d_txid_1818
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                      (coe
                                                                                                                                                                         v1)))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                   (coe
                                                                                                                                                                      v1)))
                                                                                                                                                             (coe
                                                                                                                                                                v29)
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_840
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_800)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      v34)
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                      (coe
                                                                                                                                                                         v36)
                                                                                                                                                                      (coe
                                                                                                                                                                         v38))))
                                                                                                                                                             (coe
                                                                                                                                                                v26))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.C_GOV'45'Propose_2458
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   v34)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      v36)
                                                                                                                                                                   (coe
                                                                                                                                                                      v38)))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      v12)
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                      (coe
                                                                                                                                                                         v14)
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                         (coe
                                                                                                                                                                            v16)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                            (coe
                                                                                                                                                                               v24)
                                                                                                                                                                            (coe
                                                                                                                                                                               v19)))))))))
                                                                                                                                             else coe
                                                                                                                                                    seq
                                                                                                                                                    (coe
                                                                                                                                                       v42)
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                       (coe
                                                                                                                                                          ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 e \8594\n   (preoEpoch HasPreorder.<\n    .Ledger.Conway.Specification.Gov.GovEnv.epoch (.proj\8321 \915))\n   e\n   \215\n   (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8801\7497\n    (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.Intersection.\8745\n     .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) new) rem)\n   (.Class.HasEmptySet.HasEmptySet.\8709\n    (Class.HasEmptySet.HasEmptySet-Set\n     (.Axiom.Set.Theory\7496.th List-Model\7496))))\n(Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496) new)"
                                                                                                                                                           ::
                                                                                                                                                           Data.Text.Text)))
                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                else coe
                                                                                                       seq
                                                                                                       (coe
                                                                                                          v32)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.du_insertGovAction_1882
                                                                                                                (coe
                                                                                                                   v2)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.d_txid_1818
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                            (coe
                                                                                                                               v1)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                         (coe
                                                                                                                            v1)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.du_gas_1914
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.du_additionVia_10
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1654
                                                                                                                               (coe
                                                                                                                                  v0)))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_410
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.d_pparams_1822
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                  (coe
                                                                                                                                     v1))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Gov.d_epoch_1820
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v1))))
                                                                                                                      (coe
                                                                                                                         v29)
                                                                                                                      (coe
                                                                                                                         v25)
                                                                                                                      (coe
                                                                                                                         v26))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.C_GOV'45'Propose_2458
                                                                                                                (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_838
                                                                                                                   (coe
                                                                                                                      v25))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      v10)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      (coe
                                                                                                                         v12)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                         (coe
                                                                                                                            v14)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               v16)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                               (coe
                                                                                                                                  v24)
                                                                                                                               (coe
                                                                                                                                  v19)))))))))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v8)
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                 (let v9
                                        = coe
                                            MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                            (coe
                                               du_Dec'45'actionWellFormed_1934 v0
                                               (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_992
                                                  (coe v3)))
                                            erased in
                                  coe
                                    (case coe v9 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                                         -> coe
                                              ("\172\nLedger.Conway.Specification.Gov.actionWellFormed\n(TransactionStructure.govStructure txs)\n(.Ledger.Conway.Specification.Gov.Actions.GovProposal.action prop)"
                                               ::
                                               Data.Text.Text)
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                                         -> let v11
                                                  = coe
                                                      MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                      (coe
                                                         du_Dec'45'actionValid_1936 v0
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Gov.d_rewardCreds_1830
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v1)))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_996
                                                            (coe v3))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Gov.d_ppolicy_1824
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v1)))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Gov.d_epoch_1820
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v1)))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_992
                                                            (coe v3)))
                                                      erased in
                                            coe
                                              (case coe v11 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                   -> coe
                                                        ("\172\nLedger.Conway.Specification.Gov.actionValid\n(TransactionStructure.govStructure txs)\n(.Ledger.Conway.Specification.Gov.GovEnv.rewardCreds (.proj\8321 \915))\n(.Ledger.Conway.Specification.Gov.Actions.GovProposal.policy prop)\n(.Ledger.Conway.Specification.Gov.GovEnv.ppolicy (.proj\8321 \915))\n(.Ledger.Conway.Specification.Gov.GovEnv.epoch (.proj\8321 \915))\n(.Ledger.Conway.Specification.Gov.Actions.GovProposal.action prop)"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                   -> let v13
                                                            = coe
                                                                MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_998
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_412
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.d_pparams_1822
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v1)))))
                                                                erased in
                                                      coe
                                                        (case coe v13 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                             -> coe
                                                                  ("\172\n.Ledger.Conway.Specification.Gov.Actions.GovProposal.deposit prop \8801\n.Ledger.Conway.Specification.PParams.PParams.govActionDeposit\n(.Ledger.Conway.Specification.Gov.GovEnv.pparams (.proj\8321 \915))"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                             -> let v15
                                                                      = coe
                                                                          MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                          (coe
                                                                             d_validHFAction'63'_1598
                                                                             (coe v0) (coe v3)
                                                                             (coe v2)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.d_enactState_1826
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe v1))))
                                                                          erased in
                                                                coe
                                                                  (case coe v15 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                       -> coe
                                                                            ("\172\nLedger.Conway.Specification.Gov.validHFAction\n(TransactionStructure.govStructure txs) prop s\n(.Ledger.Conway.Specification.Gov.GovEnv.enactState (.proj\8321 \915))"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                       -> let v17
                                                                                = coe
                                                                                    MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.d_hasParent'63'''_2194
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2498
                                                                                          (coe v0))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.d_enactState_1826
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe v2)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_836
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_992
                                                                                             (coe
                                                                                                v3)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_994
                                                                                          (coe v3)))
                                                                                    erased in
                                                                          coe
                                                                            (case coe v17 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v18
                                                                                 -> coe
                                                                                      ("\172\nhasParent'\n(.Ledger.Conway.Specification.Gov.GovEnv.enactState (.proj\8321 \915)) s\n(.Ledger.Conway.Specification.Gov.Actions.GovAction.gaType\n (.Ledger.Conway.Specification.Gov.Actions.GovProposal.action prop))\n(.Ledger.Conway.Specification.Gov.Actions.GovProposal.prevAction\n prop)"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v18
                                                                                 -> let v19
                                                                                          = coe
                                                                                              MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1286
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1000
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1286
                                                                                                       (coe
                                                                                                          v0))))
                                                                                              erased in
                                                                                    coe
                                                                                      (case coe
                                                                                              v19 of
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                           -> coe
                                                                                                ("\172\n.Ledger.Core.Specification.Address.HasNetworkId.NetworkIdOf\n(Ledger.Core.Specification.Address.HasNetworkId-RewardAddress\n (.Ledger.Core.Specification.Epoch.GlobalConstants.Network\n  (.GovStructure.globalConstants\n   (TransactionStructure.govStructure txs)))\n (.Ledger.Core.Specification.Crypto.isHashableSet.THash\n  (.Ledger.Core.Specification.Crypto.CryptoStructure.khs\n   (.GovStructure.cryptoStructure\n    (TransactionStructure.govStructure txs))))\n (.Ledger.Core.Specification.Crypto.CryptoStructure.ScriptHash\n  (.GovStructure.cryptoStructure\n   (TransactionStructure.govStructure txs))))\n(.Ledger.Conway.Specification.Gov.Actions.GovProposal.returnAddr\n prop)\n\8801\n.Ledger.Core.Specification.Epoch.GlobalConstants.NetworkId\n(.GovStructure.globalConstants\n (TransactionStructure.govStructure txs))"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                           -> coe
                                                                                                ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712\n .Ledger.Core.Specification.Address.HasCredential.CredentialOf\n (Ledger.Core.Specification.Address.HasCredential-RewardAddress\n  (.Ledger.Core.Specification.Epoch.GlobalConstants.Network\n   (.GovStructure.globalConstants\n    (TransactionStructure.govStructure txs)))\n  (.Ledger.Core.Specification.Crypto.isHashableSet.THash\n   (.Ledger.Core.Specification.Crypto.CryptoStructure.khs\n    (.GovStructure.cryptoStructure\n     (TransactionStructure.govStructure txs))))\n  (.Ledger.Core.Specification.Crypto.CryptoStructure.ScriptHash\n   (.GovStructure.cryptoStructure\n    (TransactionStructure.govStructure txs))))\n (.Ledger.Conway.Specification.Gov.Actions.GovProposal.returnAddr\n  prop))\n(.Ledger.Conway.Specification.Gov.GovEnv.rewardCreds (.proj\8321 \915))"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.Go.GoProp.completeness
d_completeness_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T__'8866'_'8640''10631'_'44'GOV'10632'__2444 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1992 = erased
-- Ledger.Conway.Specification.Gov.Properties.Computational._.Go.computeProof
d_computeProof_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2080 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
        -> coe d_computeProof_1736 (coe v0) (coe v1) (coe v2) (coe v4)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
        -> coe d_computeProof_1940 (coe v0) (coe v1) (coe v2) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Properties.Computational._.Go.completeness
d_completeness_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T__'8866'_'8640''10631'_'44'GOV'10632'__2444 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2090 = erased
-- Ledger.Conway.Specification.Gov.Properties.Computational.Computational-GOVS
d_Computational'45'GOVS_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVS_2096 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1102
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
      (coe d_Computational'45'GOV_1692 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732)
-- Ledger.Conway.Specification.Gov.Properties.Computational.allEnactable-singleton
d_allEnactable'45'singleton_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_allEnactable'45'singleton_2104 ~v0 v1 v2 v3 ~v4
  = du_allEnactable'45'singleton_2104 v1 v2 v3
du_allEnactable'45'singleton_2104 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_allEnactable'45'singleton_2104 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
      (coe du_helper_2130 (coe v0) (coe v1) (coe v2))
      (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
-- Ledger.Conway.Specification.Gov.Properties.Computational._.helper
d_helper_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_helper_2130 ~v0 v1 v2 v3 ~v4 = du_helper_2130 v1 v2 v3
du_helper_2130 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  AgdaAny
du_helper_2130 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHashES_1182
              (coe v2)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_836
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
                    (coe v1))) in
    coe
      (let v4
             = coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHash_1170
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_836
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
                       (coe v1)))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1026
                    (coe v1)) in
       coe
         (case coe v3 of
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
              -> case coe v4 of
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                     -> coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v5)))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v7 v8 -> v8))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                                   (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
                                   (coe
                                      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22))
                                (coe
                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased))))
                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> erased
                   _ -> MAlonzo.RTE.mazUnreachableError
            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
              -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
            _ -> MAlonzo.RTE.mazUnreachableError))
