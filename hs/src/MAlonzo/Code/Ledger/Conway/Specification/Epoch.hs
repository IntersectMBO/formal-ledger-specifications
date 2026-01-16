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

module MAlonzo.Code.Ledger.Conway.Specification.Epoch where

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
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.PoolReap
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
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
d_Acnt_28 a0 = ()
-- _.Credential
d_Credential_58 a0 = ()
-- _.DRepsOf
d_DRepsOf_68 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_68 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1250
      (coe v0)
-- _.DecEq-Credential
d_DecEq'45'Credential_98 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_98 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
            (coe v0)))
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_128 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1294
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
            (coe v0)))
-- _.DecEq-VDeleg
d_DecEq'45'VDeleg_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1116
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2514
         (coe v0))
-- _.Epoch
d_Epoch_166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_166 = erased
-- _.GovActionID
d_GovActionID_178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_178 = erased
-- _.GovActionState
d_GovActionState_182 a0 = ()
-- _.HasDReps
d_HasDReps_248 a0 a1 a2 = ()
-- _.HasPParams
d_HasPParams_298 a0 a1 a2 = ()
-- _.HasTreasury-Acnt
d_HasTreasury'45'Acnt_310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_310 ~v0 = du_HasTreasury'45'Acnt_310
du_HasTreasury'45'Acnt_310 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_310
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_180
-- _.THash
d_THash_372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_372 = erased
-- _.Number-Epoch
d_Number'45'Epoch_406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_406 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1662
         (coe v0))
-- _.PParams
d_PParams_418 a0 = ()
-- _.PParamsOf
d_PParamsOf_426 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_428 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
d_PParamsOf_426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_436
      (coe v0)
-- _.RewardAddress
d_RewardAddress_466 a0 = ()
-- _.TxOut
d_TxOut_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_582 = erased
-- _.VDeleg
d_VDeleg_598 a0 = ()
-- _.addEpoch
d_addEpoch_630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_630 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1662
         (coe v0))
-- _.Acnt.reserves
d_reserves_826 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  Integer
d_reserves_826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_176
      (coe v0)
-- _.Acnt.treasury
d_treasury_828 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  Integer
d_treasury_828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_174
      (coe v0)
-- _.GovActionState.action
d_action_888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_836
d_action_888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1030
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1012 ->
  AgdaAny
d_expiresIn_890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1028
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1012 ->
  AgdaAny
d_prevAction_892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1032
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1026
      (coe v0)
-- _.GovActionState.votes
d_votes_896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_924
d_votes_896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1024
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_950 a0 = ()
-- _.GovActions.HasDReps
d_HasDReps_988 a0 a1 a2 = ()
-- _.GovActions.VDeleg
d_VDeleg_1058 a0 = ()
-- _.GovActions.HasDReps.DRepsOf
d_DRepsOf_1146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1250
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_428 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
d_PParamsOf_1226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_436
      (coe v0)
-- _.PParams.Emax
d_Emax_1330 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  AgdaAny
d_Emax_1330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_394
      (coe v0)
-- _.PParams.a
d_a_1332 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_a_1332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_366 (coe v0)
-- _.PParams.a0
d_a0_1334 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_398 (coe v0)
-- _.PParams.b
d_b_1336 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_b_1336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_368 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1338 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_ccMaxTermLength_1338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_410
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1340 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_ccMinSize_1340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_408
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_coinsPerUTxOByte_1342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_378
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_collateralPercentage_1344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_400
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_402
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  AgdaAny
d_drepActivity_1350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_418
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_drepDeposit_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_416
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_406
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_govActionDeposit_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_414
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_govActionLifetime_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_412
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_keyDeposit_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_370
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  AgdaAny
d_maxBlockExUnits_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_358
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxBlockSize_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_350
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxCollateralInputs_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_362
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxHeaderSize_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_354
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxRefScriptSizePerBlock_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_386
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxRefScriptSizePerTx_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_384
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  AgdaAny
d_maxTxExUnits_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_356
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxTxSize_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_352
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxValSize_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_360
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_382
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_minUTxOValue_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_392
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_374
      (coe v0)
-- _.PParams.nopt
d_nopt_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_nopt_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_396
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_poolDeposit_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_372
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_404
      (coe v0)
-- _.PParams.prices
d_prices_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  AgdaAny
d_prices_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_380
      (coe v0)
-- _.PParams.pv
d_pv_1394 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_364 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1396 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_390
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_388
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1400 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_376
      (coe v0)
-- _.RewardAddress.net
d_net_1600 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1600 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- _.RewardAddress.stake
d_stake_1602 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1602 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Epoch._.CertState
d_CertState_1950 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.CertStateOf
d_CertStateOf_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1490 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394
d_CertStateOf_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1498
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState
d_DState_1968 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1974 v0 ~v1
  = du_DecEq'45'DepositPurpose_1974 v0
du_DecEq'45'DepositPurpose_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1154
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2514
         (coe v0))
-- Ledger.Conway.Specification.Epoch._.DepositPurpose
d_DepositPurpose_1980 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.DepositsOf
d_DepositsOf_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1146
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GState
d_GState_1992 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.HasCertState
d_HasCertState_2020 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasDReps-CertState
d_HasDReps'45'CertState_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242
d_HasDReps'45'CertState_2026 ~v0 ~v1
  = du_HasDReps'45'CertState_2026
du_HasDReps'45'CertState_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242
du_HasDReps'45'CertState_2026
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1532
-- Ledger.Conway.Specification.Epoch._.HasDReps-GState
d_HasDReps'45'GState_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242
d_HasDReps'45'GState_2028 ~v0 ~v1 = du_HasDReps'45'GState_2028
du_HasDReps'45'GState_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242
du_HasDReps'45'GState_2028
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1520
-- Ledger.Conway.Specification.Epoch._.HasDeposits
d_HasDeposits_2036 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasPState
d_HasPState_2048 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasPState-CertState
d_HasPState'45'CertState_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1450
d_HasPState'45'CertState_2052 ~v0 ~v1
  = du_HasPState'45'CertState_2052
du_HasPState'45'CertState_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1450
du_HasPState'45'CertState_2052
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1526
-- Ledger.Conway.Specification.Epoch._.HasRetiring
d_HasRetiring_2062 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasRetiring-PState
d_HasRetiring'45'PState_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1206
d_HasRetiring'45'PState_2066 ~v0 ~v1
  = du_HasRetiring'45'PState_2066
du_HasRetiring'45'PState_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1206
du_HasRetiring'45'PState_2066
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1518
-- Ledger.Conway.Specification.Epoch._.HasRewards
d_HasRewards_2068 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasRewards-CertState
d_HasRewards'45'CertState_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1222
d_HasRewards'45'CertState_2072 ~v0 ~v1
  = du_HasRewards'45'CertState_2072
du_HasRewards'45'CertState_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1222
du_HasRewards'45'CertState_2072
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1530
-- Ledger.Conway.Specification.Epoch._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_954
d_HasVoteDelegs'45'DState_2090 ~v0 ~v1
  = du_HasVoteDelegs'45'DState_2090
du_HasVoteDelegs'45'DState_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_954
du_HasVoteDelegs'45'DState_2090
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1510
-- Ledger.Conway.Specification.Epoch._.PState
d_PState_2098 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.PStateOf
d_PStateOf_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1450 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_PStateOf_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1458
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Pools
d_Pools_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  ()
d_Pools_2108 = erased
-- Ledger.Conway.Specification.Epoch._.RetiringOf
d_RetiringOf_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1214
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Rewards
d_Rewards_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  ()
d_Rewards_2116 = erased
-- Ledger.Conway.Specification.Epoch._.RewardsOf
d_RewardsOf_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1222 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1230
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Stake
d_Stake_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  ()
d_Stake_2120 = erased
-- Ledger.Conway.Specification.Epoch._.StakeDelegs
d_StakeDelegs_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  ()
d_StakeDelegs_2122 = erased
-- Ledger.Conway.Specification.Epoch._.CertState.dState
d_dState_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
d_dState_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1402
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.CertState.gState
d_gState_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382
d_gState_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1406
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.CertState.pState
d_pState_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_pState_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1404
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState.rewards
d_rewards_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1362
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState.stakeDelegs
d_stakeDelegs_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1360
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState.voteDelegs
d_voteDelegs_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1358
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GState.ccHotKeys
d_ccHotKeys_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1390
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GState.dreps
d_dreps_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1388
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasCertState.CertStateOf
d_CertStateOf_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1490 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394
d_CertStateOf_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1498
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasDeposits.DepositsOf
d_DepositsOf_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1146
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasPState.PStateOf
d_PStateOf_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1450 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_PStateOf_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1458
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasRetiring.RetiringOf
d_RetiringOf_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1214
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasRewards.RewardsOf
d_RewardsOf_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1222 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1230
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.PState.fPools
d_fPools_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1376
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.PState.pools
d_pools_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1374
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.PState.retiring
d_retiring_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1378
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState
d_EnactState_2354 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.EnactStateOf
d_EnactStateOf_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1146 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118
d_EnactStateOf_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1154
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasEnactState
d_HasEnactState_2362 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasPParams-EnactState
d_HasPParams'45'EnactState_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_428
d_HasPParams'45'EnactState_2366 ~v0 ~v1
  = du_HasPParams'45'EnactState_2366
