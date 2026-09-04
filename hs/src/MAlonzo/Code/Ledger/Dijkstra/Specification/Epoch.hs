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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.GeneralisedArithmetic
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Literals
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Instances
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive
import qualified MAlonzo.Code.Qstdlib.Data.Rational.Properties

-- _.Acnt
d_Acnt_40 a0 = ()
-- _.Credential
d_Credential_84 a0 = ()
-- _.DRepsOf
d_DRepsOf_96 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_96 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1202
      (coe v0)
-- _.DecEq-Credential
d_DecEq'45'Credential_136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_136 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
            (coe v0)))
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_172 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
            (coe v0)))
-- _.DecEq-VDeleg
d_DecEq'45'VDeleg_196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1294
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
         (coe v0))
-- _.Epoch
d_Epoch_218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Epoch_218 = erased
-- _.GovActionID
d_GovActionID_236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_GovActionID_236 = erased
-- _.GovActionState
d_GovActionState_240 a0 = ()
-- _.HasDReps
d_HasDReps_350 a0 a1 a2 = ()
-- _.HasPParams
d_HasPParams_478 a0 a1 a2 = ()
-- _.HasTreasury-Acnt
d_HasTreasury'45'Acnt_566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_566 ~v0 = du_HasTreasury'45'Acnt_566
du_HasTreasury'45'Acnt_566 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_566
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- _.THash
d_THash_672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_672 = erased
-- _.Number-Epoch
d_Number'45'Epoch_720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_720 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
         (coe v0))
-- _.PParams
d_PParams_732 a0 = ()
-- _.PParamsOf
d_PParamsOf_740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- _.RewardAddress
d_RewardAddress_802 a0 = ()
-- _.VDeleg
d_VDeleg_962 a0 = ()
-- _.addEpoch
d_addEpoch_998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_998 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
         (coe v0))
-- _.Acnt.reserves
d_reserves_1256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_1256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- _.Acnt.treasury
d_treasury_1258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_1258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- _.GovActionState.action
d_action_1344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884
d_action_1344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1032
      (coe v0)
-- _.GovActionState.deposit
d_deposit_1346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  Integer
d_deposit_1346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1036
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_1348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  AgdaAny
d_expiresIn_1348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1030
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_1350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  AgdaAny
d_prevAction_1350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1034
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_1352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1028
      (coe v0)
-- _.GovActionState.votes
d_votes_1354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_950
d_votes_1354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1026
      (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_1486 a0 = ()
-- _.GovernanceActions.HasDReps
d_HasDReps_1532 a0 a1 a2 = ()
-- _.GovernanceActions.VDeleg
d_VDeleg_1618 a0 = ()
-- _.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_1664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1202
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- _.PParams.Emax
d_Emax_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_432
      (coe v0)
-- _.PParams.a
d_a_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402 (coe v0)
-- _.PParams.a0
d_a0_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_436
      (coe v0)
-- _.PParams.b
d_b_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_448
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_446
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_440
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_456
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_454
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_444
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_450
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_406
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_394
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_386
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_398
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_390
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_392
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_420
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_410
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_430
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
      (coe v0)
-- _.PParams.nopt
d_nopt_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_434
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_408
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_442
      (coe v0)
-- _.PParams.prices
d_prices_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
      (coe v0)
-- _.PParams.pv
d_pv_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_400
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_428
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_426
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
      (coe v0)
-- _.RewardAddress.net
d_net_2282 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_2282 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- _.RewardAddress.stake
d_stake_2284 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2284 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.CertState
d_CertState_2648 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch._.CertStateOf
d_CertStateOf_2652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_CertStateOf_2652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.DState
d_DState_2662 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch._.GState
d_GState_2688 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch._.HasCertState
d_HasCertState_2722 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Epoch._.HasDReps-CertState
d_HasDReps'45'CertState_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
d_HasDReps'45'CertState_2736 ~v0 ~v1
  = du_HasDReps'45'CertState_2736
du_HasDReps'45'CertState_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
du_HasDReps'45'CertState_2736
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1842
-- Ledger.Dijkstra.Specification.Epoch._.HasDReps-GState
d_HasDReps'45'GState_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
d_HasDReps'45'GState_2738 ~v0 ~v1 = du_HasDReps'45'GState_2738
du_HasDReps'45'GState_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
du_HasDReps'45'GState_2738
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'GState_1828
-- Ledger.Dijkstra.Specification.Epoch._.HasPState
d_HasPState_2780 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Epoch._.HasPState-CertState
d_HasPState'45'CertState_2784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708
d_HasPState'45'CertState_2784 ~v0 ~v1
  = du_HasPState'45'CertState_2784
du_HasPState'45'CertState_2784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708
du_HasPState'45'CertState_2784
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1836
-- Ledger.Dijkstra.Specification.Epoch._.HasRetiring
d_HasRetiring_2794 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Epoch._.HasRetiring-PState
d_HasRetiring'45'PState_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1608
d_HasRetiring'45'PState_2798 ~v0 ~v1
  = du_HasRetiring'45'PState_2798
du_HasRetiring'45'PState_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1608
du_HasRetiring'45'PState_2798
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRetiring'45'PState_1826
-- Ledger.Dijkstra.Specification.Epoch._.HasRewards
d_HasRewards_2800 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Epoch._.HasRewards-CertState
d_HasRewards'45'CertState_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
d_HasRewards'45'CertState_2804 ~v0 ~v1
  = du_HasRewards'45'CertState_2804
du_HasRewards'45'CertState_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
du_HasRewards'45'CertState_2804
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1840
-- Ledger.Dijkstra.Specification.Epoch._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078
d_HasVoteDelegs'45'DState_2822 ~v0 ~v1
  = du_HasVoteDelegs'45'DState_2822
du_HasVoteDelegs'45'DState_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078
du_HasVoteDelegs'45'DState_2822
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1812
-- Ledger.Dijkstra.Specification.Epoch._.PState
d_PState_2840 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch._.PStateOf
d_PStateOf_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
d_PStateOf_2844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1716
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.Pools
d_Pools_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  ()
d_Pools_2852 = erased
-- Ledger.Dijkstra.Specification.Epoch._.RetiringOf
d_RetiringOf_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1608 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_2858 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1616
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.Rewards
d_Rewards_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  ()
d_Rewards_2860 = erased
-- Ledger.Dijkstra.Specification.Epoch._.RewardsOf
d_RewardsOf_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2862 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1636
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.Stake
d_Stake_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  ()
d_Stake_2864 = erased
-- Ledger.Dijkstra.Specification.Epoch._.StakeDelegs
d_StakeDelegs_2866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  ()
d_StakeDelegs_2866 = erased
-- Ledger.Dijkstra.Specification.Epoch._.CertState.dState
d_dState_2950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364
d_dState_2950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1428
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.CertState.gState
d_gState_2952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404
d_gState_2952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1432
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.CertState.pState
d_pState_2954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
d_pState_2954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1430
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.DState.deposits
d_deposits_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1380
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.DState.rewards
d_rewards_2976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1378
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.DState.stakeDelegs
d_stakeDelegs_2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1376
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.DState.voteDelegs
d_voteDelegs_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1374
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.GState.ccHotKeys
d_ccHotKeys_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1414
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.GState.deposits
d_deposits_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1416
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.GState.dreps
d_dreps_2996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1412
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.HasCertState.CertStateOf
d_CertStateOf_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_CertStateOf_3012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.HasPState.PStateOf
d_PStateOf_3040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
d_PStateOf_3040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1716
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.HasRetiring.RetiringOf
d_RetiringOf_3048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1608 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_3048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1616
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.HasRewards.RewardsOf
d_RewardsOf_3052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1636
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.PState.deposits
d_deposits_3068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1400
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.PState.fPools
d_fPools_3070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_3070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1396
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.PState.pools
d_pools_3072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1394
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.PState.retiring
d_retiring_3074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1398
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.EnactState
d_EnactState_3118 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch._.EnactStateOf
d_EnactStateOf_3122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_EnactStateOf_3122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1274
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.HasEnactState
d_HasEnactState_3126 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Epoch._.HasPParams-EnactState
d_HasPParams'45'EnactState_3130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'EnactState_3130 ~v0 ~v1
  = du_HasPParams'45'EnactState_3130
du_HasPParams'45'EnactState_3130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'EnactState_3130
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1282
-- Ledger.Dijkstra.Specification.Epoch._.EnactState.cc
d_cc_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_3168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1250 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.EnactState.constitution
d_constitution_3170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_3170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1252
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.EnactState.pparams
d_pparams_3172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1256
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.EnactState.pv
d_pv_3174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_3174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1254 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.EnactState.withdrawals
d_withdrawals_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_3176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1258
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.HasEnactState.EnactStateOf
d_EnactStateOf_3180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_EnactStateOf_3180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1274
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.GovState
d_GovState_3200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  ()
d_GovState_3200 = erased
-- Ledger.Dijkstra.Specification.Epoch._.GovStateOf
d_GovStateOf_3202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_3202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2018
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.HasGovState
d_HasGovState_3212 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Epoch._.HasGovState.GovStateOf
d_GovStateOf_3324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_3324 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2018
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.HasCCHotKeys-LedgerState
d_HasCCHotKeys'45'LedgerState_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528
d_HasCCHotKeys'45'LedgerState_3350 ~v0 ~v1
  = du_HasCCHotKeys'45'LedgerState_3350
du_HasCCHotKeys'45'LedgerState_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528
du_HasCCHotKeys'45'LedgerState_3350
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCCHotKeys'45'LedgerState_3888
-- Ledger.Dijkstra.Specification.Epoch._.HasCast-LedgerState
d_HasCast'45'LedgerState_3354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LedgerState_3354 ~v0 ~v1
  = du_HasCast'45'LedgerState_3354
du_HasCast'45'LedgerState_3354 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LedgerState_3354
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCast'45'LedgerState_3892
-- Ledger.Dijkstra.Specification.Epoch._.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
d_HasCertState'45'LedgerState_3358 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3358
du_HasCertState'45'LedgerState_3358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
du_HasCertState'45'LedgerState_3358
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3872
-- Ledger.Dijkstra.Specification.Epoch._.HasDReps-LedgerState
d_HasDReps'45'LedgerState_3362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
d_HasDReps'45'LedgerState_3362 ~v0 ~v1
  = du_HasDReps'45'LedgerState_3362
du_HasDReps'45'LedgerState_3362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
du_HasDReps'45'LedgerState_3362
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDReps'45'LedgerState_3890
-- Ledger.Dijkstra.Specification.Epoch._.HasDState-LedgerState
d_HasDState'45'LedgerState_3364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688
d_HasDState'45'LedgerState_3364 ~v0 ~v1
  = du_HasDState'45'LedgerState_3364
du_HasDState'45'LedgerState_3364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688
du_HasDState'45'LedgerState_3364
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3878
-- Ledger.Dijkstra.Specification.Epoch._.HasGState-LedgerState
d_HasGState'45'LedgerState_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728
d_HasGState'45'LedgerState_3374 ~v0 ~v1
  = du_HasGState'45'LedgerState_3374
du_HasGState'45'LedgerState_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728
du_HasGState'45'LedgerState_3374
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGState'45'LedgerState_3876
-- Ledger.Dijkstra.Specification.Epoch._.HasGovState-LedgerState
d_HasGovState'45'LedgerState_3376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010
d_HasGovState'45'LedgerState_3376 ~v0 ~v1
  = du_HasGovState'45'LedgerState_3376
du_HasGovState'45'LedgerState_3376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010
du_HasGovState'45'LedgerState_3376
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGovState'45'LedgerState_3870
-- Ledger.Dijkstra.Specification.Epoch._.HasLedgerState
d_HasLedgerState_3378 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Epoch._.HasPools-LedgerState
d_HasPools'45'LedgerState_3388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568
d_HasPools'45'LedgerState_3388 ~v0 ~v1
  = du_HasPools'45'LedgerState_3388
du_HasPools'45'LedgerState_3388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568
du_HasPools'45'LedgerState_3388
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPools'45'LedgerState_3874
-- Ledger.Dijkstra.Specification.Epoch._.HasVoteDelegs-LedgerState
d_HasVoteDelegs'45'LedgerState_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078
d_HasVoteDelegs'45'LedgerState_3398 ~v0 ~v1
  = du_HasVoteDelegs'45'LedgerState_3398
du_HasVoteDelegs'45'LedgerState_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078
du_HasVoteDelegs'45'LedgerState_3398
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasVoteDelegs'45'LedgerState_3882
-- Ledger.Dijkstra.Specification.Epoch._.LedgerState
d_LedgerState_3408 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch._.LedgerStateOf
d_LedgerStateOf_3412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3850 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830
d_LedgerStateOf_3412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3858
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3850 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830
d_LedgerStateOf_3446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3858
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.LedgerState.certState
d_certState_3462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_certState_3462 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.LedgerState.govSt
d_govSt_3464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3840
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.LedgerState.utxoSt
d_utxoSt_3466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
d_utxoSt_3466 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3838
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__3490 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Epoch._.HasCast-PoolReapState
d_HasCast'45'PoolReapState_3492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_3492 ~v0 ~v1
  = du_HasCast'45'PoolReapState_3492
du_HasCast'45'PoolReapState_3492 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_3492
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3096
-- Ledger.Dijkstra.Specification.Epoch._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__3516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1986 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__3516 = erased
-- Ledger.Dijkstra.Specification.Epoch._.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_3520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_3520 ~v0 ~v1 = du_HasCast'45'RatifyEnv_3520
du_HasCast'45'RatifyEnv_3520 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyEnv_3520
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyEnv_2062
-- Ledger.Dijkstra.Specification.Epoch._.HasCast-RatifyState
d_HasCast'45'RatifyState_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_3522 ~v0 ~v1
  = du_HasCast'45'RatifyState_3522
du_HasCast'45'RatifyState_3522 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_3522
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyState_2064
-- Ledger.Dijkstra.Specification.Epoch._.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
d_HasEnactState'45'RatifyState_3528 ~v0 ~v1
  = du_HasEnactState'45'RatifyState_3528
du_HasEnactState'45'RatifyState_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
du_HasEnactState'45'RatifyState_3528
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2054
-- Ledger.Dijkstra.Specification.Epoch._.HasRatifyState
d_HasRatifyState_3530 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Epoch._.RatifyEnv
d_RatifyEnv_3546 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch._.RatifyState
d_RatifyState_3550 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch._.RatifyStateOf
d_RatifyStateOf_3554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_HasRatifyState_2038 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018
d_RatifyStateOf_3554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_RatifyStateOf_2046
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.StakeDistrs
d_StakeDistrs_3556 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch._.HasRatifyState.RatifyStateOf
d_RatifyStateOf_3664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_HasRatifyState_2038 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018
d_RatifyStateOf_3664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_RatifyStateOf_2046
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RatifyEnv.ccHotKeys
d_ccHotKeys_3668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_ccHotKeys_2008
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RatifyEnv.currentEpoch
d_currentEpoch_3670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1986 ->
  AgdaAny
d_currentEpoch_3670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_currentEpoch_2004
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RatifyEnv.delegatees
d_delegatees_3672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_3672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delegatees_2014
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RatifyEnv.dreps
d_dreps_3674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_dreps_2006
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RatifyEnv.pools
d_pools_3676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_pools_2012
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RatifyEnv.stakeDistrs
d_stakeDistrs_3678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1986 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_StakeDistrs_1974
d_stakeDistrs_3678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_stakeDistrs_2002
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RatifyEnv.treasury
d_treasury_3680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1986 ->
  Integer
d_treasury_3680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_treasury_2010
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RatifyState.delay
d_delay_3684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  Bool
d_delay_3684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_2030
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RatifyState.es
d_es_3686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_es_3686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2026
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RatifyState.removed
d_removed_3688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_3688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_2028
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.StakeDistrs.stakeDistrPools
d_stakeDistrPools_3692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_StakeDistrs_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_3692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_stakeDistrPools_1982
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_3694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_StakeDistrs_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_3694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_stakeDistrVDeleg_1980
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__3698 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Epoch._.BlocksMade
d_BlocksMade_3700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  ()
d_BlocksMade_3700 = erased
-- Ledger.Dijkstra.Specification.Epoch._.HasSnapshots
d_HasSnapshots_3710 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Epoch._.RewardUpdate
d_RewardUpdate_3718 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch._.Snapshot
d_Snapshot_3724 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch._.Snapshots
d_Snapshots_3728 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch._.SnapshotsOf
d_SnapshotsOf_3732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_HasSnapshots_3898 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3874
d_SnapshotsOf_3732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_SnapshotsOf_3906
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_3764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_HasSnapshots_3898 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3874
d_SnapshotsOf_3764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_SnapshotsOf_3906
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RewardUpdate.flowConservation
d_flowConservation_3768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_3768 = erased
-- Ledger.Dijkstra.Specification.Epoch._.RewardUpdate.rs
d_rs_3770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_3770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_rs_3804
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RewardUpdate.Δf
d_Δf_3772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  Integer
d_Δf_3772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf_3802
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_3774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_3774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf'45'nonpositive_3812
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RewardUpdate.Δr
d_Δr_3776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  Integer
d_Δr_3776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δr_3800
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RewardUpdate.Δt
d_Δt_3778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  Integer
d_Δt_3778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt_3798
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_3780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_3780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt'45'nonnegative_3810
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.Snapshot.delegations
d_delegations_3784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_3784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3826
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.Snapshot.pools
d_pools_3786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3828
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.Snapshot.stake
d_stake_3788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_3788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3824
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.Snapshots.feeSS
d_feeSS_3792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3874 ->
  Integer
d_feeSS_3792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_3890
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.Snapshots.go
d_go_3794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3874 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816
d_go_3794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3888
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.Snapshots.mark
d_mark_3796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3874 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816
d_mark_3796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3884
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.Snapshots.set
d_set_3798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3874 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816
d_set_3798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3886
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.UTxOState
d_UTxOState_3906 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch._.UTxOState.donations
d_donations_4034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  Integer
d_donations_4034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3212
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.UTxOState.fees
d_fees_4036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  Integer
d_fees_4036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3210
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch._.UTxOState.utxo
d_utxo_4038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_4038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3208
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.PoolDelegatedStake
d_PoolDelegatedStake_4056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  ()
d_PoolDelegatedStake_4056 = erased
-- Ledger.Dijkstra.Specification.Epoch.EpochState
d_EpochState_4058 a0 a1 = ()
data T_EpochState_4058
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4080 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3874
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018
-- Ledger.Dijkstra.Specification.Epoch.EpochState.acnt
d_acnt_4070 ::
  T_EpochState_4058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_4070 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4080 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.EpochState.ss
d_ss_4072 ::
  T_EpochState_4058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3874
d_ss_4072 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4080 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.EpochState.ls
d_ls_4074 ::
  T_EpochState_4058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830
d_ls_4074 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4080 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.EpochState.es
d_es_4076 ::
  T_EpochState_4058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_es_4076 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4080 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.EpochState.fut
d_fut_4078 ::
  T_EpochState_4058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018
d_fut_4078 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4080 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.HasEpochState
d_HasEpochState_4086 a0 a1 a2 a3 = ()
newtype T_HasEpochState_4086
  = C_constructor_4096 (AgdaAny -> T_EpochState_4058)
-- Ledger.Dijkstra.Specification.Epoch.HasEpochState.EpochStateOf
d_EpochStateOf_4094 ::
  T_HasEpochState_4086 -> AgdaAny -> T_EpochState_4058
d_EpochStateOf_4094 v0
  = case coe v0 of
      C_constructor_4096 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch._.EpochStateOf
d_EpochStateOf_4100 ::
  T_HasEpochState_4086 -> AgdaAny -> T_EpochState_4058
d_EpochStateOf_4100 v0 = coe d_EpochStateOf_4094 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.HasSnapshots-EpochState
d_HasSnapshots'45'EpochState_4102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_HasSnapshots_3898
d_HasSnapshots'45'EpochState_4102 ~v0 ~v1
  = du_HasSnapshots'45'EpochState_4102
du_HasSnapshots'45'EpochState_4102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_HasSnapshots_3898
du_HasSnapshots'45'EpochState_4102
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3908
      (coe (\ v0 -> d_ss_4072 (coe v0)))
-- Ledger.Dijkstra.Specification.Epoch.HasLedgerState-EpochState
d_HasLedgerState'45'EpochState_4104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3850
d_HasLedgerState'45'EpochState_4104 ~v0 ~v1
  = du_HasLedgerState'45'EpochState_4104
du_HasLedgerState'45'EpochState_4104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3850
du_HasLedgerState'45'EpochState_4104
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3860
      (coe (\ v0 -> d_ls_4074 (coe v0)))
-- Ledger.Dijkstra.Specification.Epoch.HasGovState-EpochState
d_HasGovState'45'EpochState_4106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010
d_HasGovState'45'EpochState_4106 ~v0 ~v1
  = du_HasGovState'45'EpochState_4106
du_HasGovState'45'EpochState_4106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010
du_HasGovState'45'EpochState_4106
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_constructor_2020
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2018
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGovState'45'LedgerState_3870)
              (d_ls_4074 (coe v0))))