du_HasPParams'45'EnactState_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_428
du_HasPParams'45'EnactState_2366
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1162
-- Ledger.Conway.Specification.Epoch._.EnactState.cc
d_cc_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1130 (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.constitution
d_constitution_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1132
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.pparams
d_pparams_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1136
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.pv
d_pv_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1134 (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.withdrawals
d_withdrawals_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1138
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasEnactState.EnactStateOf
d_EnactStateOf_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1146 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118
d_EnactStateOf_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1154
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GovState
d_GovState_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  ()
d_GovState_2436 = erased
-- Ledger.Conway.Specification.Epoch._.GovStateOf
d_GovStateOf_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1792 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_1800
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasGovState
d_HasGovState_2446 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasGovState.GovStateOf
d_GovStateOf_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1792 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_1800
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasCCHotKeys-LState
d_HasCCHotKeys'45'LState_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1174
d_HasCCHotKeys'45'LState_2566 ~v0 ~v1
  = du_HasCCHotKeys'45'LState_2566
du_HasCCHotKeys'45'LState_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1174
du_HasCCHotKeys'45'LState_2566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCCHotKeys'45'LState_2888
-- Ledger.Conway.Specification.Epoch._.HasCast-LState
d_HasCast'45'LState_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2570 ~v0 ~v1 = du_HasCast'45'LState_2570
du_HasCast'45'LState_2570 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2570
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LState_2894
-- Ledger.Conway.Specification.Epoch._.HasCertState-LState
d_HasCertState'45'LState_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1490
d_HasCertState'45'LState_2572 ~v0 ~v1
  = du_HasCertState'45'LState_2572
du_HasCertState'45'LState_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1490
du_HasCertState'45'LState_2572
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2870
-- Ledger.Conway.Specification.Epoch._.HasDReps-LState
d_HasDReps'45'LState_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242
d_HasDReps'45'LState_2574 ~v0 ~v1 = du_HasDReps'45'LState_2574
du_HasDReps'45'LState_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242
du_HasDReps'45'LState_2574
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDReps'45'LState_2890
-- Ledger.Conway.Specification.Epoch._.HasDState-LState
d_HasDState'45'LState_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1430
d_HasDState'45'LState_2576 ~v0 ~v1 = du_HasDState'45'LState_2576
du_HasDState'45'LState_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1430
du_HasDState'45'LState_2576
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDState'45'LState_2878
-- Ledger.Conway.Specification.Epoch._.HasDeposits-LState
d_HasDeposits'45'LState_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1138
d_HasDeposits'45'LState_2578 ~v0 ~v1
  = du_HasDeposits'45'LState_2578
du_HasDeposits'45'LState_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1138
du_HasDeposits'45'LState_2578
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDeposits'45'LState_2872
-- Ledger.Conway.Specification.Epoch._.HasGState-LState
d_HasGState'45'LState_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1470
d_HasGState'45'LState_2584 ~v0 ~v1 = du_HasGState'45'LState_2584
du_HasGState'45'LState_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1470
du_HasGState'45'LState_2584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGState'45'LState_2876
-- Ledger.Conway.Specification.Epoch._.HasGovState-LState
d_HasGovState'45'LState_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1792
d_HasGovState'45'LState_2586 ~v0 ~v1
  = du_HasGovState'45'LState_2586
du_HasGovState'45'LState_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1792
du_HasGovState'45'LState_2586
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGovState'45'LState_2868
-- Ledger.Conway.Specification.Epoch._.HasLState
d_HasLState_2588 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasPools-LState
d_HasPools'45'LState_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1190
d_HasPools'45'LState_2596 ~v0 ~v1 = du_HasPools'45'LState_2596
du_HasPools'45'LState_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1190
du_HasPools'45'LState_2596
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasPools'45'LState_2874
-- Ledger.Conway.Specification.Epoch._.HasVoteDelegs-LState
d_HasVoteDelegs'45'LState_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_954
d_HasVoteDelegs'45'LState_2602 ~v0 ~v1
  = du_HasVoteDelegs'45'LState_2602
du_HasVoteDelegs'45'LState_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_954
du_HasVoteDelegs'45'LState_2602
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasVoteDelegs'45'LState_2882
-- Ledger.Conway.Specification.Epoch._.LState
d_LState_2612 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.LStateOf
d_LStateOf_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2848 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828
d_LStateOf_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2856
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasLState.LStateOf
d_LStateOf_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2848 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828
d_LStateOf_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2856
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.LState.certState
d_certState_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394
d_certState_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2840
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.LState.govSt
d_govSt_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2838
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.LState.utxoSt
d_utxoSt_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
d_utxoSt_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2836
      (coe v0)
-- Ledger.Conway.Specification.Epoch._._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2658 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Epoch._.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2660 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2660
du_HasCast'45'PoolReapState_2660 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2660
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.du_HasCast'45'PoolReapState_2530
-- Ledger.Conway.Specification.Epoch._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1806 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2686 = erased
-- Ledger.Conway.Specification.Epoch._.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_2690 ~v0 ~v1 = du_HasCast'45'RatifyEnv_2690
du_HasCast'45'RatifyEnv_2690 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyEnv_2690
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyEnv_1882
-- Ledger.Conway.Specification.Epoch._.HasCast-RatifyState
d_HasCast'45'RatifyState_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_2692 ~v0 ~v1
  = du_HasCast'45'RatifyState_2692
du_HasCast'45'RatifyState_2692 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_2692
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_1884
-- Ledger.Conway.Specification.Epoch._.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1146
d_HasEnactState'45'RatifyState_2698 ~v0 ~v1
  = du_HasEnactState'45'RatifyState_2698
du_HasEnactState'45'RatifyState_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1146
du_HasEnactState'45'RatifyState_2698
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasEnactState'45'RatifyState_1874
-- Ledger.Conway.Specification.Epoch._.HasRatifyState
d_HasRatifyState_2700 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.RatifyEnv
d_RatifyEnv_2716 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.RatifyState
d_RatifyState_2720 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.RatifyStateOf
d_RatifyStateOf_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838
d_RatifyStateOf_2724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1866
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.StakeDistrs
d_StakeDistrs_2726 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.HasRatifyState.RatifyStateOf
d_RatifyStateOf_2834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838
d_RatifyStateOf_2834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1866
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.ccHotKeys
d_ccHotKeys_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_ccHotKeys_1828
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.currentEpoch
d_currentEpoch_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1806 ->
  AgdaAny
d_currentEpoch_2840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_1824
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.delegatees
d_delegatees_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delegatees_1834
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.dreps
d_dreps_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_dreps_1826
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.pools
d_pools_2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_pools_1832
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.stakeDistrs
d_stakeDistrs_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1806 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1794
d_stakeDistrs_2848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_1822
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.treasury
d_treasury_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1806 ->
  Integer
d_treasury_2850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_1830
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyState.delay
d_delay_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  Bool
d_delay_2854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1850
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyState.es
d_es_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118
d_es_2856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1846 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyState.removed
d_removed_2858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1848
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.StakeDistrs.stakeDistrPools
d_stakeDistrPools_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1794 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1802
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1794 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1800
      (coe v0)
-- Ledger.Conway.Specification.Epoch._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2868 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Epoch._.BlocksMade
d_BlocksMade_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  ()
d_BlocksMade_2870 = erased
-- Ledger.Conway.Specification.Epoch._.HasSnapshots
d_HasSnapshots_2880 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.RewardUpdate
d_RewardUpdate_2888 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.Snapshot
d_Snapshot_2894 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.Snapshots
d_Snapshots_2898 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.SnapshotsOf
d_SnapshotsOf_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2998
d_SnapshotsOf_2902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3030
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2998
d_SnapshotsOf_2934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3030
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.flowConservation
d_flowConservation_2938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2938 = erased
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.rs
d_rs_2940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2928 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δf
d_Δf_2942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  Integer
d_Δf_2942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2926 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2936
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δr
d_Δr_2946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  Integer
d_Δr_2946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2924 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δt
d_Δt_2948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  Integer
d_Δt_2948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2922 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2934
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshot.delegations
d_delegations_2954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2950
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshot.pools
d_pools_2956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2952
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshot.stake
d_stake_2958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2948
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.feeSS
d_feeSS_2962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2998 ->
  Integer
d_feeSS_2962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3014
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.go
d_go_2964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2998 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940
d_go_2964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3012 (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.mark
d_mark_2966 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2998 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940
d_mark_2966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3008
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.set
d_set_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2998 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940
d_set_2968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3010
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState
d_UTxOState_3018 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.UTxOState.deposits
d_deposits_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2406
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState.donations
d_donations_3126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  Integer
d_donations_3126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2408
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState.fees
d_fees_3128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  Integer
d_fees_3128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2404 (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState.utxo
d_utxo_3130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2402 (coe v0)
-- Ledger.Conway.Specification.Epoch.EpochState
d_EpochState_3168 a0 a1 = ()
data T_EpochState_3168
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3190 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168
                                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2998
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828
                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838
-- Ledger.Conway.Specification.Epoch.EpochState.acnt
d_acnt_3180 ::
  T_EpochState_3168 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168
d_acnt_3180 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3190 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.ss
d_ss_3182 ::
  T_EpochState_3168 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2998
d_ss_3182 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3190 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.ls
d_ls_3184 ::
  T_EpochState_3168 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828
d_ls_3184 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3190 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.es
d_es_3186 ::
  T_EpochState_3168 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118
d_es_3186 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3190 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.fut
d_fut_3188 ::
  T_EpochState_3168 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838
d_fut_3188 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3190 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.HasEpochState
d_HasEpochState_3196 a0 a1 a2 a3 = ()
newtype T_HasEpochState_3196
  = C_constructor_3206 (AgdaAny -> T_EpochState_3168)
-- Ledger.Conway.Specification.Epoch.HasEpochState.EpochStateOf
d_EpochStateOf_3204 ::
  T_HasEpochState_3196 -> AgdaAny -> T_EpochState_3168
d_EpochStateOf_3204 v0
  = case coe v0 of
      C_constructor_3206 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._.EpochStateOf
d_EpochStateOf_3210 ::
  T_HasEpochState_3196 -> AgdaAny -> T_EpochState_3168
d_EpochStateOf_3210 v0 = coe d_EpochStateOf_3204 (coe v0)
-- Ledger.Conway.Specification.Epoch.HasSnapshots-EpochState
d_HasSnapshots'45'EpochState_3212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3022
d_HasSnapshots'45'EpochState_3212 ~v0 ~v1
  = du_HasSnapshots'45'EpochState_3212
du_HasSnapshots'45'EpochState_3212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3022
du_HasSnapshots'45'EpochState_3212
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3032
      (coe (\ v0 -> d_ss_3182 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasLState-EpochState
d_HasLState'45'EpochState_3214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2848
d_HasLState'45'EpochState_3214 ~v0 ~v1
  = du_HasLState'45'EpochState_3214
du_HasLState'45'EpochState_3214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2848
du_HasLState'45'EpochState_3214
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2858
      (coe (\ v0 -> d_ls_3184 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasGovState-EpochState
d_HasGovState'45'EpochState_3216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1792
d_HasGovState'45'EpochState_3216 ~v0 ~v1
  = du_HasGovState'45'EpochState_3216
du_HasGovState'45'EpochState_3216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1792
du_HasGovState'45'EpochState_3216
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_constructor_1802
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_1800
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGovState'45'LState_2868)
              (d_ls_3184 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasEnactState-EpochState
d_HasEnactState'45'EpochState_3218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1146
d_HasEnactState'45'EpochState_3218 ~v0 ~v1
  = du_HasEnactState'45'EpochState_3218
du_HasEnactState'45'EpochState_3218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1146
du_HasEnactState'45'EpochState_3218
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1156
      (coe (\ v0 -> d_es_3186 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasDeposits-EpochState
d_HasDeposits'45'EpochState_3220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1138
d_HasDeposits'45'EpochState_3220 ~v0 ~v1
  = du_HasDeposits'45'EpochState_3220
du_HasDeposits'45'EpochState_3220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1138
du_HasDeposits'45'EpochState_3220
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1148
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1146
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDeposits'45'LState_2872)
              (d_ls_3184 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasDReps-EpochState
d_HasDReps'45'EpochState_3222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242
d_HasDReps'45'EpochState_3222 ~v0 ~v1
  = du_HasDReps'45'EpochState_3222
du_HasDReps'45'EpochState_3222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242
du_HasDReps'45'EpochState_3222
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1252
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1250
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1532)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1498
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2870)
                 (d_ls_3184 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasTreasury-EpochState
d_HasTreasury'45'EpochState_3224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'EpochState_3224 ~v0 ~v1
  = du_HasTreasury'45'EpochState_3224
du_HasTreasury'45'EpochState_3224 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'EpochState_3224
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_174
              (coe d_acnt_3180 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasReserves-EpochState
d_HasReserves'45'EpochState_3226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'EpochState_3226 ~v0 ~v1
  = du_HasReserves'45'EpochState_3226
du_HasReserves'45'EpochState_3226 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'EpochState_3226
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_70
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_176
              (coe d_acnt_3180 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasPParams-EpochState
d_HasPParams'45'EpochState_3228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_428
d_HasPParams'45'EpochState_3228 ~v0 ~v1
  = du_HasPParams'45'EpochState_3228
du_HasPParams'45'EpochState_3228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_428
du_HasPParams'45'EpochState_3228
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_438
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_436
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1162)
              (d_es_3186 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasRatifyState-EpochState
d_HasRatifyState'45'EpochState_3230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1858
d_HasRatifyState'45'EpochState_3230 ~v0 ~v1
  = du_HasRatifyState'45'EpochState_3230
du_HasRatifyState'45'EpochState_3230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1858
du_HasRatifyState'45'EpochState_3230
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1868
      (coe (\ v0 -> d_fut_3188 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasPState-EpochState
d_HasPState'45'EpochState_3232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1450
d_HasPState'45'EpochState_3232 ~v0 ~v1
  = du_HasPState'45'EpochState_3232
du_HasPState'45'EpochState_3232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1450
du_HasPState'45'EpochState_3232
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1460
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1458
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1526)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1498
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2870)
                 (d_ls_3184 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasRetiring-EpochState
d_HasRetiring'45'EpochState_3234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1206
d_HasRetiring'45'EpochState_3234 ~v0 ~v1
  = du_HasRetiring'45'EpochState_3234
du_HasRetiring'45'EpochState_3234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1206
du_HasRetiring'45'EpochState_3234
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1216
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1214
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1518)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1458
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1526)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1498
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2870)
                    (d_ls_3184 (coe v0))))))
-- Ledger.Conway.Specification.Epoch.PoolDelegatedStake
d_PoolDelegatedStake_3236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  ()
d_PoolDelegatedStake_3236 = erased
-- Ledger.Conway.Specification.Epoch.NewEpochState
d_NewEpochState_3238 a0 a1 = ()
data T_NewEpochState_3238
  = C_constructor_3264 AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_EpochState_3168
                       (Maybe
                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904)
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Epoch.NewEpochState.lastEpoch
d_lastEpoch_3252 :: T_NewEpochState_3238 -> AgdaAny
d_lastEpoch_3252 v0
  = case coe v0 of
      C_constructor_3264 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.bprev
d_bprev_3254 ::
  T_NewEpochState_3238 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3254 v0
  = case coe v0 of
      C_constructor_3264 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.bcur
d_bcur_3256 ::
  T_NewEpochState_3238 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3256 v0
  = case coe v0 of
      C_constructor_3264 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.epochState
d_epochState_3258 :: T_NewEpochState_3238 -> T_EpochState_3168
d_epochState_3258 v0
  = case coe v0 of
      C_constructor_3264 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.ru
d_ru_3260 ::
  T_NewEpochState_3238 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904
d_ru_3260 v0
  = case coe v0 of
      C_constructor_3264 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.pd
d_pd_3262 ::
  T_NewEpochState_3238 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3262 v0
  = case coe v0 of
      C_constructor_3264 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.HasNewEpochState
d_HasNewEpochState_3270 a0 a1 a2 a3 = ()
newtype T_HasNewEpochState_3270
  = C_constructor_3280 (AgdaAny -> T_NewEpochState_3238)
-- Ledger.Conway.Specification.Epoch.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_3278 ::
  T_HasNewEpochState_3270 -> AgdaAny -> T_NewEpochState_3238
d_NewEpochStateOf_3278 v0
  = case coe v0 of
      C_constructor_3280 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._.NewEpochStateOf
d_NewEpochStateOf_3284 ::
  T_HasNewEpochState_3270 -> AgdaAny -> T_NewEpochState_3238
d_NewEpochStateOf_3284 v0 = coe d_NewEpochStateOf_3278 (coe v0)
-- Ledger.Conway.Specification.Epoch.HasLastEpoch
d_HasLastEpoch_3290 a0 a1 a2 a3 = ()
newtype T_HasLastEpoch_3290
  = C_constructor_3300 (AgdaAny -> AgdaAny)
-- Ledger.Conway.Specification.Epoch.HasLastEpoch.LastEpochOf
d_LastEpochOf_3298 :: T_HasLastEpoch_3290 -> AgdaAny -> AgdaAny
d_LastEpochOf_3298 v0
  = case coe v0 of
      C_constructor_3300 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._.LastEpochOf
d_LastEpochOf_3304 :: T_HasLastEpoch_3290 -> AgdaAny -> AgdaAny
d_LastEpochOf_3304 v0 = coe d_LastEpochOf_3298 (coe v0)
-- Ledger.Conway.Specification.Epoch.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_3306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_HasLastEpoch_3290
d_HasLastEpoch'45'NewEpochState_3306 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_3306
du_HasLastEpoch'45'NewEpochState_3306 :: T_HasLastEpoch_3290
du_HasLastEpoch'45'NewEpochState_3306
  = coe C_constructor_3300 (coe (\ v0 -> d_lastEpoch_3252 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_3308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_HasEpochState_3196
d_HasEpochState'45'NewEpochState_3308 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_3308
du_HasEpochState'45'NewEpochState_3308 :: T_HasEpochState_3196
du_HasEpochState'45'NewEpochState_3308
  = coe C_constructor_3206 (coe (\ v0 -> d_epochState_3258 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasEnactState-NewEpochState
d_HasEnactState'45'NewEpochState_3310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1146
d_HasEnactState'45'NewEpochState_3310 ~v0 ~v1
  = du_HasEnactState'45'NewEpochState_3310
du_HasEnactState'45'NewEpochState_3310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1146
du_HasEnactState'45'NewEpochState_3310
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1156
      (coe (\ v0 -> d_es_3186 (coe d_epochState_3258 (coe v0))))
-- Ledger.Conway.Specification.Epoch.Hastreasury-NewEpochState
d_Hastreasury'45'NewEpochState_3312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_Hastreasury'45'NewEpochState_3312 ~v0 ~v1
  = du_Hastreasury'45'NewEpochState_3312
du_Hastreasury'45'NewEpochState_3312 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_Hastreasury'45'NewEpochState_3312
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_174
              (coe d_acnt_3180 (coe d_epochState_3258 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasLState-NewEpochState
d_HasLState'45'NewEpochState_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2848
d_HasLState'45'NewEpochState_3314 ~v0 ~v1
  = du_HasLState'45'NewEpochState_3314
du_HasLState'45'NewEpochState_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2848
du_HasLState'45'NewEpochState_3314
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2858
      (coe (\ v0 -> d_ls_3184 (coe d_epochState_3258 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasGovState-NewEpochState
d_HasGovState'45'NewEpochState_3316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1792
d_HasGovState'45'NewEpochState_3316 ~v0 ~v1
  = du_HasGovState'45'NewEpochState_3316
du_HasGovState'45'NewEpochState_3316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1792
du_HasGovState'45'NewEpochState_3316
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_constructor_1802
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_1800
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGovState'45'LState_2868)
              (d_ls_3184 (coe d_epochState_3258 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasCertState-NewEpochState
d_HasCertState'45'NewEpochState_3318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1490
d_HasCertState'45'NewEpochState_3318 ~v0 ~v1
  = du_HasCertState'45'NewEpochState_3318
du_HasCertState'45'NewEpochState_3318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1490
du_HasCertState'45'NewEpochState_3318
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1500
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1498
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2870)
              (d_ls_3184 (coe d_epochState_3258 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasDReps-NewEpochState
d_HasDReps'45'NewEpochState_3320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242
d_HasDReps'45'NewEpochState_3320 ~v0 ~v1
  = du_HasDReps'45'NewEpochState_3320
du_HasDReps'45'NewEpochState_3320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242
du_HasDReps'45'NewEpochState_3320
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1252
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1250
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1532)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1498
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2870)
                 (d_ls_3184 (coe d_epochState_3258 (coe v0))))))
-- Ledger.Conway.Specification.Epoch.HasRewards-NewEpochState
d_HasRewards'45'NewEpochState_3322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1222
d_HasRewards'45'NewEpochState_3322 ~v0 ~v1
  = du_HasRewards'45'NewEpochState_3322
du_HasRewards'45'NewEpochState_3322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1222
du_HasRewards'45'NewEpochState_3322
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1232
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1230
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1530)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1498
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2870)
                 (d_ls_3184 (coe d_epochState_3258 (coe v0))))))
-- Ledger.Conway.Specification.Epoch.HasPParams-NewEpochState
d_HasPParams'45'NewEpochState_3324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_428
d_HasPParams'45'NewEpochState_3324 ~v0 ~v1
  = du_HasPParams'45'NewEpochState_3324
du_HasPParams'45'NewEpochState_3324 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_428
du_HasPParams'45'NewEpochState_3324
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_438
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_436
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1162)
              (d_es_3186 (coe d_epochState_3258 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasCast-EpochState
d_HasCast'45'EpochState_3326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_3326 ~v0 ~v1
  = du_HasCast'45'EpochState_3326
du_HasCast'45'EpochState_3326 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EpochState_3326
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
                                 (3168 :: Integer) (4112555248803407823 :: Integer)
                                 "Ledger.Conway.Specification.Epoch.EpochState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (28 :: Integer) (4112555248803407823 :: Integer) "_.Acnt"
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
                                    (3168 :: Integer) (4112555248803407823 :: Integer)
                                    "Ledger.Conway.Specification.Epoch.EpochState"
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
                                    (2898 :: Integer) (4112555248803407823 :: Integer)
                                    "Ledger.Conway.Specification.Epoch._.Snapshots"
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
                                       (3168 :: Integer) (4112555248803407823 :: Integer)
                                       "Ledger.Conway.Specification.Epoch.EpochState"
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
                                       (2612 :: Integer) (4112555248803407823 :: Integer)
                                       "Ledger.Conway.Specification.Epoch._.LState"
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
                                          (3168 :: Integer) (4112555248803407823 :: Integer)
                                          "Ledger.Conway.Specification.Epoch.EpochState"
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
                                          (2354 :: Integer) (4112555248803407823 :: Integer)
                                          "Ledger.Conway.Specification.Epoch._.EnactState"
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
                                             (3168 :: Integer) (4112555248803407823 :: Integer)
                                             "Ledger.Conway.Specification.Epoch.EpochState"
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
                                             (2720 :: Integer) (4112555248803407823 :: Integer)
                                             "Ledger.Conway.Specification.Epoch._.RatifyState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3190))
-- Ledger.Conway.Specification.Epoch.HasCast-NewEpochState
d_HasCast'45'NewEpochState_3328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_3328 ~v0 ~v1
  = du_HasCast'45'NewEpochState_3328
du_HasCast'45'NewEpochState_3328 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'NewEpochState_3328
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
                                 (3238 :: Integer) (4112555248803407823 :: Integer)
                                 "Ledger.Conway.Specification.Epoch.NewEpochState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (166 :: Integer) (4112555248803407823 :: Integer) "_.Epoch"
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
                                    (3238 :: Integer) (4112555248803407823 :: Integer)
                                    "Ledger.Conway.Specification.Epoch.NewEpochState"
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
                                    (2870 :: Integer) (4112555248803407823 :: Integer)
                                    "Ledger.Conway.Specification.Epoch._.BlocksMade"
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
                                       (3238 :: Integer) (4112555248803407823 :: Integer)
                                       "Ledger.Conway.Specification.Epoch.NewEpochState"
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
                                       (2870 :: Integer) (4112555248803407823 :: Integer)
                                       "Ledger.Conway.Specification.Epoch._.BlocksMade"
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
                                          (3238 :: Integer) (4112555248803407823 :: Integer)
                                          "Ledger.Conway.Specification.Epoch.NewEpochState"
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
                                          (3168 :: Integer) (4112555248803407823 :: Integer)
                                          "Ledger.Conway.Specification.Epoch.EpochState"
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
                                             (3238 :: Integer) (4112555248803407823 :: Integer)
                                             "Ledger.Conway.Specification.Epoch.NewEpochState"
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
                                                         (2888 :: Integer)
                                                         (4112555248803407823 :: Integer)
                                                         "Ledger.Conway.Specification.Epoch._.RewardUpdate"
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
                                                (3238 :: Integer) (4112555248803407823 :: Integer)
                                                "Ledger.Conway.Specification.Epoch.NewEpochState"
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
                                                (3236 :: Integer) (4112555248803407823 :: Integer)
                                                "Ledger.Conway.Specification.Epoch.PoolDelegatedStake"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
         (coe C_constructor_3264))
-- Ledger.Conway.Specification.Epoch.toRewardAddress
d_toRewardAddress_3330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_toRewardAddress_3330 v0 ~v1 v2 = du_toRewardAddress_3330 v0 v2
du_toRewardAddress_3330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
du_toRewardAddress_3330 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1294
            (coe v0)))
      (coe v1)
-- Ledger.Conway.Specification.Epoch.getStakeCred
d_getStakeCred_3334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_3334 ~v0 ~v1 v2 = du_getStakeCred_3334 v2
du_getStakeCred_3334 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getStakeCred_3334 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    seq (coe v4)
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_190
                       (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.createRUpd
d_createRUpd_3338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904
d_createRUpd_3338 v0 ~v1 v2 v3 v4 v5
  = du_createRUpd_3338 v0 v2 v3 v4 v5
du_createRUpd_3338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904
du_createRUpd_3338 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2938
      (coe du_Δt'8321'_3380 (coe v0) (coe v1) (coe v2) (coe v3))
      (MAlonzo.Code.Data.Integer.Base.d__'43'__284
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'45'__302 (coe (0 :: Integer))
            (coe du_Δr'8321'_3376 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            du_Δr'8322'_3388 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      (MAlonzo.Code.Data.Integer.Base.d__'45'__302
         (coe (0 :: Integer)) (coe du_feeSS_3358 (coe v3)))
      (coe du_rs_3386 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe du_Δt'45'nonneg_3462 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_Δf'45'nonpos_3464 (coe v3))
-- Ledger.Conway.Specification.Epoch._.prevPp
d_prevPp_3352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
d_prevPp_3352 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_prevPp_3352 v4
du_prevPp_3352 ::
  T_EpochState_3168 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
du_prevPp_3352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_436
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1162)
      (d_es_3186 (coe v0))
-- Ledger.Conway.Specification.Epoch._.reserves
d_reserves_3354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer -> Integer
d_reserves_3354 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_reserves_3354 v4
du_reserves_3354 :: T_EpochState_3168 -> Integer
du_reserves_3354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_176
      (coe d_acnt_3180 (coe v0))
-- Ledger.Conway.Specification.Epoch._.pstakego
d_pstakego_3356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940
d_pstakego_3356 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pstakego_3356 v4
du_pstakego_3356 ::
  T_EpochState_3168 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940
du_pstakego_3356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3012
      (coe d_ss_3182 (coe v0))
-- Ledger.Conway.Specification.Epoch._.feeSS
d_feeSS_3358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer -> Integer
d_feeSS_3358 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_feeSS_3358 v4
du_feeSS_3358 :: T_EpochState_3168 -> Integer
du_feeSS_3358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3014
      (coe d_ss_3182 (coe v0))
-- Ledger.Conway.Specification.Epoch._.stake
d_stake_3360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_3360 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_stake_3360 v4
du_stake_3360 ::
  T_EpochState_3168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stake_3360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2948
      (coe du_pstakego_3356 (coe v0))
-- Ledger.Conway.Specification.Epoch._.delegs
d_delegs_3362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegs_3362 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_delegs_3362 v4
du_delegs_3362 ::
  T_EpochState_3168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegs_3362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2950
      (coe du_pstakego_3356 (coe v0))
-- Ledger.Conway.Specification.Epoch._.poolParams
d_poolParams_3364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolParams_3364 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_poolParams_3364 v4
du_poolParams_3364 ::
  T_EpochState_3168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolParams_3364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2952
      (coe du_pstakego_3356 (coe v0))
-- Ledger.Conway.Specification.Epoch._.blocksMade
d_blocksMade_3366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer -> Integer
d_blocksMade_3366 v0 ~v1 ~v2 v3 ~v4 ~v5 = du_blocksMade_3366 v0 v3
du_blocksMade_3366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_blocksMade_3366 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v2 -> v2)) (coe v1)
-- Ledger.Conway.Specification.Epoch._.ρ
d_ρ_3370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ρ_3370 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ρ_3370 v4
du_ρ_3370 ::
  T_EpochState_3168 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_ρ_3370 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_374
         (coe du_prevPp_3352 (coe v0)))
-- Ledger.Conway.Specification.Epoch._.η
d_η_3372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_η_3372 v0 ~v1 v2 v3 ~v4 ~v5 = du_η_3372 v0 v2 v3
du_η_3372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_η_3372 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'247''8320'__54
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
         (coe du_blocksMade_3366 (coe v0) (coe v2)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1294
               (coe v0))))
-- Ledger.Conway.Specification.Epoch._.τ
d_τ_3374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_τ_3374 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_τ_3374 v4
du_τ_3374 ::
  T_EpochState_3168 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_τ_3374 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_376
         (coe du_prevPp_3352 (coe v0)))