-- Ledger.Dijkstra.Specification.Epoch.HasEnactState-EpochState
d_HasEnactState'45'EpochState_4108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
d_HasEnactState'45'EpochState_4108 ~v0 ~v1
  = du_HasEnactState'45'EpochState_4108
du_HasEnactState'45'EpochState_4108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
du_HasEnactState'45'EpochState_4108
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1276
      (coe (\ v0 -> d_es_4076 (coe v0)))
-- Ledger.Dijkstra.Specification.Epoch.HasDReps-EpochState
d_HasDReps'45'EpochState_4110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
d_HasDReps'45'EpochState_4110 ~v0 ~v1
  = du_HasDReps'45'EpochState_4110
du_HasDReps'45'EpochState_4110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
du_HasDReps'45'EpochState_4110
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1204
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1202
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1842)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3872)
                 (d_ls_4074 (coe v0)))))
-- Ledger.Dijkstra.Specification.Epoch.HasTreasury-EpochState
d_HasTreasury'45'EpochState_4112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'EpochState_4112 ~v0 ~v1
  = du_HasTreasury'45'EpochState_4112
du_HasTreasury'45'EpochState_4112 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'EpochState_4112
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
              (coe d_acnt_4070 (coe v0))))
-- Ledger.Dijkstra.Specification.Epoch.HasReserves-EpochState
d_HasReserves'45'EpochState_4114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'EpochState_4114 ~v0 ~v1
  = du_HasReserves'45'EpochState_4114
du_HasReserves'45'EpochState_4114 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'EpochState_4114
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_70
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
              (coe d_acnt_4070 (coe v0))))
-- Ledger.Dijkstra.Specification.Epoch.HasPParams-EpochState
d_HasPParams'45'EpochState_4116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'EpochState_4116 ~v0 ~v1
  = du_HasPParams'45'EpochState_4116
du_HasPParams'45'EpochState_4116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'EpochState_4116
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_588
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1282)
              (d_es_4076 (coe v0))))
-- Ledger.Dijkstra.Specification.Epoch.HasRatifyState-EpochState
d_HasRatifyState'45'EpochState_4118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_HasRatifyState_2038
d_HasRatifyState'45'EpochState_4118 ~v0 ~v1
  = du_HasRatifyState'45'EpochState_4118
du_HasRatifyState'45'EpochState_4118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_HasRatifyState_2038
du_HasRatifyState'45'EpochState_4118
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_2048
      (coe (\ v0 -> d_fut_4078 (coe v0)))
-- Ledger.Dijkstra.Specification.Epoch.HasPState-EpochState
d_HasPState'45'EpochState_4120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708
d_HasPState'45'EpochState_4120 ~v0 ~v1
  = du_HasPState'45'EpochState_4120
du_HasPState'45'EpochState_4120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708
du_HasPState'45'EpochState_4120
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1718
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1716
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1836)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3872)
                 (d_ls_4074 (coe v0)))))
-- Ledger.Dijkstra.Specification.Epoch.HasRetiring-EpochState
d_HasRetiring'45'EpochState_4122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1608
d_HasRetiring'45'EpochState_4122 ~v0 ~v1
  = du_HasRetiring'45'EpochState_4122
du_HasRetiring'45'EpochState_4122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1608
du_HasRetiring'45'EpochState_4122
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1618
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1616
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRetiring'45'PState_1826)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1716
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1836)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3872)
                    (d_ls_4074 (coe v0))))))
-- Ledger.Dijkstra.Specification.Epoch.NewEpochState
d_NewEpochState_4124 a0 a1 = ()
data T_NewEpochState_4124
  = C_constructor_4150 AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_EpochState_4058
                       (Maybe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780)
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Epoch.NewEpochState.lastEpoch
d_lastEpoch_4138 :: T_NewEpochState_4124 -> AgdaAny
d_lastEpoch_4138 v0
  = case coe v0 of
      C_constructor_4150 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.NewEpochState.bprev
d_bprev_4140 ::
  T_NewEpochState_4124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_4140 v0
  = case coe v0 of
      C_constructor_4150 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.NewEpochState.bcur
d_bcur_4142 ::
  T_NewEpochState_4124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4142 v0
  = case coe v0 of
      C_constructor_4150 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.NewEpochState.epochState
d_epochState_4144 :: T_NewEpochState_4124 -> T_EpochState_4058
d_epochState_4144 v0
  = case coe v0 of
      C_constructor_4150 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.NewEpochState.ru
d_ru_4146 ::
  T_NewEpochState_4124 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780
d_ru_4146 v0
  = case coe v0 of
      C_constructor_4150 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.NewEpochState.pd
d_pd_4148 ::
  T_NewEpochState_4124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_4148 v0
  = case coe v0 of
      C_constructor_4150 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.HasNewEpochState
d_HasNewEpochState_4156 a0 a1 a2 a3 = ()
newtype T_HasNewEpochState_4156
  = C_constructor_4166 (AgdaAny -> T_NewEpochState_4124)
-- Ledger.Dijkstra.Specification.Epoch.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_4164 ::
  T_HasNewEpochState_4156 -> AgdaAny -> T_NewEpochState_4124
d_NewEpochStateOf_4164 v0
  = case coe v0 of
      C_constructor_4166 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch._.NewEpochStateOf
d_NewEpochStateOf_4170 ::
  T_HasNewEpochState_4156 -> AgdaAny -> T_NewEpochState_4124
d_NewEpochStateOf_4170 v0 = coe d_NewEpochStateOf_4164 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.HasLastEpoch
d_HasLastEpoch_4176 a0 a1 a2 a3 = ()
newtype T_HasLastEpoch_4176
  = C_constructor_4186 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Epoch.HasLastEpoch.LastEpochOf
d_LastEpochOf_4184 :: T_HasLastEpoch_4176 -> AgdaAny -> AgdaAny
d_LastEpochOf_4184 v0
  = case coe v0 of
      C_constructor_4186 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch._.LastEpochOf
d_LastEpochOf_4190 :: T_HasLastEpoch_4176 -> AgdaAny -> AgdaAny
d_LastEpochOf_4190 v0 = coe d_LastEpochOf_4184 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_4192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_HasLastEpoch_4176
d_HasLastEpoch'45'NewEpochState_4192 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_4192
du_HasLastEpoch'45'NewEpochState_4192 :: T_HasLastEpoch_4176
du_HasLastEpoch'45'NewEpochState_4192
  = coe C_constructor_4186 (coe (\ v0 -> d_lastEpoch_4138 (coe v0)))
-- Ledger.Dijkstra.Specification.Epoch.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_4194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_HasEpochState_4086
d_HasEpochState'45'NewEpochState_4194 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_4194
du_HasEpochState'45'NewEpochState_4194 :: T_HasEpochState_4086
du_HasEpochState'45'NewEpochState_4194
  = coe C_constructor_4096 (coe (\ v0 -> d_epochState_4144 (coe v0)))
-- Ledger.Dijkstra.Specification.Epoch.HasEnactState-NewEpochState
d_HasEnactState'45'NewEpochState_4196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
d_HasEnactState'45'NewEpochState_4196 ~v0 ~v1
  = du_HasEnactState'45'NewEpochState_4196
du_HasEnactState'45'NewEpochState_4196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
du_HasEnactState'45'NewEpochState_4196
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1276
      (coe (\ v0 -> d_es_4076 (coe d_epochState_4144 (coe v0))))
-- Ledger.Dijkstra.Specification.Epoch.Hastreasury-NewEpochState
d_Hastreasury'45'NewEpochState_4198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_Hastreasury'45'NewEpochState_4198 ~v0 ~v1
  = du_Hastreasury'45'NewEpochState_4198
du_Hastreasury'45'NewEpochState_4198 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_Hastreasury'45'NewEpochState_4198
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
              (coe d_acnt_4070 (coe d_epochState_4144 (coe v0)))))
-- Ledger.Dijkstra.Specification.Epoch.HasLedgerState-NewEpochState
d_HasLedgerState'45'NewEpochState_4200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3850
d_HasLedgerState'45'NewEpochState_4200 ~v0 ~v1
  = du_HasLedgerState'45'NewEpochState_4200
du_HasLedgerState'45'NewEpochState_4200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3850
du_HasLedgerState'45'NewEpochState_4200
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3860
      (coe (\ v0 -> d_ls_4074 (coe d_epochState_4144 (coe v0))))
-- Ledger.Dijkstra.Specification.Epoch.HasGovState-NewEpochState
d_HasGovState'45'NewEpochState_4202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010
d_HasGovState'45'NewEpochState_4202 ~v0 ~v1
  = du_HasGovState'45'NewEpochState_4202
du_HasGovState'45'NewEpochState_4202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010
du_HasGovState'45'NewEpochState_4202
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_constructor_2020
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2018
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGovState'45'LedgerState_3870)
              (d_ls_4074 (coe d_epochState_4144 (coe v0)))))
-- Ledger.Dijkstra.Specification.Epoch.HasCertState-NewEpochState
d_HasCertState'45'NewEpochState_4204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
d_HasCertState'45'NewEpochState_4204 ~v0 ~v1
  = du_HasCertState'45'NewEpochState_4204
du_HasCertState'45'NewEpochState_4204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
du_HasCertState'45'NewEpochState_4204
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1758
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3872)
              (d_ls_4074 (coe d_epochState_4144 (coe v0)))))
-- Ledger.Dijkstra.Specification.Epoch.HasDReps-NewEpochState
d_HasDReps'45'NewEpochState_4206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
d_HasDReps'45'NewEpochState_4206 ~v0 ~v1
  = du_HasDReps'45'NewEpochState_4206
du_HasDReps'45'NewEpochState_4206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
du_HasDReps'45'NewEpochState_4206
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1204
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1202
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1842)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3872)
                 (d_ls_4074 (coe d_epochState_4144 (coe v0))))))
-- Ledger.Dijkstra.Specification.Epoch.HasRewards-NewEpochState
d_HasRewards'45'NewEpochState_4208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
d_HasRewards'45'NewEpochState_4208 ~v0 ~v1
  = du_HasRewards'45'NewEpochState_4208
du_HasRewards'45'NewEpochState_4208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
du_HasRewards'45'NewEpochState_4208
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1638
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1636
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1840)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3872)
                 (d_ls_4074 (coe d_epochState_4144 (coe v0))))))
-- Ledger.Dijkstra.Specification.Epoch.HasPParams-NewEpochState
d_HasPParams'45'NewEpochState_4210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'NewEpochState_4210 ~v0 ~v1
  = du_HasPParams'45'NewEpochState_4210
du_HasPParams'45'NewEpochState_4210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'NewEpochState_4210
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_588
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1282)
              (d_es_4076 (coe d_epochState_4144 (coe v0)))))
-- Ledger.Dijkstra.Specification.Epoch.HasCast-EpochState
d_HasCast'45'EpochState_4212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_4212 ~v0 ~v1
  = du_HasCast'45'EpochState_4212
du_HasCast'45'EpochState_4212 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EpochState_4212
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
                                 (4058 :: Integer) (15484594232291647456 :: Integer)
                                 "Ledger.Dijkstra.Specification.Epoch.EpochState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (40 :: Integer) (15484594232291647456 :: Integer) "_.Acnt"
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
                                    (4058 :: Integer) (15484594232291647456 :: Integer)
                                    "Ledger.Dijkstra.Specification.Epoch.EpochState"
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
                                    (3728 :: Integer) (15484594232291647456 :: Integer)
                                    "Ledger.Dijkstra.Specification.Epoch._.Snapshots"
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
                                       (4058 :: Integer) (15484594232291647456 :: Integer)
                                       "Ledger.Dijkstra.Specification.Epoch.EpochState"
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
                                       (3408 :: Integer) (15484594232291647456 :: Integer)
                                       "Ledger.Dijkstra.Specification.Epoch._.LedgerState"
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
                                          (4058 :: Integer) (15484594232291647456 :: Integer)
                                          "Ledger.Dijkstra.Specification.Epoch.EpochState"
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
                                          (3118 :: Integer) (15484594232291647456 :: Integer)
                                          "Ledger.Dijkstra.Specification.Epoch._.EnactState"
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
                                             (4058 :: Integer) (15484594232291647456 :: Integer)
                                             "Ledger.Dijkstra.Specification.Epoch.EpochState"
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
                                             (3550 :: Integer) (15484594232291647456 :: Integer)
                                             "Ledger.Dijkstra.Specification.Epoch._.RatifyState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4080))
-- Ledger.Dijkstra.Specification.Epoch.HasCast-NewEpochState
d_HasCast'45'NewEpochState_4214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_4214 ~v0 ~v1
  = du_HasCast'45'NewEpochState_4214
du_HasCast'45'NewEpochState_4214 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'NewEpochState_4214
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
                                 (4124 :: Integer) (15484594232291647456 :: Integer)
                                 "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (218 :: Integer) (15484594232291647456 :: Integer) "_.Epoch"
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
                                    (4124 :: Integer) (15484594232291647456 :: Integer)
                                    "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
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
                                    (3700 :: Integer) (15484594232291647456 :: Integer)
                                    "Ledger.Dijkstra.Specification.Epoch._.BlocksMade"
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
                                       (4124 :: Integer) (15484594232291647456 :: Integer)
                                       "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
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
                                       (3700 :: Integer) (15484594232291647456 :: Integer)
                                       "Ledger.Dijkstra.Specification.Epoch._.BlocksMade"
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
                                          (4124 :: Integer) (15484594232291647456 :: Integer)
                                          "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
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
                                          (4058 :: Integer) (15484594232291647456 :: Integer)
                                          "Ledger.Dijkstra.Specification.Epoch.EpochState"
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
                                             (4124 :: Integer) (15484594232291647456 :: Integer)
                                             "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
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
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                         (3718 :: Integer)
                                                         (15484594232291647456 :: Integer)
                                                         "Ledger.Dijkstra.Specification.Epoch._.RewardUpdate"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (4124 :: Integer) (15484594232291647456 :: Integer)
                                                "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
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
                                                (4056 :: Integer) (15484594232291647456 :: Integer)
                                                "Ledger.Dijkstra.Specification.Epoch.PoolDelegatedStake"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
         (coe C_constructor_4150))
-- Ledger.Dijkstra.Specification.Epoch.createRUpd
d_createRUpd_4216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780
d_createRUpd_4216 v0 ~v1 v2 v3 v4 v5
  = du_createRUpd_4216 v0 v2 v3 v4 v5