-- Ledger.Conway.Specification.Epoch._.Δr₁
d_Δr'8321'_3376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer -> Integer
d_Δr'8321'_3376 v0 ~v1 v2 v3 v4 ~v5 = du_Δr'8321'_3376 v0 v2 v3 v4
du_Δr'8321'_3376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer
du_Δr'8321'_3376 v0 v1 v2 v3
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
               (coe du_η_3372 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_3370 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_3354 (coe v3))))
-- Ledger.Conway.Specification.Epoch._.rewardPot
d_rewardPot_3378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer -> Integer
d_rewardPot_3378 v0 ~v1 v2 v3 v4 ~v5
  = du_rewardPot_3378 v0 v2 v3 v4
du_rewardPot_3378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer
du_rewardPot_3378 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'43'__284
      (coe du_feeSS_3358 (coe v3))
      (coe du_Δr'8321'_3376 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Epoch._.Δt₁
d_Δt'8321'_3380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer -> Integer
d_Δt'8321'_3380 v0 ~v1 v2 v3 v4 ~v5 = du_Δt'8321'_3380 v0 v2 v3 v4
du_Δt'8321'_3380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer
du_Δt'8321'_3380 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Base.d_floor_346
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_3378 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe du_τ_3374 (coe v3)))
-- Ledger.Conway.Specification.Epoch._.R
d_R_3382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer -> Integer
d_R_3382 v0 ~v1 v2 v3 v4 ~v5 = du_R_3382 v0 v2 v3 v4
du_R_3382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer
du_R_3382 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'45'__302
      (coe du_rewardPot_3378 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_Δt'8321'_3380 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Epoch._.circulation
d_circulation_3384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer -> Integer
d_circulation_3384 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_circulation_3384 v4 v5
du_circulation_3384 :: T_EpochState_3168 -> Integer -> Integer
du_circulation_3384 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1
      (coe du_reserves_3354 (coe v0))
-- Ledger.Conway.Specification.Epoch._.rs
d_rs_3386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_3386 v0 ~v1 v2 v3 v4 v5 = du_rs_3386 v0 v2 v3 v4 v5
du_rs_3386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rs_3386 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2834
      (coe v0) (coe du_prevPp_3352 (coe v3)) (coe v2)
      (coe
         MAlonzo.Code.Prelude.d_posPart_58
         (coe du_R_3382 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe du_poolParams_3364 (coe v3)) (coe du_stake_3360 (coe v3))
      (coe du_delegs_3362 (coe v3))
      (coe du_circulation_3384 (coe v3) (coe v4))
-- Ledger.Conway.Specification.Epoch._.Δr₂
d_Δr'8322'_3388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer -> Integer
d_Δr'8322'_3388 v0 ~v1 v2 v3 v4 v5
  = du_Δr'8322'_3388 v0 v2 v3 v4 v5
du_Δr'8322'_3388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> Integer -> Integer
du_Δr'8322'_3388 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'45'__302
      (coe du_R_3382 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v5 -> v5))
         (coe du_rs_3386 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
-- Ledger.Conway.Specification.Epoch._.lemmaFlow
d_lemmaFlow_3400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemmaFlow_3400 = erased
-- Ledger.Conway.Specification.Epoch._.flowConservation
d_flowConservation_3412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_3412 = erased
-- Ledger.Conway.Specification.Epoch._.÷₀-0≤⇒0≤
d_'247''8320''45'0'8804''8658'0'8804'_3420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'247''8320''45'0'8804''8658'0'8804'_3420 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                           v6 v7 ~v8 ~v9
  = du_'247''8320''45'0'8804''8658'0'8804'_3420 v6 v7
du_'247''8320''45'0'8804''8658'0'8804'_3420 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'247''8320''45'0'8804''8658'0'8804'_3420 v0 v1
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
-- Ledger.Conway.Specification.Epoch._.η-nonneg
d_η'45'nonneg_3454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_η'45'nonneg_3454 v0 ~v1 v2 v3 ~v4 ~v5
  = du_η'45'nonneg_3454 v0 v2 v3
du_η'45'nonneg_3454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_η'45'nonneg_3454 v0 v1 v2
  = coe
      du_'247''8320''45'0'8804''8658'0'8804'_3420
      (let v3 = coe du_blocksMade_3366 (coe v0) (coe v2) in
       coe (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v3)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1294
               (coe v0))))
-- Ledger.Conway.Specification.Epoch._.min1η-nonneg
d_min1η'45'nonneg_3456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_min1η'45'nonneg_3456 v0 ~v1 v2 v3 ~v4 ~v5
  = du_min1η'45'nonneg_3456 v0 v2 v3
du_min1η'45'nonneg_3456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_min1η'45'nonneg_3456 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3394
      (coe
         MAlonzo.Code.Data.Rational.Properties.d_'8804''45'totalPreorder_3646)
      (coe
         MAlonzo.Code.Data.Rational.Properties.d_'8851''45'operator_5716)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
      (coe du_η_3372 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Data.Rational.Properties.du_nonNegative'8315''185'_3992
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe (1 :: Integer))))
      (coe du_η'45'nonneg_3454 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch._.Δr₁-nonneg
d_Δr'8321''45'nonneg_3458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δr'8321''45'nonneg_3458 v0 ~v1 v2 v3 v4 ~v5
  = du_Δr'8321''45'nonneg_3458 v0 v2 v3 v4
du_Δr'8321''45'nonneg_3458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δr'8321''45'nonneg_3458 v0 v1 v2 v3
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
               (coe du_η_3372 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_3370 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_3354 (coe v3))))
      (coe
         MAlonzo.Code.Qstdlib.Data.Rational.Properties.du_'42''45'0'8804''8658'0'8804'_68
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'8851'__332
               (coe
                  MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
               (coe du_η_3372 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_3370 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_3354 (coe v3)))
         (coe
            MAlonzo.Code.Qstdlib.Data.Rational.Properties.d_fromℕ'45'0'8804'_60
            (coe du_reserves_3354 (coe v3))))