du_createRUpd_4216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780
du_createRUpd_4216 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3814
      (coe du_Δt'8321'_4258 (coe v0) (coe v1) (coe v2) (coe v3))
      (MAlonzo.Code.Data.Integer.Base.d__'43'__284
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'45'__302 (coe (0 :: Integer))
            (coe du_Δr'8321'_4254 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            du_Δr'8322'_4266 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      (MAlonzo.Code.Data.Integer.Base.d__'45'__302
         (coe (0 :: Integer)) (coe du_feeSS_4236 (coe v3)))
      (coe du_rs_4264 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe du_Δt'45'nonneg_4340 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_Δf'45'nonpos_4342 (coe v3))
-- Ledger.Dijkstra.Specification.Epoch._.prevPp
d_prevPp_4230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_prevPp_4230 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_prevPp_4230 v4
du_prevPp_4230 ::
  T_EpochState_4058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
du_prevPp_4230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1282)
      (d_es_4076 (coe v0))
-- Ledger.Dijkstra.Specification.Epoch._.reserves
d_reserves_4232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer -> Integer
d_reserves_4232 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_reserves_4232 v4
du_reserves_4232 :: T_EpochState_4058 -> Integer
du_reserves_4232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe d_acnt_4070 (coe v0))
-- Ledger.Dijkstra.Specification.Epoch._.pstakego
d_pstakego_4234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816
d_pstakego_4234 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pstakego_4234 v4
du_pstakego_4234 ::
  T_EpochState_4058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816
du_pstakego_4234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3888
      (coe d_ss_4072 (coe v0))
-- Ledger.Dijkstra.Specification.Epoch._.feeSS
d_feeSS_4236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer -> Integer
d_feeSS_4236 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_feeSS_4236 v4
du_feeSS_4236 :: T_EpochState_4058 -> Integer
du_feeSS_4236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_3890
      (coe d_ss_4072 (coe v0))
-- Ledger.Dijkstra.Specification.Epoch._.stake
d_stake_4238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_4238 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_stake_4238 v4
du_stake_4238 ::
  T_EpochState_4058 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stake_4238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3824
      (coe du_pstakego_4234 (coe v0))
-- Ledger.Dijkstra.Specification.Epoch._.delegs
d_delegs_4240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegs_4240 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_delegs_4240 v4
du_delegs_4240 ::
  T_EpochState_4058 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegs_4240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3826
      (coe du_pstakego_4234 (coe v0))
-- Ledger.Dijkstra.Specification.Epoch._.poolParams
d_poolParams_4242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolParams_4242 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_poolParams_4242 v4
du_poolParams_4242 ::
  T_EpochState_4058 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolParams_4242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3828
      (coe du_pstakego_4234 (coe v0))
-- Ledger.Dijkstra.Specification.Epoch._.blocksMade
d_blocksMade_4244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer -> Integer
d_blocksMade_4244 v0 ~v1 ~v2 v3 ~v4 ~v5 = du_blocksMade_4244 v0 v3
du_blocksMade_4244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_blocksMade_4244 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v2 -> v2)) (coe v1)
-- Ledger.Dijkstra.Specification.Epoch._.ρ
d_ρ_4248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ρ_4248 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ρ_4248 v4
du_ρ_4248 ::
  T_EpochState_4058 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_ρ_4248 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
         (coe du_prevPp_4230 (coe v0)))
-- Ledger.Dijkstra.Specification.Epoch._.η
d_η_4250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_η_4250 v0 ~v1 v2 v3 ~v4 ~v5 = du_η_4250 v0 v2 v3
du_η_4250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_η_4250 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'247''8320'__34
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
         (coe du_blocksMade_4244 (coe v0) (coe v2)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
               (coe v0))))
-- Ledger.Dijkstra.Specification.Epoch._.τ
d_τ_4252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_τ_4252 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_τ_4252 v4
du_τ_4252 ::
  T_EpochState_4058 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_τ_4252 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
         (coe du_prevPp_4230 (coe v0)))
-- Ledger.Dijkstra.Specification.Epoch._.Δr₁
d_Δr'8321'_4254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer -> Integer
d_Δr'8321'_4254 v0 ~v1 v2 v3 v4 ~v5 = du_Δr'8321'_4254 v0 v2 v3 v4
du_Δr'8321'_4254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer
du_Δr'8321'_4254 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Base.d_floor_346
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'8851'__332
               (coe
                  MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
               (coe du_η_4250 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_4248 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_4232 (coe v3))))
-- Ledger.Dijkstra.Specification.Epoch._.rewardPot
d_rewardPot_4256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer -> Integer
d_rewardPot_4256 v0 ~v1 v2 v3 v4 ~v5
  = du_rewardPot_4256 v0 v2 v3 v4
du_rewardPot_4256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer
du_rewardPot_4256 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'43'__284
      (coe du_feeSS_4236 (coe v3))
      (coe du_Δr'8321'_4254 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Epoch._.Δt₁
d_Δt'8321'_4258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer -> Integer
d_Δt'8321'_4258 v0 ~v1 v2 v3 v4 ~v5 = du_Δt'8321'_4258 v0 v2 v3 v4
du_Δt'8321'_4258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer
du_Δt'8321'_4258 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Base.d_floor_346
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_4256 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe du_τ_4252 (coe v3)))
-- Ledger.Dijkstra.Specification.Epoch._.R
d_R_4260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer -> Integer
d_R_4260 v0 ~v1 v2 v3 v4 ~v5 = du_R_4260 v0 v2 v3 v4
du_R_4260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer
du_R_4260 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'45'__302
      (coe du_rewardPot_4256 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_Δt'8321'_4258 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Epoch._.circulation
d_circulation_4262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer -> Integer
d_circulation_4262 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_circulation_4262 v4 v5
du_circulation_4262 :: T_EpochState_4058 -> Integer -> Integer
du_circulation_4262 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1
      (coe du_reserves_4232 (coe v0))
-- Ledger.Dijkstra.Specification.Epoch._.rs
d_rs_4264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_4264 v0 ~v1 v2 v3 v4 v5 = du_rs_4264 v0 v2 v3 v4 v5
du_rs_4264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rs_4264 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_reward_3710
      (coe v0) (coe du_prevPp_4230 (coe v3)) (coe v2)
      (coe
         MAlonzo.Code.Prelude.d_posPart_58
         (coe du_R_4260 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe du_poolParams_4242 (coe v3)) (coe du_stake_4238 (coe v3))
      (coe du_delegs_4240 (coe v3))
      (coe du_circulation_4262 (coe v3) (coe v4))
-- Ledger.Dijkstra.Specification.Epoch._.Δr₂
d_Δr'8322'_4266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer -> Integer
d_Δr'8322'_4266 v0 ~v1 v2 v3 v4 v5
  = du_Δr'8322'_4266 v0 v2 v3 v4 v5
du_Δr'8322'_4266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> Integer -> Integer
du_Δr'8322'_4266 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'45'__302
      (coe du_R_4260 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v5 -> v5))
         (coe du_rs_4264 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
-- Ledger.Dijkstra.Specification.Epoch._.lemmaFlow
d_lemmaFlow_4278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemmaFlow_4278 = erased
-- Ledger.Dijkstra.Specification.Epoch._.flowConservation
d_flowConservation_4290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_4290 = erased
-- Ledger.Dijkstra.Specification.Epoch._.÷₀-0≤⇒0≤
d_'247''8320''45'0'8804''8658'0'8804'_4298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'247''8320''45'0'8804''8658'0'8804'_4298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                           v6 v7 ~v8 ~v9
  = du_'247''8320''45'0'8804''8658'0'8804'_4298 v6 v7
du_'247''8320''45'0'8804''8658'0'8804'_4298 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'247''8320''45'0'8804''8658'0'8804'_4298 v0 v1
  = let v2
          = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
              (coe v1)
              (coe
                 MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                 (coe (0 :: Integer))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
           -> if coe v3
                then coe
                       seq (coe v4)
                       (coe
                          MAlonzo.Code.Data.Rational.Properties.du_nonNegative'8315''185'_3992
                          (coe
                             MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                             (coe (0 :: Integer))))
                else coe
                       seq (coe v4)
                       (coe
                          MAlonzo.Code.Qstdlib.Data.Rational.Properties.du_'247''45'0'8804''8658'0'8804'_108
                          (coe v0) (coe v1))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Epoch._.η-nonneg
d_η'45'nonneg_4332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_η'45'nonneg_4332 v0 ~v1 v2 v3 ~v4 ~v5
  = du_η'45'nonneg_4332 v0 v2 v3
du_η'45'nonneg_4332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_η'45'nonneg_4332 v0 v1 v2
  = coe
      du_'247''8320''45'0'8804''8658'0'8804'_4298
      (let v3 = coe du_blocksMade_4244 (coe v0) (coe v2) in
       coe (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v3)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
               (coe v0))))
-- Ledger.Dijkstra.Specification.Epoch._.min1η-nonneg
d_min1η'45'nonneg_4334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_min1η'45'nonneg_4334 v0 ~v1 v2 v3 ~v4 ~v5
  = du_min1η'45'nonneg_4334 v0 v2 v3
du_min1η'45'nonneg_4334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_min1η'45'nonneg_4334 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3394
      (coe
         MAlonzo.Code.Data.Rational.Properties.d_'8804''45'totalPreorder_3646)
      (coe
         MAlonzo.Code.Data.Rational.Properties.d_'8851''45'operator_5716)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
      (coe du_η_4250 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Data.Rational.Properties.du_nonNegative'8315''185'_3992
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe (1 :: Integer))))
      (coe du_η'45'nonneg_4332 (coe v0) (coe v1) (coe v2))
-- Ledger.Dijkstra.Specification.Epoch._.Δr₁-nonneg
d_Δr'8321''45'nonneg_4336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δr'8321''45'nonneg_4336 v0 ~v1 v2 v3 v4 ~v5
  = du_Δr'8321''45'nonneg_4336 v0 v2 v3 v4
du_Δr'8321''45'nonneg_4336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δr'8321''45'nonneg_4336 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Qstdlib.Data.Rational.Properties.d_0'8804''8658'0'8804'floor_36
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'8851'__332
               (coe
                  MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
               (coe du_η_4250 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_4248 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_4232 (coe v3))))
      (coe
         MAlonzo.Code.Qstdlib.Data.Rational.Properties.du_'42''45'0'8804''8658'0'8804'_68
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'8851'__332
               (coe
                  MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
               (coe du_η_4250 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_4248 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_4232 (coe v3)))
         (coe
            MAlonzo.Code.Qstdlib.Data.Rational.Properties.d_fromℕ'45'0'8804'_60
            (coe du_reserves_4232 (coe v3))))
-- Ledger.Dijkstra.Specification.Epoch._.rewardPot-nonneg
d_rewardPot'45'nonneg_4338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_rewardPot'45'nonneg_4338 v0 ~v1 v2 v3 v4 ~v5
  = du_rewardPot'45'nonneg_4338 v0 v2 v3 v4
du_rewardPot'45'nonneg_4338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_rewardPot'45'nonneg_4338 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Properties.d_'43''45'mono'45''8804'_4632
      (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12)
      (coe du_feeSS_4236 (coe v3)) (coe (0 :: Integer))
      (coe du_Δr'8321'_4254 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_nonNegative'8315''185'_3338)
      (coe
         du_Δr'8321''45'nonneg_4336 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Epoch._.Δt-nonneg
d_Δt'45'nonneg_4340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonneg_4340 v0 ~v1 v2 v3 v4 ~v5
  = du_Δt'45'nonneg_4340 v0 v2 v3 v4
du_Δt'45'nonneg_4340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δt'45'nonneg_4340 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Qstdlib.Data.Rational.Properties.d_0'8804''8658'0'8804'floor_36
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_4256 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
               (coe du_prevPp_4230 (coe v3)))))
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.du_UnitInterval'45''42''45'0'8804'_174
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_4256 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
            (coe du_prevPp_4230 (coe v3))))