-- Ledger.Conway.Specification.Epoch._.rewardPot-nonneg
d_rewardPot'45'nonneg_3460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_rewardPot'45'nonneg_3460 v0 ~v1 v2 v3 v4 ~v5
  = du_rewardPot'45'nonneg_3460 v0 v2 v3 v4
du_rewardPot'45'nonneg_3460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_rewardPot'45'nonneg_3460 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Properties.d_'43''45'mono'45''8804'_4632
      (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12)
      (coe du_feeSS_3358 (coe v3)) (coe (0 :: Integer))
      (coe du_Δr'8321'_3376 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_nonNegative'8315''185'_3338)
      (coe
         du_Δr'8321''45'nonneg_3458 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Epoch._.Δt-nonneg
d_Δt'45'nonneg_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonneg_3462 v0 ~v1 v2 v3 v4 ~v5
  = du_Δt'45'nonneg_3462 v0 v2 v3 v4
du_Δt'45'nonneg_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δt'45'nonneg_3462 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Qstdlib.Data.Rational.Properties.d_0'8804''8658'0'8804'floor_36
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_3378 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_376
               (coe du_prevPp_3352 (coe v3)))))
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.du_UnitInterval'45''42''45'0'8804'_174
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_3378 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_376
            (coe du_prevPp_3352 (coe v3))))
-- Ledger.Conway.Specification.Epoch._.Δf-nonpos
d_Δf'45'nonpos_3464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3168 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpos_3464 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_Δf'45'nonpos_3464 v4
du_Δf'45'nonpos_3464 ::
  T_EpochState_3168 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δf'45'nonpos_3464 v0
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
         (coe (0 :: Integer)) (coe du_feeSS_3358 (coe v0)))
      (0 :: Integer)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
         (\ v1 v2 v3 v4 v5 -> v5)
         (MAlonzo.Code.Data.Integer.Base.d__'45'__302
            (coe (0 :: Integer)) (coe du_feeSS_3358 (coe v0)))
         (MAlonzo.Code.Data.Integer.Base.d_'45'__260
            (coe du_feeSS_3358 (coe v0)))
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
               (coe du_feeSS_3358 (coe v0)))
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
                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3014
                  (coe d_ss_3182 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                  (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))))
         erased)
-- Ledger.Conway.Specification.Epoch.applyRUpd
d_applyRUpd_3470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  T_EpochState_3168 -> T_EpochState_3168
d_applyRUpd_3470 v0 ~v1 v2 v3 = du_applyRUpd_3470 v0 v2 v3
du_applyRUpd_3470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  T_EpochState_3168 -> T_EpochState_3168
du_applyRUpd_3470 v0 v1 v2
  = case coe v2 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3190 v3 v4 v5 v6 v7
        -> case coe v3 of
             MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_178 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_2842 v10 v11 v12
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2410 v13 v14 v15 v16
                             -> case coe v12 of
                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1408 v17 v18 v19
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1364 v20 v21 v22
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                                                              (3168 :: Integer)
                                                                              (4112555248803407823 ::
                                                                                 Integer)
                                                                              "Ledger.Conway.Specification.Epoch.EpochState"
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
                                                                              (28 :: Integer)
                                                                              (4112555248803407823 ::
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
                                                                                 (3168 :: Integer)
                                                                                 (4112555248803407823 ::
                                                                                    Integer)
                                                                                 "Ledger.Conway.Specification.Epoch.EpochState"
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
                                                                                 (2898 :: Integer)
                                                                                 (4112555248803407823 ::
                                                                                    Integer)
                                                                                 "Ledger.Conway.Specification.Epoch._.Snapshots"
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
                                                                                    (3168 ::
                                                                                       Integer)
                                                                                    (4112555248803407823 ::
                                                                                       Integer)
                                                                                    "Ledger.Conway.Specification.Epoch.EpochState"
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
                                                                                    (2612 ::
                                                                                       Integer)
                                                                                    (4112555248803407823 ::
                                                                                       Integer)
                                                                                    "Ledger.Conway.Specification.Epoch._.LState"
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
                                                                                       (3168 ::
                                                                                          Integer)
                                                                                       (4112555248803407823 ::
                                                                                          Integer)
                                                                                       "Ledger.Conway.Specification.Epoch.EpochState"
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
                                                                                       (2354 ::
                                                                                          Integer)
                                                                                       (4112555248803407823 ::
                                                                                          Integer)
                                                                                       "Ledger.Conway.Specification.Epoch._.EnactState"
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
                                                                                          (3168 ::
                                                                                             Integer)
                                                                                          (4112555248803407823 ::
                                                                                             Integer)
                                                                                          "Ledger.Conway.Specification.Epoch.EpochState"
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
                                                                                          (2720 ::
                                                                                             Integer)
                                                                                          (4112555248803407823 ::
                                                                                             Integer)
                                                                                          "Ledger.Conway.Specification.Epoch._.RatifyState"
                                                                                          (MAlonzo.RTE.Fixity
                                                                                             MAlonzo.RTE.NonAssoc
                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                      (coe
                                                         C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3190)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                                                                    (168 :: Integer)
                                                                                    (1789989497608360366 ::
                                                                                       Integer)
                                                                                    "Ledger.Conway.Specification.PParams.Acnt"
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
                                                                                       (168 ::
                                                                                          Integer)
                                                                                       (1789989497608360366 ::
                                                                                          Integer)
                                                                                       "Ledger.Conway.Specification.PParams.Acnt"
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_178)))
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
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2922
                                                                     (coe v1)))
                                                               (coe
                                                                  du_unregRU''_3522 (coe v0)
                                                                  (coe v1) (coe v22))))
                                                         (coe
                                                            MAlonzo.Code.Prelude.d_posPart_58
                                                            (coe
                                                               MAlonzo.Code.Data.Integer.Base.d__'43'__284
                                                               (coe v9)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2924
                                                                  (coe v1))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v4)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                                                                          (2828 ::
                                                                                             Integer)
                                                                                          (11007941034284287304 ::
                                                                                             Integer)
                                                                                          "Ledger.Conway.Specification.Ledger.LState"
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
                                                                                          (2192 ::
                                                                                             Integer)
                                                                                          (11007941034284287304 ::
                                                                                             Integer)
                                                                                          "Ledger.Conway.Specification.Ledger._.UTxOState"
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
                                                                                             (2828 ::
                                                                                                Integer)
                                                                                             (11007941034284287304 ::
                                                                                                Integer)
                                                                                             "Ledger.Conway.Specification.Ledger.LState"
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
                                                                                             (2020 ::
                                                                                                Integer)
                                                                                             (11007941034284287304 ::
                                                                                                Integer)
                                                                                             "Ledger.Conway.Specification.Ledger._.GovState"
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
                                                                                                (2828 ::
                                                                                                   Integer)
                                                                                                (11007941034284287304 ::
                                                                                                   Integer)
                                                                                                "Ledger.Conway.Specification.Ledger.LState"
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
                                                                                                (2420 ::
                                                                                                   Integer)
                                                                                                (11007941034284287304 ::
                                                                                                   Integer)
                                                                                                "Ledger.Conway.Specification.Ledger._.CertState"
                                                                                                (MAlonzo.RTE.Fixity
                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_2842)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                                                                                (2392 ::
                                                                                                   Integer)
                                                                                                (18240141987391769988 ::
                                                                                                   Integer)
                                                                                                "Ledger.Conway.Specification.Utxo.UTxOState"
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
                                                                                                (590 ::
                                                                                                   Integer)
                                                                                                (18240141987391769988 ::
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
                                                                                                   (2392 ::
                                                                                                      Integer)
                                                                                                   (18240141987391769988 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Conway.Specification.Utxo.UTxOState"
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
                                                                                                      (2392 ::
                                                                                                         Integer)
                                                                                                      (18240141987391769988 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Conway.Specification.Utxo.UTxOState"
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
                                                                                                      (2006 ::
                                                                                                         Integer)
                                                                                                      (18240141987391769988 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Conway.Specification.Utxo._.Deposits"
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
                                                                                                         (2392 ::
                                                                                                            Integer)
                                                                                                         (18240141987391769988 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Specification.Utxo.UTxOState"
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
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2410)))
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
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2926
                                                                                 (coe v1))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v15) (coe v16)))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe v11)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                                                                                   (1394 ::
                                                                                                      Integer)
                                                                                                   (3005244792873517680 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Conway.Specification.Certs.CertState"
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
                                                                                                   (1350 ::
                                                                                                      Integer)
                                                                                                   (3005244792873517680 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Conway.Specification.Certs.DState"
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
                                                                                                      (1394 ::
                                                                                                         Integer)
                                                                                                      (3005244792873517680 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Conway.Specification.Certs.CertState"
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
                                                                                                      (1366 ::
                                                                                                         Integer)
                                                                                                      (3005244792873517680 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Conway.Specification.Certs.PState"
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
                                                                                                         (1394 ::
                                                                                                            Integer)
                                                                                                         (3005244792873517680 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Specification.Certs.CertState"
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
                                                                                                         (1382 ::
                                                                                                            Integer)
                                                                                                         (3005244792873517680 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Specification.Certs.GState"
                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1408)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                                                                                         (1350 ::
                                                                                                            Integer)
                                                                                                         (3005244792873517680 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Specification.Certs.DState"
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
                                                                                                         (936 ::
                                                                                                            Integer)
                                                                                                         (3005244792873517680 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Specification.Certs._.VoteDelegs"
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
                                                                                                            (1350 ::
                                                                                                               Integer)
                                                                                                            (3005244792873517680 ::
                                                                                                               Integer)
                                                                                                            "Ledger.Conway.Specification.Certs.DState"
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
                                                                                                            (1168 ::
                                                                                                               Integer)
                                                                                                            (3005244792873517680 ::
                                                                                                               Integer)
                                                                                                            "Ledger.Conway.Specification.Certs.StakeDelegs"
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
                                                                                                               (1350 ::
                                                                                                                  Integer)
                                                                                                               (3005244792873517680 ::
                                                                                                                  Integer)
                                                                                                               "Ledger.Conway.Specification.Certs.DState"
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
                                                                                                               (1164 ::
                                                                                                                  Integer)
                                                                                                               (3005244792873517680 ::
                                                                                                                  Integer)
                                                                                                               "Ledger.Conway.Specification.Certs.Rewards"
                                                                                                               (MAlonzo.RTE.Fixity
                                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1364)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v20)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v21)
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                (coe
                                                                                                   v0))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                             (coe
                                                                                                v0))))
                                                                                    v22
                                                                                    (coe
                                                                                       du_regRU_3518
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe
                                                                                          v22))))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v18) (coe v19)))))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v6) (coe v7)))))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._.regRU
d_regRU_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2998 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_3518 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             v13 ~v14 ~v15 ~v16 ~v17
  = du_regRU_3518 v0 v2 v13
du_regRU_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_3518 v0 v1 v2
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
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2928
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2))
-- Ledger.Conway.Specification.Epoch._.unregRU
d_unregRU_3520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2998 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_3520 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               v13 ~v14 ~v15 ~v16 ~v17
  = du_unregRU_3520 v0 v2 v13
du_unregRU_3520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_3520 v0 v1 v2
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
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2928
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2))
-- Ledger.Conway.Specification.Epoch._.unregRU'
d_unregRU''_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2998 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  Integer
d_unregRU''_3522 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 v13 ~v14 ~v15 ~v16 ~v17
  = du_unregRU''_3522 v0 v2 v13
du_unregRU''_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_3522 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v3 -> v3)) (coe du_unregRU_3520 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch.calculatePoolDelegatedStake
d_calculatePoolDelegatedStake_3526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStake_3526 v0 ~v1 v2
  = du_calculatePoolDelegatedStake_3526 v0 v2
du_calculatePoolDelegatedStake_3526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_calculatePoolDelegatedStake_3526 v0 v1
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
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0)))))
      (coe du_sd_3536 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2952
            (coe v1)))
-- Ledger.Conway.Specification.Epoch._.stakeCredentialsPerPool
d_stakeCredentialsPerPool_3534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeCredentialsPerPool_3534 ~v0 ~v1 v2
  = du_stakeCredentialsPerPool_3534 v2
du_stakeCredentialsPerPool_3534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeCredentialsPerPool_3534 v0
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8315''185''691'_362
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2950
            (coe v0)))
-- Ledger.Conway.Specification.Epoch._.sd
d_sd_3536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sd_3536 v0 ~v1 v2 = du_sd_3536 v0 v2
du_sd_3536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sd_3536 v0 v1
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
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1258
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8728''691'__1278
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe du_stakeCredentialsPerPool_3534 (coe v1))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2948
                  (coe v1)))))
-- Ledger.Conway.Specification.Epoch.stakeFromGADeposits
d_stakeFromGADeposits_3538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeFromGADeposits_3538 v0 ~v1 v2 v3
  = du_stakeFromGADeposits_3538 v0 v2 v3
du_stakeFromGADeposits_3538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeFromGADeposits_3538 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1278
               (coe v0))
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1294
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0)))))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_govSt''_3558 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2406
                    (coe v2))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1130
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1154
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2514
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1130
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1516
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v4
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2406
                                (coe v2))))))))
         (coe du_govSt''_3558 (coe v1)))
-- Ledger.Conway.Specification.Epoch._.govSt'
d_govSt''_3558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3558 ~v0 ~v1 v2 ~v3 = du_govSt''_3558 v2
du_govSt''_3558 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_3558 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe
            (\ v1 ->
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1026
                 (coe v1))))
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_456
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v0))
-- Ledger.Conway.Specification.Epoch.VDelegDelegatedStake.activeDReps
d_activeDReps_3582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_3582 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_activeDReps_3582 v0 v2 v5
du_activeDReps_3582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_activeDReps_3582 v0 v1 v2
  = coe
      MAlonzo.Code.Class.IsSet.du_dom_586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1268
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2514
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1520)
         (coe v2) (coe v1))
-- Ledger.Conway.Specification.Epoch.VDelegDelegatedStake.activeVDelegs
d_activeVDelegs_3584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_940]
d_activeVDelegs_3584 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_activeVDelegs_3584 v0 v2 v5
du_activeVDelegs_3584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_940]
du_activeVDelegs_3584 v0 v1 v2
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
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_942)
         (coe du_activeDReps_3582 (coe v0) (coe v1) (coe v2)))
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
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_946))
         (coe
            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            erased
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_944)))
-- Ledger.Conway.Specification.Epoch.VDelegDelegatedStake.stakePerCredential
d_stakePerCredential_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer
d_stakePerCredential_3586 v0 ~v1 ~v2 v3 v4 ~v5 v6 v7
  = du_stakePerCredential_3586 v0 v3 v4 v6 v7