-- Ledger.Dijkstra.Specification.Epoch._.Δf-nonpos
d_Δf'45'nonpos_4342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_4058 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpos_4342 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_Δf'45'nonpos_4342 v4
du_Δf'45'nonpos_4342 ::
  T_EpochState_4058 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δf'45'nonpos_4342 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe
            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908)
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2954 v3))
      (MAlonzo.Code.Data.Integer.Base.d__'45'__302
         (coe (0 :: Integer)) (coe du_feeSS_4236 (coe v0)))
      (0 :: Integer)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
         (\ v1 v2 v3 v4 v5 -> v5)
         (MAlonzo.Code.Data.Integer.Base.d__'45'__302
            (coe (0 :: Integer)) (coe du_feeSS_4236 (coe v0)))
         (MAlonzo.Code.Data.Integer.Base.d_'45'__260
            (coe du_feeSS_4236 (coe v0)))
         (0 :: Integer)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe
                  MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908)
               (\ v1 v2 v3 v4 v5 ->
                  coe
                    MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3066
                    v4 v5))
            (MAlonzo.Code.Data.Integer.Base.d_'45'__260
               (coe du_feeSS_4236 (coe v0)))
            (0 :: Integer) (0 :: Integer)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe
                     MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908))
               (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Data.Integer.Properties.du_neg'45'mono'45''8804'_3380
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_3890
                  (coe d_ss_4072 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                  (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))))
         erased)