du_stakePerCredential_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer
du_stakePerCredential_3586 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2468
            (coe v0)
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8739''94'''__1440
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2402 (coe v1))
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                       (coe
                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                      (coe v0))))))
                       (coe du_getStakeCred_3334 (coe v5))
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4))))))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46 (0 :: Integer)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe du_stakeFromGADeposits_3538 (coe v0) (coe v2) (coe v1))
               (coe v4)
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                  (coe
                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                           (coe du_stakeFromGADeposits_3538 (coe v0) (coe v2) (coe v1)))))))))
      (coe
         MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46 (0 :: Integer)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1362
               (coe v3))
            (coe v4)
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
               (coe
                  MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1362
                           (coe v3))))))))
-- Ledger.Conway.Specification.Epoch.VDelegDelegatedStake.calculate
d_calculate_3592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculate_3592 v0 ~v1 v2 v3 v4 v5 v6
  = du_calculate_3592 v0 v2 v3 v4 v5 v6
du_calculate_3592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_calculate_3592 v0 v1 v2 v3 v4 v5
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
                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                          (coe v0))))
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                       (coe v0))))
              (coe
                 MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
              (coe
                 du_stakePerCredential_3586 (coe v0) (coe v2) (coe v3) (coe v5))
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
                    (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1116
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2514
                          (coe v0))))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_962
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1510)
                    v5)
                 (coe v6))))
      (coe du_activeVDelegs_3584 (coe v0) (coe v1) (coe v4))
-- Ledger.Conway.Specification.Epoch.calculateVDelegDelegatedStake
d_calculateVDelegDelegatedStake_3598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculateVDelegDelegatedStake_3598 v0 ~v1
  = du_calculateVDelegDelegatedStake_3598 v0
du_calculateVDelegDelegatedStake_3598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_calculateVDelegDelegatedStake_3598 v0
  = coe du_calculate_3592 (coe v0)
-- Ledger.Conway.Specification.Epoch.calculatePoolDelegatedStakeForVoting
d_calculatePoolDelegatedStakeForVoting_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStakeForVoting_3600 v0 ~v1 v2 v3 v4
  = du_calculatePoolDelegatedStakeForVoting_3600 v0 v2 v3 v4
du_calculatePoolDelegatedStakeForVoting_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_calculatePoolDelegatedStakeForVoting_3600 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe du_calculatePoolDelegatedStake_3526 (coe v0) (coe v1))
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
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0)))))
         (coe du_stakeFromDeposits_3612 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2952
               (coe v1))))
-- Ledger.Conway.Specification.Epoch._.stakeFromDeposits
d_stakeFromDeposits_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeFromDeposits_3612 v0 ~v1 v2 v3 v4
  = du_stakeFromDeposits_3612 v0 v2 v3 v4
du_stakeFromDeposits_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeFromDeposits_3612 v0 v1 v2 v3
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
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1258
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8728''691'__1278
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                     MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2950
                     (coe v1))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe du_stakeFromGADeposits_3538 (coe v0) (coe v3) (coe v2)))))
-- Ledger.Conway.Specification.Epoch.mkStakeDistrs
d_mkStakeDistrs_3614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1794
d_mkStakeDistrs_3614 v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_mkStakeDistrs_3614 v0 v2 v3 v4 v5 v6 v7
du_mkStakeDistrs_3614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2940 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1794
du_mkStakeDistrs_3614 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                    (1794 :: Integer) (11046137501266703203 :: Integer)
                                    "Ledger.Conway.Specification.Ratify.StakeDistrs"
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
                                             (656 :: Integer) (11046137501266703203 :: Integer)
                                             "Ledger.Conway.Specification.Ratify._.VDeleg"
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
                                       (1794 :: Integer) (11046137501266703203 :: Integer)
                                       "Ledger.Conway.Specification.Ratify.StakeDistrs"
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
                                                (988 :: Integer) (11046137501266703203 :: Integer)
                                                "Ledger.Conway.Specification.Ratify._.THash"
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
               MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1804)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe du_calculateVDelegDelegatedStake_3598 v0 v2 v3 v4 v5 v6)
         (coe
            du_calculatePoolDelegatedStakeForVoting_3600 (coe v0) (coe v1)
            (coe v3) (coe v4)))
-- Ledger.Conway.Specification.Epoch.getOrphans
d_getOrphans_3678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_3678 v0 ~v1 v2 v3 = du_getOrphans_3678 v0 v2 v3
du_getOrphans_3678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getOrphans_3678 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
         (coe du_step_3688 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v2))
         (coe MAlonzo.Code.Data.List.Base.du_length_268 v2))
-- Ledger.Conway.Specification.Epoch._.step
d_step_3688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_step_3688 v0 ~v1 v2 ~v3 v4 = du_step_3688 v0 v2 v4
du_step_3688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_step_3688 v0 v1 v2
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.d_hasParent'63'_2140
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2514
                                    (coe v0))
                                 (coe v1) (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_842
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1030
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1032
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
                              MAlonzo.Code.Ledger.Conway.Specification.Gov.d_hasParent'63'_2140
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2514
                                 (coe v0))
                              (coe v1) (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_842
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1030
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1032
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
                   (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.Governance-Update
d_Governance'45'Update_3710 a0 a1 = ()
data T_Governance'45'Update_3710
  = C_GovernanceUpdate_3720 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Specification.Epoch.Governance-Update.removedGovActions
d_removedGovActions_3716 ::
  T_Governance'45'Update_3710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_3716 v0
  = case coe v0 of
      C_GovernanceUpdate_3720 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.Governance-Update.govSt'
d_govSt''_3718 ::
  T_Governance'45'Update_3710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3718 v0
  = case coe v0 of
      C_GovernanceUpdate_3720 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.GovernanceUpdate.tmpGovSt
d_tmpGovSt_3744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_tmpGovSt_3744 v0 ~v1 v2 v3 = du_tmpGovSt_3744 v0 v2 v3
du_tmpGovSt_3744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_tmpGovSt_3744 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_filter_112
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
           (coe
              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
              (coe
                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1278
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
                    (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1848
                       (coe v2)))))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
      (MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2838
         (coe v1))
-- Ledger.Conway.Specification.Epoch.GovernanceUpdate.orphans
d_orphans_3748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_orphans_3748 v0 ~v1 v2 v3 = du_orphans_3748 v0 v2 v3
du_orphans_3748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_orphans_3748 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_fromList_456
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         du_getOrphans_3678 (coe v0)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1846 (coe v2))
         (coe du_tmpGovSt_3744 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Specification.Epoch.GovernanceUpdate.removed'
d_removed''_3750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed''_3750 v0 ~v1 v2 v3 = du_removed''_3750 v0 v2 v3
du_removed''_3750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed''_3750 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1848
         (coe v2))
      (coe du_orphans_3748 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch.GovernanceUpdate.removedGovActions
d_removedGovActions_3752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_3752 v0 ~v1 v2 v3
  = du_removedGovActions_3752 v0 v2 v3
du_removedGovActions_3752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removedGovActions_3752 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Axiom.Set.du_map_426
              (MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (\ v4 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1026
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                   (coe v4))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
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
                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1154
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2514
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2406
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2836
                          (coe v1)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                       (MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       erased
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1130
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))))))
      (coe du_removed''_3750 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch.GovernanceUpdate.govSt'
d_govSt''_3762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3762 v0 ~v1 v2 v3 = du_govSt''_3762 v0 v2 v3
du_govSt''_3762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_3762 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_filter_112
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
           (coe
              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
              (coe
                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1278
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
                    (coe du_removed''_3750 (coe v0) (coe v1) (coe v2)))))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
      (MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2838
         (coe v1))
-- Ledger.Conway.Specification.Epoch.GovernanceUpdate.updates
d_updates_3766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  T_Governance'45'Update_3710
d_updates_3766 v0 ~v1 v2 v3 = du_updates_3766 v0 v2 v3
du_updates_3766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1838 ->
  T_Governance'45'Update_3710
du_updates_3766 v0 v1 v2
  = coe
      C_GovernanceUpdate_3720
      (coe du_removedGovActions_3752 (coe v0) (coe v1) (coe v2))
      (coe du_govSt''_3762 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch.Pre-POOLREAP-Update
d_Pre'45'POOLREAP'45'Update_3768 a0 a1 = ()
data T_Pre'45'POOLREAP'45'Update_3768
  = C_Pre'45'POOLREAPUpdate_3782 MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
-- Ledger.Conway.Specification.Epoch.Pre-POOLREAP-Update.pState'
d_pState''_3776 ::
  T_Pre'45'POOLREAP'45'Update_3768 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_pState''_3776 v0
  = case coe v0 of
      C_Pre'45'POOLREAPUpdate_3782 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.Pre-POOLREAP-Update.gState'
d_gState''_3778 ::
  T_Pre'45'POOLREAP'45'Update_3768 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382
d_gState''_3778 v0
  = case coe v0 of
      C_Pre'45'POOLREAPUpdate_3782 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.Pre-POOLREAP-Update.utxoSt'
d_utxoSt''_3780 ::
  T_Pre'45'POOLREAP'45'Update_3768 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
d_utxoSt''_3780 v0
  = case coe v0 of
      C_Pre'45'POOLREAPUpdate_3782 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.Pre-POOLREAPUpdate._.govSt'
d_govSt''_3816 ::
  T_Governance'45'Update_3710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3816 v0 = coe d_govSt''_3718 (coe v0)
-- Ledger.Conway.Specification.Epoch.Pre-POOLREAPUpdate._.removedGovActions
d_removedGovActions_3818 ::
  T_Governance'45'Update_3710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_3818 v0 = coe d_removedGovActions_3716 (coe v0)
-- Ledger.Conway.Specification.Epoch.Pre-POOLREAPUpdate.utxoSt'
d_utxoSt''_3820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
d_utxoSt''_3820 v0 ~v1 v2 ~v3 v4 = du_utxoSt''_3820 v0 v2 v4
du_utxoSt''_3820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
du_utxoSt''_3820 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                    (2392 :: Integer) (18240141987391769988 :: Integer)
                                    "Ledger.Conway.Specification.Utxo.UTxOState"
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
                                    (590 :: Integer) (18240141987391769988 :: Integer) "_.UTxO"
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
                                       (2392 :: Integer) (18240141987391769988 :: Integer)
                                       "Ledger.Conway.Specification.Utxo.UTxOState"
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
                                          (2392 :: Integer) (18240141987391769988 :: Integer)
                                          "Ledger.Conway.Specification.Utxo.UTxOState"
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
                                          (2006 :: Integer) (18240141987391769988 :: Integer)
                                          "Ledger.Conway.Specification.Utxo._.Deposits"
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
                                             (2392 :: Integer) (18240141987391769988 :: Integer)
                                             "Ledger.Conway.Specification.Utxo.UTxOState"
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
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2410)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2402
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2836
               (coe v1)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2404
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2836
                  (coe v1)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased
                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1154
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2514
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2406
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2836
                        (coe v1)))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_426
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (d_removedGovActions_3716 (coe v2))))
               (coe (0 :: Integer)))))
-- Ledger.Conway.Specification.Epoch.Pre-POOLREAPUpdate.pState'
d_pState''_3822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_pState''_3822 v0 ~v1 v2 ~v3 ~v4 = du_pState''_3822 v0 v2
du_pState''_3822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
du_pState''_3822 v0 v1
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                    (1366 :: Integer) (3005244792873517680 :: Integer)
                                    "Ledger.Conway.Specification.Certs.PState"
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
                                    (1160 :: Integer) (3005244792873517680 :: Integer)
                                    "Ledger.Conway.Specification.Certs.Pools"
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
                                       (1366 :: Integer) (3005244792873517680 :: Integer)
                                       "Ledger.Conway.Specification.Certs.PState"
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
                                       (1160 :: Integer) (3005244792873517680 :: Integer)
                                       "Ledger.Conway.Specification.Certs.Pools"
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
                                          (1366 :: Integer) (3005244792873517680 :: Integer)
                                          "Ledger.Conway.Specification.Certs.PState"
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
                                                   (176 :: Integer) (3005244792873517680 :: Integer)
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
                                                      (122 :: Integer)
                                                      (3005244792873517680 :: Integer) "_.Epoch"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1380)))
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
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                        (coe v0)))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1404
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2840
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1374
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1404
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2840
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
               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1378
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1404
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2840
                     (coe v1))))))
-- Ledger.Conway.Specification.Epoch.Pre-POOLREAPUpdate.gState'
d_gState''_3824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382
d_gState''_3824 v0 ~v1 v2 v3 v4 = du_gState''_3824 v0 v2 v3 v4
du_gState''_3824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382
du_gState''_3824 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                    (1382 :: Integer) (3005244792873517680 :: Integer)
                                    "Ledger.Conway.Specification.Certs.GState"
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
                                    (800 :: Integer) (3005244792873517680 :: Integer)
                                    "Ledger.Conway.Specification.Certs._.DReps"
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
                                       (1382 :: Integer) (3005244792873517680 :: Integer)
                                       "Ledger.Conway.Specification.Certs.GState"
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
                                                (40 :: Integer) (3005244792873517680 :: Integer)
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
                                                                  (1190 :: Integer)
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
                                                                                 (608 :: Integer)
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
                                                                        (608 :: Integer)
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
                                                               (3005244792873517680 :: Integer)
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
                                                                                 (1190 :: Integer)
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
                                                                                       (206 ::
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
                                                                                                (608 ::
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
                                                                                       (608 ::
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
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'10215''7515'_1392)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Class.ToBool.du_if_then_else__38
            (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88)
            (coe
               MAlonzo.Code.Data.List.Base.du_null_262
               (coe d_govSt''_3718 (coe v3)))
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
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1662
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1250
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1520)
                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1406
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2840
                             (coe v1))))))
            (coe
               (\ v4 ->
                  coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1250
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1520)
                    (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1406
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2840
                          (coe v1))))))
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
                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                        (coe v0)))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1390
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1406
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2840
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1170
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1130
                  (coe v2)))))
-- Ledger.Conway.Specification.Epoch.Pre-POOLREAPUpdate.updates
d_updates_3826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  T_Governance'45'Update_3710 -> T_Pre'45'POOLREAP'45'Update_3768
d_updates_3826 v0 ~v1 v2 v3 v4 = du_updates_3826 v0 v2 v3 v4
du_updates_3826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  T_Governance'45'Update_3710 -> T_Pre'45'POOLREAP'45'Update_3768
du_updates_3826 v0 v1 v2 v3
  = coe
      C_Pre'45'POOLREAPUpdate_3782
      (coe du_pState''_3822 (coe v0) (coe v1))
      (coe du_gState''_3824 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_utxoSt''_3820 (coe v0) (coe v1) (coe v3))
-- Ledger.Conway.Specification.Epoch.Post-POOLREAP-Update
d_Post'45'POOLREAP'45'Update_3828 a0 a1 = ()
data T_Post'45'POOLREAP'45'Update_3828
  = C_Post'45'POOLREAPUpdate_3838 MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168
-- Ledger.Conway.Specification.Epoch.Post-POOLREAP-Update.dState''
d_dState''''_3834 ::
  T_Post'45'POOLREAP'45'Update_3828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
d_dState''''_3834 v0
  = case coe v0 of
      C_Post'45'POOLREAPUpdate_3838 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.Post-POOLREAP-Update.acnt''
d_acnt''''_3836 ::
  T_Post'45'POOLREAP'45'Update_3828 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168
d_acnt''''_3836 v0
  = case coe v0 of
      C_Post'45'POOLREAPUpdate_3838 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.Post-POOLREAPUpdate._.govSt'
d_govSt''_3854 ::
  T_Governance'45'Update_3710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3854 v0 = coe d_govSt''_3718 (coe v0)
-- Ledger.Conway.Specification.Epoch.Post-POOLREAPUpdate._.removedGovActions
d_removedGovActions_3856 ::
  T_Governance'45'Update_3710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_3856 v0 = coe d_removedGovActions_3716 (coe v0)
-- Ledger.Conway.Specification.Epoch.Post-POOLREAPUpdate.govActionReturns
d_govActionReturns_3858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionReturns_3858 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_govActionReturns_3858 v0 v6
du_govActionReturns_3858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionReturns_3858 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_584
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1294
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1258
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v2 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
            (d_removedGovActions_3716 (coe v1))))
-- Ledger.Conway.Specification.Epoch.Post-POOLREAPUpdate.payout
d_payout_3866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_payout_3866 v0 ~v1 v2 ~v3 ~v4 ~v5 v6 = du_payout_3866 v0 v2 v6
du_payout_3866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_payout_3866 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1294
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe du_govActionReturns_3858 (coe v0) (coe v2))
      (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1138
         (coe v1))
-- Ledger.Conway.Specification.Epoch.Post-POOLREAPUpdate.refunds
d_refunds_3868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refunds_3868 v0 ~v1 v2 ~v3 v4 ~v5 v6
  = du_refunds_3868 v0 v2 v4 v6
du_refunds_3868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refunds_3868 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_2070
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_payout_3866 (coe v0) (coe v1) (coe v3))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
              (coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1294
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                       (coe du_payout_3866 (coe v0) (coe v1) (coe v3)))))))
      (coe du_toRewardAddress_3330 (coe v0))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1362
            (coe v2)))
-- Ledger.Conway.Specification.Epoch.Post-POOLREAPUpdate.dState''
d_dState''''_3870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
d_dState''''_3870 v0 ~v1 v2 ~v3 v4 ~v5 v6
  = du_dState''''_3870 v0 v2 v4 v6
du_dState''''_3870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
du_dState''''_3870 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                    (1350 :: Integer) (3005244792873517680 :: Integer)
                                    "Ledger.Conway.Specification.Certs.DState"
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
                                    (936 :: Integer) (3005244792873517680 :: Integer)
                                    "Ledger.Conway.Specification.Certs._.VoteDelegs"
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
                                       (1350 :: Integer) (3005244792873517680 :: Integer)
                                       "Ledger.Conway.Specification.Certs.DState"
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
                                       (1168 :: Integer) (3005244792873517680 :: Integer)
                                       "Ledger.Conway.Specification.Certs.StakeDelegs"
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
                                          (1350 :: Integer) (3005244792873517680 :: Integer)
                                          "Ledger.Conway.Specification.Certs.DState"
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
                                          (1164 :: Integer) (3005244792873517680 :: Integer)
                                          "Ledger.Conway.Specification.Certs.Rewards"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1364)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1358
            (coe v2))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1360
               (coe v2))
            (coe
               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               (coe
                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                        (coe v0))))
               (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1362
                  (coe v2))
               (coe du_refunds_3868 (coe v0) (coe v1) (coe v2) (coe v3)))))
-- Ledger.Conway.Specification.Epoch.Post-POOLREAPUpdate.unclaimed
d_unclaimed_3872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  T_Governance'45'Update_3710 -> Integer
d_unclaimed_3872 v0 ~v1 v2 ~v3 v4 ~v5 v6
  = du_unclaimed_3872 v0 v2 v4 v6
du_unclaimed_3872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  T_Governance'45'Update_3710 -> Integer
du_unclaimed_3872 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1294
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4)) (coe du_payout_3866 (coe v0) (coe v1) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4))
         (coe du_refunds_3868 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Epoch.Post-POOLREAPUpdate.totWithdrawals
d_totWithdrawals_3874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  T_Governance'45'Update_3710 -> Integer
d_totWithdrawals_3874 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_totWithdrawals_3874 v0 v2
du_totWithdrawals_3874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  Integer
du_totWithdrawals_3874 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1294
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1138
         (coe v1))
-- Ledger.Conway.Specification.Epoch.Post-POOLREAPUpdate.acnt''
d_acnt''''_3878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168
d_acnt''''_3878 v0 ~v1 v2 v3 v4 v5 v6
  = du_acnt''''_3878 v0 v2 v3 v4 v5 v6
du_acnt''''_3878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  T_Governance'45'Update_3710 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168
du_acnt''''_3878 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                    (168 :: Integer) (1789989497608360366 :: Integer)
                                    "Ledger.Conway.Specification.PParams.Acnt"
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
                                       (168 :: Integer) (1789989497608360366 :: Integer)
                                       "Ledger.Conway.Specification.PParams.Acnt"
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
               MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_178)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            addInt
            (coe
               addInt (coe du_unclaimed_3872 (coe v0) (coe v1) (coe v3) (coe v5))
               (coe
                  MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2440)
                  (MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2836
                     (coe v2))))
            (coe
               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_174
                  (coe v4))
               (coe du_totWithdrawals_3874 (coe v0) (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_176
            (coe v4)))
-- Ledger.Conway.Specification.Epoch.Post-POOLREAPUpdate.updates
d_updates_3880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  T_Governance'45'Update_3710 -> T_Post'45'POOLREAP'45'Update_3828
d_updates_3880 v0 ~v1 v2 v3 v4 v5 v6
  = du_updates_3880 v0 v2 v3 v4 v5 v6
du_updates_3880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  T_Governance'45'Update_3710 -> T_Post'45'POOLREAP'45'Update_3828
du_updates_3880 v0 v1 v2 v3 v4 v5
  = coe
      C_Post'45'POOLREAPUpdate_3838
      (coe du_dState''''_3870 (coe v0) (coe v1) (coe v3) (coe v5))
      (coe
         du_acnt''''_3878 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- Ledger.Conway.Specification.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__3882 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__3882
  = C_EPOCH_3906 MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
                 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3908 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3908
  = C_NEWEPOCH'45'New_3920 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_3926 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_3936 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