-- Ledger.Dijkstra.Specification.Epoch.applyRUpd
d_applyRUpd_4348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  T_EpochState_4058 -> T_EpochState_4058
d_applyRUpd_4348 v0 ~v1 v2 v3 = du_applyRUpd_4348 v0 v2 v3
du_applyRUpd_4348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  T_EpochState_4058 -> T_EpochState_4058
du_applyRUpd_4348 v0 v1 v2
  = case coe v2 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4080 v3 v4 v5 v6 v7
        -> case coe v3 of
             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_'10214'_'44'_'10215''7491'_204 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_3844 v10 v11 v12
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_'10214'_'44'_'44'_'10215''7512'_3214 v13 v14 v15
                             -> case coe v12 of
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1434 v16 v17 v18
                                    -> case coe v16 of
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1382 v19 v20 v21 v22
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                (coe
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
                                                                              (4058 :: Integer)
                                                                              (15484594232291647456 ::
                                                                                 Integer)
                                                                              "Ledger.Dijkstra.Specification.Epoch.EpochState"
                                                                              (MAlonzo.RTE.Fixity
                                                                                 MAlonzo.RTE.NonAssoc
                                                                                 MAlonzo.RTE.Unrelated)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                     (coe ("r" :: Data.Text.Text))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                        (coe
                                                                           (MAlonzo.RTE.QName
                                                                              (40 :: Integer)
                                                                              (15484594232291647456 ::
                                                                                 Integer)
                                                                              "_.Acnt"
                                                                              (MAlonzo.RTE.Fixity
                                                                                 MAlonzo.RTE.NonAssoc
                                                                                 MAlonzo.RTE.Unrelated)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                 (4058 :: Integer)
                                                                                 (15484594232291647456 ::
                                                                                    Integer)
                                                                                 "Ledger.Dijkstra.Specification.Epoch.EpochState"
                                                                                 (MAlonzo.RTE.Fixity
                                                                                    MAlonzo.RTE.NonAssoc
                                                                                    MAlonzo.RTE.Unrelated)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                        (coe
                                                                           ("r" :: Data.Text.Text))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                           (coe
                                                                              (MAlonzo.RTE.QName
                                                                                 (3728 :: Integer)
                                                                                 (15484594232291647456 ::
                                                                                    Integer)
                                                                                 "Ledger.Dijkstra.Specification.Epoch._.Snapshots"
                                                                                 (MAlonzo.RTE.Fixity
                                                                                    MAlonzo.RTE.NonAssoc
                                                                                    MAlonzo.RTE.Unrelated)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                    (4058 ::
                                                                                       Integer)
                                                                                    (15484594232291647456 ::
                                                                                       Integer)
                                                                                    "Ledger.Dijkstra.Specification.Epoch.EpochState"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                           (coe
                                                                              ("r"
                                                                               ::
                                                                               Data.Text.Text))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                              (coe
                                                                                 (MAlonzo.RTE.QName
                                                                                    (3408 ::
                                                                                       Integer)
                                                                                    (15484594232291647456 ::
                                                                                       Integer)
                                                                                    "Ledger.Dijkstra.Specification.Epoch._.LedgerState"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                       (4058 ::
                                                                                          Integer)
                                                                                       (15484594232291647456 ::
                                                                                          Integer)
                                                                                       "Ledger.Dijkstra.Specification.Epoch.EpochState"
                                                                                       (MAlonzo.RTE.Fixity
                                                                                          MAlonzo.RTE.NonAssoc
                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                              (coe
                                                                                 ("r"
                                                                                  ::
                                                                                  Data.Text.Text))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                 (coe
                                                                                    (MAlonzo.RTE.QName
                                                                                       (3118 ::
                                                                                          Integer)
                                                                                       (15484594232291647456 ::
                                                                                          Integer)
                                                                                       "Ledger.Dijkstra.Specification.Epoch._.EnactState"
                                                                                       (MAlonzo.RTE.Fixity
                                                                                          MAlonzo.RTE.NonAssoc
                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                          (4058 ::
                                                                                             Integer)
                                                                                          (15484594232291647456 ::
                                                                                             Integer)
                                                                                          "Ledger.Dijkstra.Specification.Epoch.EpochState"
                                                                                          (MAlonzo.RTE.Fixity
                                                                                             MAlonzo.RTE.NonAssoc
                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                 (coe
                                                                                    ("r"
                                                                                     ::
                                                                                     Data.Text.Text))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                    (coe
                                                                                       (MAlonzo.RTE.QName
                                                                                          (3550 ::
                                                                                             Integer)
                                                                                          (15484594232291647456 ::
                                                                                             Integer)
                                                                                          "Ledger.Dijkstra.Specification.Epoch._.RatifyState"
                                                                                          (MAlonzo.RTE.Fixity
                                                                                             MAlonzo.RTE.NonAssoc
                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                      (coe
                                                         C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4080)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                      (coe
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
                                                                                    (194 :: Integer)
                                                                                    (16149215068455016276 ::
                                                                                       Integer)
                                                                                    "Ledger.Dijkstra.Specification.PParams.Acnt"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                           (coe
                                                                              ("r"
                                                                               ::
                                                                               Data.Text.Text))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                              (coe
                                                                                 (MAlonzo.RTE.QName
                                                                                    (6 :: Integer)
                                                                                    (14798748958053396954 ::
                                                                                       Integer)
                                                                                    "Ledger.Prelude.Base.Coin"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                       (194 ::
                                                                                          Integer)
                                                                                       (16149215068455016276 ::
                                                                                          Integer)
                                                                                       "Ledger.Dijkstra.Specification.PParams.Acnt"
                                                                                       (MAlonzo.RTE.Fixity
                                                                                          MAlonzo.RTE.NonAssoc
                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                              (coe
                                                                                 ("r"
                                                                                  ::
                                                                                  Data.Text.Text))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                 (coe
                                                                                    (MAlonzo.RTE.QName
                                                                                       (6 ::
                                                                                          Integer)
                                                                                       (14798748958053396954 ::
                                                                                          Integer)
                                                                                       "Ledger.Prelude.Base.Coin"
                                                                                       (MAlonzo.RTE.Fixity
                                                                                          MAlonzo.RTE.NonAssoc
                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_'10214'_'44'_'10215''7491'_204)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Prelude.d_posPart_58
                                                            (coe
                                                               MAlonzo.Code.Data.Integer.Base.d__'43'__284
                                                               (coe
                                                                  MAlonzo.Code.Data.Integer.Base.d__'43'__284
                                                                  (coe v8)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt_3798
                                                                     (coe v1)))
                                                               (coe
                                                                  du_unregRU''_4400 (coe v0)
                                                                  (coe v1) (coe v21))))
                                                         (coe
                                                            MAlonzo.Code.Prelude.d_posPart_58
                                                            (coe
                                                               MAlonzo.Code.Data.Integer.Base.d__'43'__284
                                                               (coe v9)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δr_3800
                                                                  (coe v1))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v4)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                            (coe
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
                                                                                          (3830 ::
                                                                                             Integer)
                                                                                          (2632180534421049758 ::
                                                                                             Integer)
                                                                                          "Ledger.Dijkstra.Specification.Ledger.LedgerState"
                                                                                          (MAlonzo.RTE.Fixity
                                                                                             MAlonzo.RTE.NonAssoc
                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                 (coe
                                                                                    ("r"
                                                                                     ::
                                                                                     Data.Text.Text))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                    (coe
                                                                                       (MAlonzo.RTE.QName
                                                                                          (2970 ::
                                                                                             Integer)
                                                                                          (2632180534421049758 ::
                                                                                             Integer)
                                                                                          "Ledger.Dijkstra.Specification.Ledger._.UTxOState"
                                                                                          (MAlonzo.RTE.Fixity
                                                                                             MAlonzo.RTE.NonAssoc
                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                             (3830 ::
                                                                                                Integer)
                                                                                             (2632180534421049758 ::
                                                                                                Integer)
                                                                                             "Ledger.Dijkstra.Specification.Ledger.LedgerState"
                                                                                             (MAlonzo.RTE.Fixity
                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                    (coe
                                                                                       ("r"
                                                                                        ::
                                                                                        Data.Text.Text))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                       (coe
                                                                                          (MAlonzo.RTE.QName
                                                                                             (2726 ::
                                                                                                Integer)
                                                                                             (2632180534421049758 ::
                                                                                                Integer)
                                                                                             "Ledger.Dijkstra.Specification.Ledger._.GovState"
                                                                                             (MAlonzo.RTE.Fixity
                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                                (3830 ::
                                                                                                   Integer)
                                                                                                (2632180534421049758 ::
                                                                                                   Integer)
                                                                                                "Ledger.Dijkstra.Specification.Ledger.LedgerState"
                                                                                                (MAlonzo.RTE.Fixity
                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                       (coe
                                                                                          ("r"
                                                                                           ::
                                                                                           Data.Text.Text))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                          (coe
                                                                                             (MAlonzo.RTE.QName
                                                                                                (3238 ::
                                                                                                   Integer)
                                                                                                (2632180534421049758 ::
                                                                                                   Integer)
                                                                                                "Ledger.Dijkstra.Specification.Ledger._.CertState"
                                                                                                (MAlonzo.RTE.Fixity
                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_3844)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                  (coe
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
                                                                                                (3200 ::
                                                                                                   Integer)
                                                                                                (1252473578754917138 ::
                                                                                                   Integer)
                                                                                                "Ledger.Dijkstra.Specification.Utxo.UTxOState"
                                                                                                (MAlonzo.RTE.Fixity
                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                       (coe
                                                                                          ("r"
                                                                                           ::
                                                                                           Data.Text.Text))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                          (coe
                                                                                             (MAlonzo.RTE.QName
                                                                                                (946 ::
                                                                                                   Integer)
                                                                                                (1252473578754917138 ::
                                                                                                   Integer)
                                                                                                "_.UTxO"
                                                                                                (MAlonzo.RTE.Fixity
                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                                   (3200 ::
                                                                                                      Integer)
                                                                                                   (1252473578754917138 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Dijkstra.Specification.Utxo.UTxOState"
                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                      MAlonzo.RTE.Unrelated)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                          (coe
                                                                                             ("r"
                                                                                              ::
                                                                                              Data.Text.Text))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                             (coe
                                                                                                (MAlonzo.RTE.QName
                                                                                                   (10 ::
                                                                                                      Integer)
                                                                                                   (14798748958053396954 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Prelude.Base.Fees"
                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                      MAlonzo.RTE.Unrelated)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                                      (3200 ::
                                                                                                         Integer)
                                                                                                      (1252473578754917138 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Dijkstra.Specification.Utxo.UTxOState"
                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                             (coe
                                                                                                ("r"
                                                                                                 ::
                                                                                                 Data.Text.Text))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                (coe
                                                                                                   (MAlonzo.RTE.QName
                                                                                                      (8 ::
                                                                                                         Integer)
                                                                                                      (14798748958053396954 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Prelude.Base.Donations"
                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_'10214'_'44'_'44'_'10215''7512'_3214)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe v13)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Prelude.d_posPart_58
                                                                           (coe
                                                                              MAlonzo.Code.Data.Integer.Base.d__'43'__284
                                                                              (coe v14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf_3802
                                                                                 (coe v1))))
                                                                        (coe v15))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe v11)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                     (coe
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
                                                                                                   (1420 ::
                                                                                                      Integer)
                                                                                                   (9780623556273767673 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Dijkstra.Specification.Certs.CertState"
                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                      MAlonzo.RTE.Unrelated)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                          (coe
                                                                                             ("r"
                                                                                              ::
                                                                                              Data.Text.Text))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                             (coe
                                                                                                (MAlonzo.RTE.QName
                                                                                                   (1364 ::
                                                                                                      Integer)
                                                                                                   (9780623556273767673 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Dijkstra.Specification.Certs.DState"
                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                      MAlonzo.RTE.Unrelated)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                                      (1420 ::
                                                                                                         Integer)
                                                                                                      (9780623556273767673 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Dijkstra.Specification.Certs.CertState"
                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                             (coe
                                                                                                ("r"
                                                                                                 ::
                                                                                                 Data.Text.Text))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                (coe
                                                                                                   (MAlonzo.RTE.QName
                                                                                                      (1384 ::
                                                                                                         Integer)
                                                                                                      (9780623556273767673 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Dijkstra.Specification.Certs.PState"
                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                                         (1420 ::
                                                                                                            Integer)
                                                                                                         (9780623556273767673 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Dijkstra.Specification.Certs.CertState"
                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                (coe
                                                                                                   ("r"
                                                                                                    ::
                                                                                                    Data.Text.Text))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                   (coe
                                                                                                      (MAlonzo.RTE.QName
                                                                                                         (1404 ::
                                                                                                            Integer)
                                                                                                         (9780623556273767673 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Dijkstra.Specification.Certs.GState"
                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1434)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                           (coe
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
                                                                                                         (1364 ::
                                                                                                            Integer)
                                                                                                         (9780623556273767673 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Dijkstra.Specification.Certs.DState"
                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                (coe
                                                                                                   ("r"
                                                                                                    ::
                                                                                                    Data.Text.Text))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                   (coe
                                                                                                      (MAlonzo.RTE.QName
                                                                                                         (1042 ::
                                                                                                            Integer)
                                                                                                         (9780623556273767673 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Dijkstra.Specification.Certs._.VoteDelegs"
                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                                            (1364 ::
                                                                                                               Integer)
                                                                                                            (9780623556273767673 ::
                                                                                                               Integer)
                                                                                                            "Ledger.Dijkstra.Specification.Certs.DState"
                                                                                                            (MAlonzo.RTE.Fixity
                                                                                                               MAlonzo.RTE.NonAssoc
                                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                   (coe
                                                                                                      ("r"
                                                                                                       ::
                                                                                                       Data.Text.Text))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                      (coe
                                                                                                         (MAlonzo.RTE.QName
                                                                                                            (1306 ::
                                                                                                               Integer)
                                                                                                            (9780623556273767673 ::
                                                                                                               Integer)
                                                                                                            "Ledger.Dijkstra.Specification.Certs.StakeDelegs"
                                                                                                            (MAlonzo.RTE.Fixity
                                                                                                               MAlonzo.RTE.NonAssoc
                                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                                               (1364 ::
                                                                                                                  Integer)
                                                                                                               (9780623556273767673 ::
                                                                                                                  Integer)
                                                                                                               "Ledger.Dijkstra.Specification.Certs.DState"
                                                                                                               (MAlonzo.RTE.Fixity
                                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                      (coe
                                                                                                         ("r"
                                                                                                          ::
                                                                                                          Data.Text.Text))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                         (coe
                                                                                                            (MAlonzo.RTE.QName
                                                                                                               (1302 ::
                                                                                                                  Integer)
                                                                                                               (9780623556273767673 ::
                                                                                                                  Integer)
                                                                                                               "Ledger.Dijkstra.Specification.Certs.Rewards"
                                                                                                               (MAlonzo.RTE.Fixity
                                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                                                  (1364 ::
                                                                                                                     Integer)
                                                                                                                  (9780623556273767673 ::
                                                                                                                     Integer)
                                                                                                                  "Ledger.Dijkstra.Specification.Certs.DState"
                                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                                     MAlonzo.RTE.Unrelated)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                         (coe
                                                                                                            ("r"
                                                                                                             ::
                                                                                                             Data.Text.Text))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                            (coe
                                                                                                               (MAlonzo.RTE.QName
                                                                                                                  (182 ::
                                                                                                                     Integer)
                                                                                                                  (9254951203007797098 ::
                                                                                                                     Integer)
                                                                                                                  "abstract-set-theory.FiniteSetTheory._.Map"
                                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                                     MAlonzo.RTE.RightAssoc
                                                                                                                     (MAlonzo.RTE.Related
                                                                                                                        (1.0 ::
                                                                                                                           Double)))))
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
                                                                                                                           (46 ::
                                                                                                                              Integer)
                                                                                                                           (9780623556273767673 ::
                                                                                                                              Integer)
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
                                                                                                                                    (320 ::
                                                                                                                                       Integer)
                                                                                                                                    (753823221557309123 ::
                                                                                                                                       Integer)
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
                                                                                                                                             (746 ::
                                                                                                                                                Integer)
                                                                                                                                             (7688957888625230675 ::
                                                                                                                                                Integer)
                                                                                                                                             "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                                                                                       (26 ::
                                                                                                                                          Integer)
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
                                                                                                                                                   (220 ::
                                                                                                                                                      Integer)
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
                                                                                                                                                            (648 ::
                                                                                                                                                               Integer)
                                                                                                                                                            (7688957888625230675 ::
                                                                                                                                                               Integer)
                                                                                                                                                            "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                                                                                          (224 ::
                                                                                                                                             Integer)
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
                                                                                                                                                   (648 ::
                                                                                                                                                      Integer)
                                                                                                                                                   (7688957888625230675 ::
                                                                                                                                                      Integer)
                                                                                                                                                   "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                                                                              (6 ::
                                                                                                                                 Integer)
                                                                                                                              (14798748958053396954 ::
                                                                                                                                 Integer)
                                                                                                                              "Ledger.Prelude.Base.Coin"
                                                                                                                              (MAlonzo.RTE.Fixity
                                                                                                                                 MAlonzo.RTE.NonAssoc
                                                                                                                                 MAlonzo.RTE.Unrelated)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1382)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v19)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v20)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                                                                   (coe
                                                                                                      v0))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                                                                (coe
                                                                                                   v0))))
                                                                                       v21
                                                                                       (coe
                                                                                          du_regRU_4396
                                                                                          (coe v0)
                                                                                          (coe v1)
                                                                                          (coe
                                                                                             v21)))
                                                                                    (coe v22)))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v17) (coe v18)))))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v6) (coe v7)))))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch._.regRU
d_regRU_4396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_4396 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
             ~v13 ~v14 ~v15 ~v16 ~v17
  = du_regRU_4396 v0 v2 v12
du_regRU_4396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_4396 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_rs_3804
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2))
-- Ledger.Dijkstra.Specification.Epoch._.unregRU
d_unregRU_4398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_4398 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
               ~v13 ~v14 ~v15 ~v16 ~v17
  = du_unregRU_4398 v0 v2 v12
du_unregRU_4398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_4398 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_rs_3804
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2))
-- Ledger.Dijkstra.Specification.Epoch._.unregRU'
d_unregRU''_4400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  Integer
d_unregRU''_4400 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 v12 ~v13 ~v14 ~v15 ~v16 ~v17
  = du_unregRU''_4400 v0 v2 v12
du_unregRU''_4400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_4400 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v3 -> v3)) (coe du_unregRU_4398 (coe v0) (coe v1) (coe v2))
-- Ledger.Dijkstra.Specification.Epoch.calculatePoolDelegatedStake
d_calculatePoolDelegatedStake_4404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStake_4404 v0 ~v1 v2
  = du_calculatePoolDelegatedStake_4404 v0 v2
du_calculatePoolDelegatedStake_4404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_calculatePoolDelegatedStake_4404 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                  (coe v0)))))
      (coe du_sd_4414 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3828
            (coe v1)))
-- Ledger.Dijkstra.Specification.Epoch._.stakeCredentialsPerPool
d_stakeCredentialsPerPool_4412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeCredentialsPerPool_4412 ~v0 ~v1 v2
  = du_stakeCredentialsPerPool_4412 v2
du_stakeCredentialsPerPool_4412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeCredentialsPerPool_4412 v0
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8315''185''691'_362
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3826
            (coe v0)))
-- Ledger.Dijkstra.Specification.Epoch._.sd
d_sd_4414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sd_4414 v0 ~v1 v2 = du_sd_4414 v0 v2
du_sd_4414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sd_4414 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_584
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
               (coe v0))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1258
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8728''691'__1278
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                     (coe v0))))
            (coe du_stakeCredentialsPerPool_4412 (coe v1))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3824
                  (coe v1)))))
-- Ledger.Dijkstra.Specification.Epoch.stakeFromGADeposits
d_stakeFromGADeposits_4416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeFromGADeposits_4416 v0 ~v1 v2
  = du_stakeFromGADeposits_4416 v0 v2
du_stakeFromGADeposits_4416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeFromGADeposits_4416 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldr_216
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                          (coe v0))))
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                       (coe v0))))
              (coe
                 MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                 (coe
                    MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1028
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1036
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
      (coe v1)
-- Ledger.Dijkstra.Specification.Epoch.VDelegDelegatedStake.activeDReps
d_activeDReps_4438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_4438 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_activeDReps_4438 v0 v2 v5
du_activeDReps_4438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_activeDReps_4438 v0 v1 v2
  = coe
      MAlonzo.Code.Class.IsSet.du_dom_586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1574
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'GState_1828)
         (coe v2) (coe v1))
-- Ledger.Dijkstra.Specification.Epoch.VDelegDelegatedStake.activeVDelegs
d_activeVDelegs_4440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_VDeleg_966]
d_activeVDelegs_4440 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_activeVDelegs_4440 v0 v2 v5
du_activeVDelegs_4440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_VDeleg_966]
du_activeVDelegs_4440 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_vDelegCredential_968)
         (coe du_activeDReps_4438 (coe v0) (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            erased
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_vDelegNoConfidence_972))
         (coe
            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            erased
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_vDelegAbstain_970)))
-- Ledger.Dijkstra.Specification.Epoch.VDelegDelegatedStake.stakePerCredential
d_stakePerCredential_4442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer
d_stakePerCredential_4442 v0 ~v1 ~v2 v3 v4 ~v5 v6 v7
  = du_stakePerCredential_4442 v0 v3 v4 v6 v7
du_stakePerCredential_4442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer
du_stakePerCredential_4442 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_cbalance_3398
            (coe v0)
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8739''94'''__1440
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3208
                  (coe v1))
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                       (coe
                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                      (coe v0))))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4))))))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46 (0 :: Integer)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe du_stakeFromGADeposits_4416 (coe v0) (coe v2)) (coe v4)
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                  (coe
                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                              (coe v0)))))
                  (coe v4)
                  (let v5
                         = MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v5
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                           (coe du_stakeFromGADeposits_4416 (coe v0) (coe v2)))))))))
      (coe
         MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46 (0 :: Integer)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1378
               (coe v3))
            (coe v4)
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
               (coe
                  MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                           (coe v0)))))
               (coe v4)
               (let v5
                      = MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                coe
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v5
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1378
                           (coe v3))))))))
-- Ledger.Dijkstra.Specification.Epoch.VDelegDelegatedStake.calculate
d_calculate_4450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculate_4450 v0 ~v1 v2 v3 v4 v5 v6
  = du_calculate_4450 v0 v2 v3 v4 v5 v6
du_calculate_4450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_calculate_4450 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1274
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v6 ->
            coe
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum''_1452
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                          (coe v0))))
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                       (coe v0))))
              (coe
                 MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
              (coe
                 du_stakePerCredential_4442 (coe v0) (coe v2) (coe v3) (coe v5))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1294
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
                          (coe v0))))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1086
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1812)
                    v5)
                 (coe v6))))
      (coe du_activeVDelegs_4440 (coe v0) (coe v1) (coe v4))
-- Ledger.Dijkstra.Specification.Epoch.calculateVDelegDelegatedStake
d_calculateVDelegDelegatedStake_4456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculateVDelegDelegatedStake_4456 v0 ~v1
  = du_calculateVDelegDelegatedStake_4456 v0
du_calculateVDelegDelegatedStake_4456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_calculateVDelegDelegatedStake_4456 v0
  = coe du_calculate_4450 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.calculatePoolDelegatedStakeForVoting
d_calculatePoolDelegatedStakeForVoting_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStakeForVoting_4458 v0 ~v1 v2 v3
  = du_calculatePoolDelegatedStakeForVoting_4458 v0 v2 v3
du_calculatePoolDelegatedStakeForVoting_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_calculatePoolDelegatedStakeForVoting_4458 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
               (coe v0))))
      (coe du_calculatePoolDelegatedStake_4404 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                     (coe v0)))))
         (coe du_stakeFromDeposits_4468 (coe v0) (coe v1) (coe v2))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3828
               (coe v1))))
-- Ledger.Dijkstra.Specification.Epoch._.stakeFromDeposits
d_stakeFromDeposits_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeFromDeposits_4468 v0 ~v1 v2 v3
  = du_stakeFromDeposits_4468 v0 v2 v3
du_stakeFromDeposits_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeFromDeposits_4468 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_584
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
               (coe v0))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1258
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8728''691'__1278
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                     (coe v0))))
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du__'8315''185''691'_362
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3826
                     (coe v1))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe du_stakeFromGADeposits_4416 (coe v0) (coe v2)))))
-- Ledger.Dijkstra.Specification.Epoch.mkStakeDistrs
d_mkStakeDistrs_4470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_StakeDistrs_1974
d_mkStakeDistrs_4470 v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_mkStakeDistrs_4470 v0 v2 v3 v4 v5 v6 v7
du_mkStakeDistrs_4470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3816 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_StakeDistrs_1974
du_mkStakeDistrs_4470 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
      (coe
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
                                    (1974 :: Integer) (6225261096894507446 :: Integer)
                                    "Ledger.Dijkstra.Specification.Ratify.StakeDistrs"
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
                                    (182 :: Integer) (9254951203007797098 :: Integer)
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
                                             (754 :: Integer) (6225261096894507446 :: Integer)
                                             "Ledger.Dijkstra.Specification.Ratify._.VDeleg"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                (6 :: Integer) (14798748958053396954 :: Integer)
                                                "Ledger.Prelude.Base.Coin"
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
                                       (1974 :: Integer) (6225261096894507446 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ratify.StakeDistrs"
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
                                       (182 :: Integer) (9254951203007797098 :: Integer)
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (1138 :: Integer) (6225261096894507446 :: Integer)
                                                "Ledger.Dijkstra.Specification.Ratify._.THash"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                   (6 :: Integer) (14798748958053396954 :: Integer)
                                                   "Ledger.Prelude.Base.Coin"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_1984)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe du_calculateVDelegDelegatedStake_4456 v0 v2 v3 v4 v5 v6)
         (coe
            du_calculatePoolDelegatedStakeForVoting_4458 (coe v0) (coe v1)
            (coe v4)))
-- Ledger.Dijkstra.Specification.Epoch.getOrphans
d_getOrphans_4534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_4534 v0 ~v1 v2 v3 = du_getOrphans_4534 v0 v2 v3
du_getOrphans_4534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getOrphans_4534 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
         (coe du_step_4544 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v2))
         (coe MAlonzo.Code.Data.List.Base.du_length_268 v2))
-- Ledger.Dijkstra.Specification.Epoch._.step
d_step_4544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_step_4544 v0 ~v1 v2 ~v3 v4 = du_step_4544 v0 v2 v4
du_step_4544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_step_4544 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Data.List.Base.du_partition_680
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_76
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_hasParent'63'_2346
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
                                    (coe v0))
                                 (coe v1) (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_890
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1032
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1034
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
                      (coe v4))))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe
                   MAlonzo.Code.Data.List.Base.du_partition_680
                   (coe
                      (\ v5 ->
                         coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_76
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_hasParent'63'_2346
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
                                 (coe v0))
                              (coe v1) (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_890
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1032
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1034
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
                   (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.toRewardAddress
d_toRewardAddress_4566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_toRewardAddress_4566 v0 ~v1 v2 = du_toRewardAddress_4566 v0 v2
du_toRewardAddress_4566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
du_toRewardAddress_4566 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_126
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
            (coe v0)))
      (coe v1)
-- Ledger.Dijkstra.Specification.Epoch.Governance-Update
d_Governance'45'Update_4570 a0 a1 = ()
data T_Governance'45'Update_4570
  = C_GovernanceUpdate_4580 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Dijkstra.Specification.Epoch.Governance-Update.removedGovActions
d_removedGovActions_4576 ::
  T_Governance'45'Update_4570 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_4576 v0
  = case coe v0 of
      C_GovernanceUpdate_4580 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.Governance-Update.govSt'
d_govSt''_4578 ::
  T_Governance'45'Update_4570 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_4578 v0
  = case coe v0 of
      C_GovernanceUpdate_4580 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.GovernanceUpdate.tmpGovSt
d_tmpGovSt_4604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_tmpGovSt_4604 v0 ~v1 v2 v3 = du_tmpGovSt_4604 v0 v2 v3
du_tmpGovSt_4604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_tmpGovSt_4604 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_filter_92
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
           (coe
              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
              (coe
                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                    (coe v0))
                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
              (coe
                 MAlonzo.Code.Class.IsSet.d_toSet_526
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_map_426
                    (MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_2028
                       (coe v2)))))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3840
         (coe v1))
-- Ledger.Dijkstra.Specification.Epoch.GovernanceUpdate.orphans
d_orphans_4608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_orphans_4608 v0 ~v1 v2 v3 = du_orphans_4608 v0 v2 v3
du_orphans_4608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_orphans_4608 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_fromList_456
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         du_getOrphans_4534 (coe v0)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2026
            (coe v2))
         (coe du_tmpGovSt_4604 (coe v0) (coe v1) (coe v2)))
-- Ledger.Dijkstra.Specification.Epoch.GovernanceUpdate.removed'
d_removed''_4610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed''_4610 v0 ~v1 v2 v3 = du_removed''_4610 v0 v2 v3
du_removed''_4610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed''_4610 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_2028
         (coe v2))
      (coe du_orphans_4608 (coe v0) (coe v1) (coe v2))
-- Ledger.Dijkstra.Specification.Epoch.GovernanceUpdate.removedGovActions
d_removedGovActions_4612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_4612 v0 ~v1 v2 v3
  = du_removedGovActions_4612 v0 v2 v3
du_removedGovActions_4612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removedGovActions_4612 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (\ v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1028
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1036
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
      (coe du_removed''_4610 (coe v0) (coe v1) (coe v2))
-- Ledger.Dijkstra.Specification.Epoch.GovernanceUpdate.govSt'
d_govSt''_4618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_4618 v0 ~v1 v2 v3 = du_govSt''_4618 v0 v2 v3
du_govSt''_4618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_4618 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_filter_92
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
           (coe
              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
              (coe
                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                    (coe v0))
                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
              (coe
                 MAlonzo.Code.Class.IsSet.d_toSet_526
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_map_426
                    (MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (coe du_removed''_4610 (coe v0) (coe v1) (coe v2)))))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3840
         (coe v1))
-- Ledger.Dijkstra.Specification.Epoch.GovernanceUpdate.updates
d_updates_4622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  T_Governance'45'Update_4570
d_updates_4622 v0 ~v1 v2 v3 = du_updates_4622 v0 v2 v3
du_updates_4622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2018 ->
  T_Governance'45'Update_4570
du_updates_4622 v0 v1 v2
  = coe
      C_GovernanceUpdate_4580
      (coe du_removedGovActions_4612 (coe v0) (coe v1) (coe v2))
      (coe du_govSt''_4618 (coe v0) (coe v1) (coe v2))
-- Ledger.Dijkstra.Specification.Epoch.Pre-POOLREAP-Update
d_Pre'45'POOLREAP'45'Update_4624 a0 a1 = ()
data T_Pre'45'POOLREAP'45'Update_4624
  = C_Pre'45'POOLREAPUpdate_4638 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
-- Ledger.Dijkstra.Specification.Epoch.Pre-POOLREAP-Update.pState'
d_pState''_4632 ::
  T_Pre'45'POOLREAP'45'Update_4624 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
d_pState''_4632 v0
  = case coe v0 of
      C_Pre'45'POOLREAPUpdate_4638 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.Pre-POOLREAP-Update.gState'
d_gState''_4634 ::
  T_Pre'45'POOLREAP'45'Update_4624 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404
d_gState''_4634 v0
  = case coe v0 of
      C_Pre'45'POOLREAPUpdate_4638 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.Pre-POOLREAP-Update.utxoSt'
d_utxoSt''_4636 ::
  T_Pre'45'POOLREAP'45'Update_4624 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
d_utxoSt''_4636 v0
  = case coe v0 of
      C_Pre'45'POOLREAPUpdate_4638 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.Pre-POOLREAPUpdate._.govSt'
d_govSt''_4674 ::
  T_Governance'45'Update_4570 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_4674 v0 = coe d_govSt''_4578 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Pre-POOLREAPUpdate._.removedGovActions
d_removedGovActions_4676 ::
  T_Governance'45'Update_4570 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_4676 v0 = coe d_removedGovActions_4576 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Pre-POOLREAPUpdate.utxoSt'
d_utxoSt''_4678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
d_utxoSt''_4678 ~v0 ~v1 v2 ~v3 ~v4 = du_utxoSt''_4678 v2
du_utxoSt''_4678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
du_utxoSt''_4678 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
      (coe
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
                                    (3200 :: Integer) (1252473578754917138 :: Integer)
                                    "Ledger.Dijkstra.Specification.Utxo.UTxOState"
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
                                    (946 :: Integer) (1252473578754917138 :: Integer) "_.UTxO"
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
                                       (3200 :: Integer) (1252473578754917138 :: Integer)
                                       "Ledger.Dijkstra.Specification.Utxo.UTxOState"
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
                                       (10 :: Integer) (14798748958053396954 :: Integer)
                                       "Ledger.Prelude.Base.Fees"
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
                                          (3200 :: Integer) (1252473578754917138 :: Integer)
                                          "Ledger.Dijkstra.Specification.Utxo.UTxOState"
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
                                          (8 :: Integer) (14798748958053396954 :: Integer)
                                          "Ledger.Prelude.Base.Donations"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_'10214'_'44'_'44'_'10215''7512'_3214)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3208
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3838
               (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3210
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3838
                  (coe v0)))
            (coe (0 :: Integer))))
-- Ledger.Dijkstra.Specification.Epoch.Pre-POOLREAPUpdate.pState'
d_pState''_4680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
d_pState''_4680 v0 ~v1 v2 ~v3 ~v4 = du_pState''_4680 v0 v2
du_pState''_4680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
du_pState''_4680 v0 v1
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
      (coe
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
                                    (1384 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.PState"
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
                                    (1298 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.Pools"
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
                                       (1384 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.PState"
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
                                       (1298 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.Pools"
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
                                          (1384 :: Integer) (9780623556273767673 :: Integer)
                                          "Ledger.Dijkstra.Specification.Certs.PState"
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
                                          (182 :: Integer) (9254951203007797098 :: Integer)
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
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (214 :: Integer) (9780623556273767673 :: Integer)
                                                   "_.THash"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                      (134 :: Integer)
                                                      (9780623556273767673 :: Integer) "_.Epoch"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
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
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (1384 :: Integer) (9780623556273767673 :: Integer)
                                             "Ledger.Dijkstra.Specification.Certs.PState"
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
                                             (182 :: Integer) (9254951203007797098 :: Integer)
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
                                                      (214 :: Integer)
                                                      (9780623556273767673 :: Integer) "_.THash"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                         (6 :: Integer)
                                                         (14798748958053396954 :: Integer)
                                                         "Ledger.Prelude.Base.Coin"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1402)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                        (coe v0)))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1396
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1430
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1394
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1430
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                     (coe v1)))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1398
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1430
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                        (coe v1))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1400
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1430
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                        (coe v1)))))))
-- Ledger.Dijkstra.Specification.Epoch.Pre-POOLREAPUpdate.gState'
d_gState''_4682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404
d_gState''_4682 v0 ~v1 v2 v3 v4 = du_gState''_4682 v0 v2 v3 v4
du_gState''_4682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404
du_gState''_4682 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
      (coe
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
                                    (1404 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.GState"
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
                                    (876 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs._.DReps"
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
                                       (1404 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.GState"
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
                                       (182 :: Integer) (9254951203007797098 :: Integer)
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (46 :: Integer) (9780623556273767673 :: Integer)
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
                                                         (320 :: Integer)
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
                                                                  (746 :: Integer)
                                                                  (7688957888625230675 :: Integer)
                                                                  "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                        (220 :: Integer)
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
                                                                                 (648 :: Integer)
                                                                                 (7688957888625230675 ::
                                                                                    Integer)
                                                                                 "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                               (224 :: Integer)
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
                                                                        (648 :: Integer)
                                                                        (7688957888625230675 ::
                                                                           Integer)
                                                                        "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                               (46 :: Integer)
                                                               (9780623556273767673 :: Integer)
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
                                                                        (320 :: Integer)
                                                                        (753823221557309123 ::
                                                                           Integer)
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
                                                                                 (746 :: Integer)
                                                                                 (7688957888625230675 ::
                                                                                    Integer)
                                                                                 "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                                       (220 ::
                                                                                          Integer)
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
                                                                                                (648 ::
                                                                                                   Integer)
                                                                                                (7688957888625230675 ::
                                                                                                   Integer)
                                                                                                "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                              (224 :: Integer)
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
                                                                                       (648 ::
                                                                                          Integer)
                                                                                       (7688957888625230675 ::
                                                                                          Integer)
                                                                                       "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (1404 :: Integer) (9780623556273767673 :: Integer)
                                          "Ledger.Dijkstra.Specification.Certs.GState"
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
                                          (182 :: Integer) (9254951203007797098 :: Integer)
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
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (46 :: Integer) (9780623556273767673 :: Integer)
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
                                                            (320 :: Integer)
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
                                                                     (746 :: Integer)
                                                                     (7688957888625230675 ::
                                                                        Integer)
                                                                     "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                           (220 :: Integer)
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
                                                                                    (648 :: Integer)
                                                                                    (7688957888625230675 ::
                                                                                       Integer)
                                                                                    "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                  (224 :: Integer)
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
                                                                           (648 :: Integer)
                                                                           (7688957888625230675 ::
                                                                              Integer)
                                                                           "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                      (6 :: Integer)
                                                      (14798748958053396954 :: Integer)
                                                      "Ledger.Prelude.Base.Coin"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7515'_1418)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Class.ToBool.du_if_then_else__38
            (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88)
            (coe
               MAlonzo.Code.Data.List.Base.du_null_262
               (coe d_govSt''_4578 (coe v3)))
            (coe
               MAlonzo.Code.Level.C_lift_20
               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
            (coe
               (\ v4 ->
                  coe
                    MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1202
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'GState_1828)
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1432
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                             (coe v1))))))
            (coe
               (\ v4 ->
                  coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1202
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'GState_1828)
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1432
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                          (coe v1))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                           (coe v0)))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1414
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1432
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                        (coe v1))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_ccCreds_1290
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1250
                     (coe v2))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1416
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1432
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                     (coe v1))))))
-- Ledger.Dijkstra.Specification.Epoch.Pre-POOLREAPUpdate.updates
d_updates_4684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  T_Governance'45'Update_4570 -> T_Pre'45'POOLREAP'45'Update_4624
d_updates_4684 v0 ~v1 v2 v3 v4 = du_updates_4684 v0 v2 v3 v4
du_updates_4684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  T_Governance'45'Update_4570 -> T_Pre'45'POOLREAP'45'Update_4624
du_updates_4684 v0 v1 v2 v3
  = coe
      C_Pre'45'POOLREAPUpdate_4638
      (coe du_pState''_4680 (coe v0) (coe v1))
      (coe du_gState''_4682 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_utxoSt''_4678 (coe v1))
-- Ledger.Dijkstra.Specification.Epoch.Post-POOLREAP-Update
d_Post'45'POOLREAP'45'Update_4686 a0 a1 = ()
data T_Post'45'POOLREAP'45'Update_4686
  = C_Post'45'POOLREAPUpdate_4696 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
-- Ledger.Dijkstra.Specification.Epoch.Post-POOLREAP-Update.dState''
d_dState''''_4692 ::
  T_Post'45'POOLREAP'45'Update_4686 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364
d_dState''''_4692 v0
  = case coe v0 of
      C_Post'45'POOLREAPUpdate_4696 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.Post-POOLREAP-Update.acnt''
d_acnt''''_4694 ::
  T_Post'45'POOLREAP'45'Update_4686 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt''''_4694 v0
  = case coe v0 of
      C_Post'45'POOLREAPUpdate_4696 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Epoch.Post-POOLREAPUpdate._.govSt'
d_govSt''_4712 ::
  T_Governance'45'Update_4570 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_4712 v0 = coe d_govSt''_4578 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Post-POOLREAPUpdate._.removedGovActions
d_removedGovActions_4714 ::
  T_Governance'45'Update_4570 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_4714 v0 = coe d_removedGovActions_4576 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Post-POOLREAPUpdate.govActionReturns
d_govActionReturns_4716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionReturns_4716 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_govActionReturns_4716 v0 v6
du_govActionReturns_4716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionReturns_4716 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_584
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
               (coe v0))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1258
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v2 -> v2) (d_removedGovActions_4576 (coe v1))))
-- Ledger.Dijkstra.Specification.Epoch.Post-POOLREAPUpdate.payout
d_payout_4724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_payout_4724 v0 ~v1 v2 ~v3 ~v4 ~v5 v6 = du_payout_4724 v0 v2 v6
du_payout_4724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_payout_4724 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
               (coe v0))))
      (coe du_govActionReturns_4716 (coe v0) (coe v2))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1258
         (coe v1))
-- Ledger.Dijkstra.Specification.Epoch.Post-POOLREAPUpdate.refunds
d_refunds_4726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refunds_4726 v0 ~v1 v2 ~v3 v4 ~v5 v6
  = du_refunds_4726 v0 v2 v4 v6
du_refunds_4726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refunds_4726 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_2070
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_payout_4724 (coe v0) (coe v1) (coe v3))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
              (coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                          (coe v0)))))
              (coe v4)
              (let v5
                     = MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
               coe
                 (coe
                    MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v5
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                       (coe du_payout_4724 (coe v0) (coe v1) (coe v3)))))))
      (coe du_toRewardAddress_4566 (coe v0))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1378
            (coe v2)))
-- Ledger.Dijkstra.Specification.Epoch.Post-POOLREAPUpdate.dState''
d_dState''''_4728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364
d_dState''''_4728 v0 ~v1 v2 ~v3 v4 ~v5 v6
  = du_dState''''_4728 v0 v2 v4 v6
du_dState''''_4728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364
du_dState''''_4728 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
      (coe
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
                                    (1364 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.DState"
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
                                    (1042 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs._.VoteDelegs"
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
                                       (1364 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.DState"
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
                                       (1306 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.StakeDelegs"
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
                                          (1364 :: Integer) (9780623556273767673 :: Integer)
                                          "Ledger.Dijkstra.Specification.Certs.DState"
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
                                          (1302 :: Integer) (9780623556273767673 :: Integer)
                                          "Ledger.Dijkstra.Specification.Certs.Rewards"
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
                                             (1364 :: Integer) (9780623556273767673 :: Integer)
                                             "Ledger.Dijkstra.Specification.Certs.DState"
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
                                             (182 :: Integer) (9254951203007797098 :: Integer)
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
                                                      (46 :: Integer)
                                                      (9780623556273767673 :: Integer)
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
                                                               (320 :: Integer)
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
                                                                        (746 :: Integer)
                                                                        (7688957888625230675 ::
                                                                           Integer)
                                                                        "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                              (220 :: Integer)
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
                                                                                       (648 ::
                                                                                          Integer)
                                                                                       (7688957888625230675 ::
                                                                                          Integer)
                                                                                       "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                     (224 :: Integer)
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
                                                                              (648 :: Integer)
                                                                              (7688957888625230675 ::
                                                                                 Integer)
                                                                              "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                                         (6 :: Integer)
                                                         (14798748958053396954 :: Integer)
                                                         "Ledger.Prelude.Base.Coin"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1382)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1374
            (coe v2))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1376
               (coe v2))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  (coe
                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                     (coe
                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                           (coe v0))))
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1378
                     (coe v2))
                  (coe du_refunds_4726 (coe v0) (coe v1) (coe v2) (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1380
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Epoch.Post-POOLREAPUpdate.unclaimed
d_unclaimed_4730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  T_Governance'45'Update_4570 -> Integer
d_unclaimed_4730 v0 ~v1 v2 ~v3 v4 ~v5 v6
  = du_unclaimed_4730 v0 v2 v4 v6
du_unclaimed_4730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  T_Governance'45'Update_4570 -> Integer
du_unclaimed_4730 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4)) (coe du_payout_4724 (coe v0) (coe v1) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4))
         (coe du_refunds_4726 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Specification.Epoch.Post-POOLREAPUpdate.totWithdrawals
d_totWithdrawals_4732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  T_Governance'45'Update_4570 -> Integer
d_totWithdrawals_4732 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_totWithdrawals_4732 v0 v2
du_totWithdrawals_4732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  Integer
du_totWithdrawals_4732 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v2 -> v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1258
         (coe v1))
-- Ledger.Dijkstra.Specification.Epoch.Post-POOLREAPUpdate.acnt''
d_acnt''''_4736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt''''_4736 v0 ~v1 v2 v3 v4 v5 v6
  = du_acnt''''_4736 v0 v2 v3 v4 v5 v6
du_acnt''''_4736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  T_Governance'45'Update_4570 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
du_acnt''''_4736 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
      (coe
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
                                    (194 :: Integer) (16149215068455016276 :: Integer)
                                    "Ledger.Dijkstra.Specification.PParams.Acnt"
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
                                    (6 :: Integer) (14798748958053396954 :: Integer)
                                    "Ledger.Prelude.Base.Coin"
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
                                       (194 :: Integer) (16149215068455016276 :: Integer)
                                       "Ledger.Dijkstra.Specification.PParams.Acnt"
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
                                       (6 :: Integer) (14798748958053396954 :: Integer)
                                       "Ledger.Prelude.Base.Coin"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_'10214'_'44'_'10215''7491'_204)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            addInt
            (coe
               addInt (coe du_unclaimed_4730 (coe v0) (coe v1) (coe v3) (coe v5))
               (coe
                  MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasDonations'45'UTxOState_3364)
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3838
                     (coe v2))))
            (coe
               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
               (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
                  (coe v4))
               (coe du_totWithdrawals_4732 (coe v0) (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
            (coe v4)))
-- Ledger.Dijkstra.Specification.Epoch.Post-POOLREAPUpdate.updates
d_updates_4738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  T_Governance'45'Update_4570 -> T_Post'45'POOLREAP'45'Update_4686
d_updates_4738 v0 ~v1 v2 v3 v4 v5 v6
  = du_updates_4738 v0 v2 v3 v4 v5 v6
du_updates_4738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  T_Governance'45'Update_4570 -> T_Post'45'POOLREAP'45'Update_4686
du_updates_4738 v0 v1 v2 v3 v4 v5
  = coe
      C_Post'45'POOLREAPUpdate_4696
      (coe du_dState''''_4728 (coe v0) (coe v1) (coe v3) (coe v5))
      (coe
         du_acnt''''_4736 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- Ledger.Dijkstra.Specification.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__4740 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__4740
  = C_EPOCH_4764 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364
                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__4766 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__4766
  = C_NEWEPOCH'45'New_4778 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_4784 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_4794 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
