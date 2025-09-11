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
import qualified MAlonzo.Code.Class.HasOrder.Core
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
import qualified MAlonzo.Code.Function.Base
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

-- _.Constraint
d_Constraint_10 :: Integer -> ()
d_Constraint_10 = erased
-- _.fromNat
d_fromNat_12 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_fromNat_12 v0 ~v1 = du_fromNat_12 v0
du_fromNat_12 :: Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_fromNat_12 v0
  = coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v0)
-- _.Acnt
d_Acnt_34 a0 = ()
-- _.Credential
d_Credential_64 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_100 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
            (coe v0)))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_130 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_292
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1284
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
            (coe v0)))
-- _.Epoch
d_Epoch_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_168 = erased
-- _.GovActionID
d_GovActionID_180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_180 = erased
-- _.GovActionState
d_GovActionState_184 a0 = ()
-- _.HasPParams
d_HasPParams_288 a0 a1 a2 = ()
-- _.HasTreasury-Acnt
d_HasTreasury'45'Acnt_294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_294 ~v0 = du_HasTreasury'45'Acnt_294
du_HasTreasury'45'Acnt_294 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_294
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_176
-- _.THash
d_THash_350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_350 = erased
-- _.Number-Epoch
d_Number'45'Epoch_382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_382 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_258
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
         (coe v0))
-- _.PParams
d_PParams_394 a0 = ()
-- _.PParamsOf
d_PParamsOf_402 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_PParamsOf_402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_428
      (coe v0)
-- _.RwdAddr
d_RwdAddr_438 a0 = ()
-- _.TxOut
d_TxOut_550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_550 = erased
-- _.VDeleg
d_VDeleg_566 a0 = ()
-- _.VoteDelegs
d_VoteDelegs_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VoteDelegs_582 = erased
-- _.Withdrawals
d_Withdrawals_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_586 = erased
-- _.addEpoch
d_addEpoch_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_592 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
         (coe v0))
-- _.preoEpoch
d_preoEpoch_712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_712 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
         (coe v0))
-- _.Acnt.reserves
d_reserves_786 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  Integer
d_reserves_786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
      (coe v0)
-- _.Acnt.treasury
d_treasury_788 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  Integer
d_treasury_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
      (coe v0)
-- _.GovActionState.action
d_action_848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_880
d_action_848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1018
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000 ->
  AgdaAny
d_expiresIn_850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1016
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000 ->
  AgdaAny
d_prevAction_852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1020
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1014
      (coe v0)
-- _.GovActionState.votes
d_votes_856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_984
d_votes_856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1012
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_906 a0 = ()
-- _.GovActions.VDeleg
d_VDeleg_986 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_PParamsOf_1132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_428
      (coe v0)
-- _.PParams.Emax
d_Emax_1236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_Emax_1236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_388
      (coe v0)
-- _.PParams.a
d_a_1238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_a_1238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_360 (coe v0)
-- _.PParams.a0
d_a0_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_392 (coe v0)
-- _.PParams.b
d_b_1242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_b_1242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_362 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_ccMaxTermLength_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_404
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_ccMinSize_1246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_402
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_coinsPerUTxOByte_1248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_372
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_collateralPercentage_1250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_394
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_costmdls_1252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_396
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_drepActivity_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_412
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_drepDeposit_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_410
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204
d_drepThresholds_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_govActionDeposit_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_408
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_govActionLifetime_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_406
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_keyDeposit_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_maxBlockExUnits_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_352
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxBlockSize_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_344
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxCollateralInputs_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_356
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxHeaderSize_1272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_348
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxRefScriptSizePerBlock_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_380
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxRefScriptSizePerTx_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_378
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_maxTxExUnits_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_350
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxTxSize_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_346
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxValSize_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_354
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_376
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_minUTxOValue_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_386
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_368
      (coe v0)
-- _.PParams.nopt
d_nopt_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_nopt_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_390
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1292 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_poolDeposit_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_248
d_poolThresholds_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_398
      (coe v0)
-- _.PParams.prices
d_prices_1296 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_prices_1296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_374
      (coe v0)
-- _.PParams.pv
d_pv_1298 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_358 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1300 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_384
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_382
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1304 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_370
      (coe v0)
-- _.RwdAddr.net
d_net_1504 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  AgdaAny
d_net_1504 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- _.RwdAddr.stake
d_stake_1506 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1506 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Epoch._.CertState
d_CertState_1848 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.CertStateOf
d_CertStateOf_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1448 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
d_CertStateOf_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1456
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DRepsOf
d_DRepsOf_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1140
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState
d_DState_1870 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1876 v0 ~v1
  = du_DecEq'45'DepositPurpose_1876 v0
du_DecEq'45'DepositPurpose_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
         (coe v0))
-- Ledger.Conway.Specification.Epoch._.DepositPurpose
d_DepositPurpose_1882 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.DepositsOf
d_DepositsOf_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1078 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1086
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GState
d_GState_1894 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.HasCertState
d_HasCertState_1922 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasDReps
d_HasDReps_1928 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasDReps-CertState
d_HasDReps'45'CertState_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132
d_HasDReps'45'CertState_1932 ~v0 ~v1
  = du_HasDReps'45'CertState_1932
du_HasDReps'45'CertState_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132
du_HasDReps'45'CertState_1932
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1490
-- Ledger.Conway.Specification.Epoch._.HasDReps-GState
d_HasDReps'45'GState_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132
d_HasDReps'45'GState_1934 ~v0 ~v1 = du_HasDReps'45'GState_1934
du_HasDReps'45'GState_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132
du_HasDReps'45'GState_1934
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1478
-- Ledger.Conway.Specification.Epoch._.HasDeposits
d_HasDeposits_1942 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasPState
d_HasPState_1954 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasPState-CertState
d_HasPState'45'CertState_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408
d_HasPState'45'CertState_1958 ~v0 ~v1
  = du_HasPState'45'CertState_1958
du_HasPState'45'CertState_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408
du_HasPState'45'CertState_1958
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1484
-- Ledger.Conway.Specification.Epoch._.HasRewards
d_HasRewards_1974 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasRewards-CertState
d_HasRewards'45'CertState_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1180
d_HasRewards'45'CertState_1978 ~v0 ~v1
  = du_HasRewards'45'CertState_1978
du_HasRewards'45'CertState_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1180
du_HasRewards'45'CertState_1978
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1488
-- Ledger.Conway.Specification.Epoch._.HasRewards-DState
d_HasRewards'45'DState_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1180
d_HasRewards'45'DState_1980 ~v0 ~v1 = du_HasRewards'45'DState_1980
du_HasRewards'45'DState_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1180
du_HasRewards'45'DState_1980
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1472
-- Ledger.Conway.Specification.Epoch._.PStateOf
d_PStateOf_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
d_PStateOf_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1416
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Pools
d_Pools_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  ()
d_Pools_2012 = erased
-- Ledger.Conway.Specification.Epoch._.Rewards
d_Rewards_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  ()
d_Rewards_2020 = erased
-- Ledger.Conway.Specification.Epoch._.RewardsOf
d_RewardsOf_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1180 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1188
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Stake
d_Stake_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  ()
d_Stake_2024 = erased
-- Ledger.Conway.Specification.Epoch._.StakeDelegs
d_StakeDelegs_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  ()
d_StakeDelegs_2026 = erased
-- Ledger.Conway.Specification.Epoch._.CertState.dState
d_dState_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312
d_dState_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1360
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.CertState.gState
d_gState_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340
d_gState_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1364
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.CertState.pState
d_pState_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
d_pState_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1362
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState.rewards
d_rewards_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState.stakeDelegs
d_stakeDelegs_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState.voteDelegs
d_voteDelegs_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GState.ccHotKeys
d_ccHotKeys_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1348
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GState.dreps
d_dreps_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1346
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasCertState.CertStateOf
d_CertStateOf_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1448 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
d_CertStateOf_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1456
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasDReps.DRepsOf
d_DRepsOf_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1140
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasDeposits.DepositsOf
d_DepositsOf_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1078 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1086
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasPState.PStateOf
d_PStateOf_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
d_PStateOf_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1416
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasRewards.RewardsOf
d_RewardsOf_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1180 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1188
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState
d_EnactState_2254 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.EnactStateOf
d_EnactStateOf_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1082 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_EnactStateOf_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1090
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasEnactState
d_HasEnactState_2262 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasPParams-EnactState
d_HasPParams'45'EnactState_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420
d_HasPParams'45'EnactState_2266 ~v0 ~v1
  = du_HasPParams'45'EnactState_2266
du_HasPParams'45'EnactState_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420
du_HasPParams'45'EnactState_2266
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1098
-- Ledger.Conway.Specification.Epoch._.EnactState.cc
d_cc_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1066 (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.constitution
d_constitution_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1068
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.pparams
d_pparams_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1072
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.pv
d_pv_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1070 (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.withdrawals
d_withdrawals_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1074
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasEnactState.EnactStateOf
d_EnactStateOf_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1082 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_EnactStateOf_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1090
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GovState
d_GovState_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  ()
d_GovState_2336 = erased
-- Ledger.Conway.Specification.Epoch._.GovStateOf
d_GovStateOf_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2440 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2448
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasGovState
d_HasGovState_2346 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasGovState.GovStateOf
d_GovStateOf_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2440 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2448
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasCCHotKeys-LState
d_HasCCHotKeys'45'LState_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1116
d_HasCCHotKeys'45'LState_2466 ~v0 ~v1
  = du_HasCCHotKeys'45'LState_2466
du_HasCCHotKeys'45'LState_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1116
du_HasCCHotKeys'45'LState_2466
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCCHotKeys'45'LState_2782
-- Ledger.Conway.Specification.Epoch._.HasCast-LState
d_HasCast'45'LState_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2470 ~v0 ~v1 = du_HasCast'45'LState_2470
du_HasCast'45'LState_2470 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2470
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LState_2788
-- Ledger.Conway.Specification.Epoch._.HasCertState-LState
d_HasCertState'45'LState_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1448
d_HasCertState'45'LState_2472 ~v0 ~v1
  = du_HasCertState'45'LState_2472
du_HasCertState'45'LState_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1448
du_HasCertState'45'LState_2472
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2764
-- Ledger.Conway.Specification.Epoch._.HasDReps-LState
d_HasDReps'45'LState_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132
d_HasDReps'45'LState_2474 ~v0 ~v1 = du_HasDReps'45'LState_2474
du_HasDReps'45'LState_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132
du_HasDReps'45'LState_2474
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDReps'45'LState_2784
-- Ledger.Conway.Specification.Epoch._.HasDState-LState
d_HasDState'45'LState_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1388
d_HasDState'45'LState_2476 ~v0 ~v1 = du_HasDState'45'LState_2476
du_HasDState'45'LState_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1388
du_HasDState'45'LState_2476
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDState'45'LState_2772
-- Ledger.Conway.Specification.Epoch._.HasDeposits-LState
d_HasDeposits'45'LState_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1078
d_HasDeposits'45'LState_2478 ~v0 ~v1
  = du_HasDeposits'45'LState_2478
du_HasDeposits'45'LState_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1078
du_HasDeposits'45'LState_2478
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDeposits'45'LState_2766
-- Ledger.Conway.Specification.Epoch._.HasGState-LState
d_HasGState'45'LState_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1428
d_HasGState'45'LState_2484 ~v0 ~v1 = du_HasGState'45'LState_2484
du_HasGState'45'LState_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1428
du_HasGState'45'LState_2484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGState'45'LState_2770
-- Ledger.Conway.Specification.Epoch._.HasGovState-LState
d_HasGovState'45'LState_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2440
d_HasGovState'45'LState_2486 ~v0 ~v1
  = du_HasGovState'45'LState_2486
du_HasGovState'45'LState_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2440
du_HasGovState'45'LState_2486
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGovState'45'LState_2762
-- Ledger.Conway.Specification.Epoch._.HasLState
d_HasLState_2488 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasPState-LState
d_HasPState'45'LState_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408
d_HasPState'45'LState_2494 ~v0 ~v1 = du_HasPState'45'LState_2494
du_HasPState'45'LState_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408
du_HasPState'45'LState_2494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasPState'45'LState_2774
-- Ledger.Conway.Specification.Epoch._.HasPools-LState
d_HasPools'45'LState_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1148
d_HasPools'45'LState_2496 ~v0 ~v1 = du_HasPools'45'LState_2496
du_HasPools'45'LState_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1148
du_HasPools'45'LState_2496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasPools'45'LState_2768
-- Ledger.Conway.Specification.Epoch._.HasVoteDelegs-LState
d_HasVoteDelegs'45'LState_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_846
d_HasVoteDelegs'45'LState_2502 ~v0 ~v1
  = du_HasVoteDelegs'45'LState_2502
du_HasVoteDelegs'45'LState_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_846
du_HasVoteDelegs'45'LState_2502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasVoteDelegs'45'LState_2776
-- Ledger.Conway.Specification.Epoch._.LState
d_LState_2512 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.LStateOf
d_LStateOf_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2742 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722
d_LStateOf_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2750
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasLState.LStateOf
d_LStateOf_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2742 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722
d_LStateOf_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2750
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.LState.certState
d_certState_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
d_certState_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2734
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.LState.govSt
d_govSt_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2732
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.LState.utxoSt
d_utxoSt_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_utxoSt_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2730
      (coe v0)
-- Ledger.Conway.Specification.Epoch._._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2558 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Epoch._.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2560 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2560
du_HasCast'45'PoolReapState_2560 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2560
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.du_HasCast'45'PoolReapState_2426
-- Ledger.Conway.Specification.Epoch._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2586 = erased
-- Ledger.Conway.Specification.Epoch._.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_2590 ~v0 ~v1 = du_HasCast'45'RatifyEnv_2590
du_HasCast'45'RatifyEnv_2590 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyEnv_2590
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyEnv_2588
-- Ledger.Conway.Specification.Epoch._.HasCast-RatifyState
d_HasCast'45'RatifyState_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_2592 ~v0 ~v1
  = du_HasCast'45'RatifyState_2592
du_HasCast'45'RatifyState_2592 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_2592
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_2590
-- Ledger.Conway.Specification.Epoch._.HasRatifyState
d_HasRatifyState_2598 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.RatifyEnv
d_RatifyEnv_2612 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.RatifyState
d_RatifyState_2616 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.RatifyStateOf
d_RatifyStateOf_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2566 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546
d_RatifyStateOf_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_2574
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.StakeDistrs
d_StakeDistrs_2622 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.HasRatifyState.RatifyStateOf
d_RatifyStateOf_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2566 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546
d_RatifyStateOf_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_2574
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.ccHotKeys
d_ccHotKeys_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_ccHotKeys_2536
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.currentEpoch
d_currentEpoch_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  AgdaAny
d_currentEpoch_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_2532
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.delegatees
d_delegatees_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delegatees_2542
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.dreps
d_dreps_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_dreps_2534
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.pools
d_pools_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_pools_2540
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.stakeDistrs
d_stakeDistrs_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2502
d_stakeDistrs_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_2530
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyEnv.treasury
d_treasury_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  Integer
d_treasury_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_2538
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyState.delay
d_delay_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  Bool
d_delay_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2558
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyState.es
d_es_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_es_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2554 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyState.removed
d_removed_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2556
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.StakeDistrs.stakeDistrPools
d_stakeDistrPools_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_2510
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_2508
      (coe v0)
-- Ledger.Conway.Specification.Epoch._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2710 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Epoch._.BlocksMade
d_BlocksMade_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  ()
d_BlocksMade_2712 = erased
-- Ledger.Conway.Specification.Epoch._.HasSnapshots
d_HasSnapshots_2722 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.RewardUpdate
d_RewardUpdate_2730 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.Snapshot
d_Snapshot_2736 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.Snapshots
d_Snapshots_2740 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.SnapshotsOf
d_SnapshotsOf_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2918 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894
d_SnapshotsOf_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_2926
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2918 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894
d_SnapshotsOf_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_2926
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.flowConservation
d_flowConservation_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2780 = erased
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.rs
d_rs_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2824 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δf
d_Δf_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  Integer
d_Δf_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2822 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2832
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δr
d_Δr_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  Integer
d_Δr_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2820 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δt
d_Δt_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  Integer
d_Δt_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2818 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2830
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshot.delegations
d_delegations_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2846
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshot.pools
d_pools_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2848
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshot.stake
d_stake_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2844
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.feeSS
d_feeSS_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  Integer
d_feeSS_2804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2910
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.go
d_go_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_go_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2908 (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.mark
d_mark_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_mark_2808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2904
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.set
d_set_2810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_set_2810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2906
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState
d_UTxOState_2860 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.UTxOState.deposits
d_deposits_2966 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState.donations
d_donations_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  Integer
d_donations_2968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2358
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState.fees
d_fees_2970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  Integer
d_fees_2970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2354 (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState.utxo
d_utxo_2972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2352 (coe v0)
-- Ledger.Conway.Specification.Epoch.EpochState
d_EpochState_3004 a0 a1 = ()
data T_EpochState_3004
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3026 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164
                                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722
                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546
-- Ledger.Conway.Specification.Epoch.EpochState.acnt
d_acnt_3016 ::
  T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164
d_acnt_3016 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3026 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.ss
d_ss_3018 ::
  T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894
d_ss_3018 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3026 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.ls
d_ls_3020 ::
  T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722
d_ls_3020 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3026 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.es
d_es_3022 ::
  T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_es_3022 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3026 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.fut
d_fut_3024 ::
  T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546
d_fut_3024 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3026 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.HasEpochState
d_HasEpochState_3032 a0 a1 a2 a3 = ()
newtype T_HasEpochState_3032
  = C_constructor_3042 (AgdaAny -> T_EpochState_3004)
-- Ledger.Conway.Specification.Epoch.HasEpochState.EpochStateOf
d_EpochStateOf_3040 ::
  T_HasEpochState_3032 -> AgdaAny -> T_EpochState_3004
d_EpochStateOf_3040 v0
  = case coe v0 of
      C_constructor_3042 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._.EpochStateOf
d_EpochStateOf_3046 ::
  T_HasEpochState_3032 -> AgdaAny -> T_EpochState_3004
d_EpochStateOf_3046 v0 = coe d_EpochStateOf_3040 (coe v0)
-- Ledger.Conway.Specification.Epoch.HasSnapshots-EpochState
d_HasSnapshots'45'EpochState_3048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2918
d_HasSnapshots'45'EpochState_3048 ~v0 ~v1
  = du_HasSnapshots'45'EpochState_3048
du_HasSnapshots'45'EpochState_3048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2918
du_HasSnapshots'45'EpochState_3048
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2928
      (coe (\ v0 -> d_ss_3018 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasLState-EpochState
d_HasLState'45'EpochState_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2742
d_HasLState'45'EpochState_3050 ~v0 ~v1
  = du_HasLState'45'EpochState_3050
du_HasLState'45'EpochState_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2742
du_HasLState'45'EpochState_3050
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2752
      (coe (\ v0 -> d_ls_3020 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasEnactState-EpochState
d_HasEnactState'45'EpochState_3052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1082
d_HasEnactState'45'EpochState_3052 ~v0 ~v1
  = du_HasEnactState'45'EpochState_3052
du_HasEnactState'45'EpochState_3052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1082
du_HasEnactState'45'EpochState_3052
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1092
      (coe (\ v0 -> d_es_3022 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasDeposits-EpochState
d_HasDeposits'45'EpochState_3054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1078
d_HasDeposits'45'EpochState_3054 ~v0 ~v1
  = du_HasDeposits'45'EpochState_3054
du_HasDeposits'45'EpochState_3054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1078
du_HasDeposits'45'EpochState_3054
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1088
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1086
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDeposits'45'LState_2766)
              (d_ls_3020 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasTreasury-EpochState
d_HasTreasury'45'EpochState_3056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'EpochState_3056 ~v0 ~v1
  = du_HasTreasury'45'EpochState_3056
du_HasTreasury'45'EpochState_3056 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'EpochState_3056
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
              (coe d_acnt_3016 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasReserves-EpochState
d_HasReserves'45'EpochState_3058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'EpochState_3058 ~v0 ~v1
  = du_HasReserves'45'EpochState_3058
du_HasReserves'45'EpochState_3058 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'EpochState_3058
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_70
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
              (coe d_acnt_3016 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasPParams-EpochState
d_HasPParams'45'EpochState_3060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420
d_HasPParams'45'EpochState_3060 ~v0 ~v1
  = du_HasPParams'45'EpochState_3060
du_HasPParams'45'EpochState_3060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420
du_HasPParams'45'EpochState_3060
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_430
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_428
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1098)
              (d_es_3022 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasRatifyState-EpochState
d_HasRatifyState'45'EpochState_3062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2566
d_HasRatifyState'45'EpochState_3062 ~v0 ~v1
  = du_HasRatifyState'45'EpochState_3062
du_HasRatifyState'45'EpochState_3062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2566
du_HasRatifyState'45'EpochState_3062
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2576
      (coe (\ v0 -> d_fut_3024 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasPState-EpochState
d_HasPState'45'EpochState_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408
d_HasPState'45'EpochState_3064 ~v0 ~v1
  = du_HasPState'45'EpochState_3064
du_HasPState'45'EpochState_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408
du_HasPState'45'EpochState_3064
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1418
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1416
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1484)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1456
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2764)
                 (d_ls_3020 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.PoolDelegatedStake
d_PoolDelegatedStake_3066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  ()
d_PoolDelegatedStake_3066 = erased
-- Ledger.Conway.Specification.Epoch.NewEpochState
d_NewEpochState_3068 a0 a1 = ()
data T_NewEpochState_3068
  = C_constructor_3094 AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_EpochState_3004
                       (Maybe
                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800)
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Epoch.NewEpochState.lastEpoch
d_lastEpoch_3082 :: T_NewEpochState_3068 -> AgdaAny
d_lastEpoch_3082 v0
  = case coe v0 of
      C_constructor_3094 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.bprev
d_bprev_3084 ::
  T_NewEpochState_3068 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3084 v0
  = case coe v0 of
      C_constructor_3094 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.bcur
d_bcur_3086 ::
  T_NewEpochState_3068 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3086 v0
  = case coe v0 of
      C_constructor_3094 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.epochState
d_epochState_3088 :: T_NewEpochState_3068 -> T_EpochState_3004
d_epochState_3088 v0
  = case coe v0 of
      C_constructor_3094 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.ru
d_ru_3090 ::
  T_NewEpochState_3068 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800
d_ru_3090 v0
  = case coe v0 of
      C_constructor_3094 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.pd
d_pd_3092 ::
  T_NewEpochState_3068 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3092 v0
  = case coe v0 of
      C_constructor_3094 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.HasNewEpochState
d_HasNewEpochState_3100 a0 a1 a2 a3 = ()
newtype T_HasNewEpochState_3100
  = C_constructor_3110 (AgdaAny -> T_NewEpochState_3068)
-- Ledger.Conway.Specification.Epoch.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_3108 ::
  T_HasNewEpochState_3100 -> AgdaAny -> T_NewEpochState_3068
d_NewEpochStateOf_3108 v0
  = case coe v0 of
      C_constructor_3110 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._.NewEpochStateOf
d_NewEpochStateOf_3114 ::
  T_HasNewEpochState_3100 -> AgdaAny -> T_NewEpochState_3068
d_NewEpochStateOf_3114 v0 = coe d_NewEpochStateOf_3108 (coe v0)
-- Ledger.Conway.Specification.Epoch.HasLastEpoch
d_HasLastEpoch_3120 a0 a1 a2 a3 = ()
newtype T_HasLastEpoch_3120
  = C_constructor_3130 (AgdaAny -> AgdaAny)
-- Ledger.Conway.Specification.Epoch.HasLastEpoch.LastEpochOf
d_LastEpochOf_3128 :: T_HasLastEpoch_3120 -> AgdaAny -> AgdaAny
d_LastEpochOf_3128 v0
  = case coe v0 of
      C_constructor_3130 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._.LastEpochOf
d_LastEpochOf_3134 :: T_HasLastEpoch_3120 -> AgdaAny -> AgdaAny
d_LastEpochOf_3134 v0 = coe d_LastEpochOf_3128 (coe v0)
-- Ledger.Conway.Specification.Epoch.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_3136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_HasLastEpoch_3120
d_HasLastEpoch'45'NewEpochState_3136 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_3136
du_HasLastEpoch'45'NewEpochState_3136 :: T_HasLastEpoch_3120
du_HasLastEpoch'45'NewEpochState_3136
  = coe C_constructor_3130 (coe (\ v0 -> d_lastEpoch_3082 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_3138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_HasEpochState_3032
d_HasEpochState'45'NewEpochState_3138 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_3138
du_HasEpochState'45'NewEpochState_3138 :: T_HasEpochState_3032
du_HasEpochState'45'NewEpochState_3138
  = coe C_constructor_3042 (coe (\ v0 -> d_epochState_3088 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasEnactState-NewEpochState
d_HasEnactState'45'NewEpochState_3140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1082
d_HasEnactState'45'NewEpochState_3140 ~v0 ~v1
  = du_HasEnactState'45'NewEpochState_3140
du_HasEnactState'45'NewEpochState_3140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1082
du_HasEnactState'45'NewEpochState_3140
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1092
      (coe (\ v0 -> d_es_3022 (coe d_epochState_3088 (coe v0))))
-- Ledger.Conway.Specification.Epoch.Hastreasury-NewEpochState
d_Hastreasury'45'NewEpochState_3142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_Hastreasury'45'NewEpochState_3142 ~v0 ~v1
  = du_Hastreasury'45'NewEpochState_3142
du_Hastreasury'45'NewEpochState_3142 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_Hastreasury'45'NewEpochState_3142
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
              (coe d_acnt_3016 (coe d_epochState_3088 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasLState-NewEpochState
d_HasLState'45'NewEpochState_3144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2742
d_HasLState'45'NewEpochState_3144 ~v0 ~v1
  = du_HasLState'45'NewEpochState_3144
du_HasLState'45'NewEpochState_3144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2742
du_HasLState'45'NewEpochState_3144
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2752
      (coe (\ v0 -> d_ls_3020 (coe d_epochState_3088 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasGovState-NewEpochState
d_HasGovState'45'NewEpochState_3146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2440
d_HasGovState'45'NewEpochState_3146 ~v0 ~v1
  = du_HasGovState'45'NewEpochState_3146
du_HasGovState'45'NewEpochState_3146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2440
du_HasGovState'45'NewEpochState_3146
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_constructor_2450
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2448
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGovState'45'LState_2762)
              (d_ls_3020 (coe d_epochState_3088 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasCertState-NewEpochState
d_HasCertState'45'NewEpochState_3148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1448
d_HasCertState'45'NewEpochState_3148 ~v0 ~v1
  = du_HasCertState'45'NewEpochState_3148
du_HasCertState'45'NewEpochState_3148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1448
du_HasCertState'45'NewEpochState_3148
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1458
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1456
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2764)
              (d_ls_3020 (coe d_epochState_3088 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasDReps-NewEpochState
d_HasDReps'45'NewEpochState_3150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132
d_HasDReps'45'NewEpochState_3150 ~v0 ~v1
  = du_HasDReps'45'NewEpochState_3150
du_HasDReps'45'NewEpochState_3150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132
du_HasDReps'45'NewEpochState_3150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1142
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1140
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1490)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1456
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2764)
                 (d_ls_3020 (coe d_epochState_3088 (coe v0))))))
-- Ledger.Conway.Specification.Epoch.HasRewards-NewEpochState
d_HasRewards'45'NewEpochState_3152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1180
d_HasRewards'45'NewEpochState_3152 ~v0 ~v1
  = du_HasRewards'45'NewEpochState_3152
du_HasRewards'45'NewEpochState_3152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1180
du_HasRewards'45'NewEpochState_3152
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1190
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1188
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1488)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1456
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2764)
                 (d_ls_3020 (coe d_epochState_3088 (coe v0))))))
-- Ledger.Conway.Specification.Epoch.HasPParams-NewEpochState
d_HasPParams'45'NewEpochState_3154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420
d_HasPParams'45'NewEpochState_3154 ~v0 ~v1
  = du_HasPParams'45'NewEpochState_3154
du_HasPParams'45'NewEpochState_3154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420
du_HasPParams'45'NewEpochState_3154
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_430
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_428
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1098)
              (d_es_3022 (coe d_epochState_3088 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasCast-EpochState
d_HasCast'45'EpochState_3156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_3156 ~v0 ~v1
  = du_HasCast'45'EpochState_3156
du_HasCast'45'EpochState_3156 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EpochState_3156
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
                                 (3004 :: Integer) (4112555248803407823 :: Integer)
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
                                 (34 :: Integer) (4112555248803407823 :: Integer) "_.Acnt"
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
                                    (3004 :: Integer) (4112555248803407823 :: Integer)
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
                                    (2740 :: Integer) (4112555248803407823 :: Integer)
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
                                       (3004 :: Integer) (4112555248803407823 :: Integer)
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
                                       (2512 :: Integer) (4112555248803407823 :: Integer)
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
                                          (3004 :: Integer) (4112555248803407823 :: Integer)
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
                                          (2254 :: Integer) (4112555248803407823 :: Integer)
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
                                             (3004 :: Integer) (4112555248803407823 :: Integer)
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
                                             (2616 :: Integer) (4112555248803407823 :: Integer)
                                             "Ledger.Conway.Specification.Epoch._.RatifyState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3026))
-- Ledger.Conway.Specification.Epoch.HasCast-NewEpochState
d_HasCast'45'NewEpochState_3158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_3158 ~v0 ~v1
  = du_HasCast'45'NewEpochState_3158
du_HasCast'45'NewEpochState_3158 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'NewEpochState_3158
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
                                 (3068 :: Integer) (4112555248803407823 :: Integer)
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
                                 (168 :: Integer) (4112555248803407823 :: Integer) "_.Epoch"
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
                                    (3068 :: Integer) (4112555248803407823 :: Integer)
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
                                    (2712 :: Integer) (4112555248803407823 :: Integer)
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
                                       (3068 :: Integer) (4112555248803407823 :: Integer)
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
                                       (2712 :: Integer) (4112555248803407823 :: Integer)
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
                                          (3068 :: Integer) (4112555248803407823 :: Integer)
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
                                          (3004 :: Integer) (4112555248803407823 :: Integer)
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
                                             (3068 :: Integer) (4112555248803407823 :: Integer)
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
                                                         (2730 :: Integer)
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
                                                (3068 :: Integer) (4112555248803407823 :: Integer)
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
                                                (3066 :: Integer) (4112555248803407823 :: Integer)
                                                "Ledger.Conway.Specification.Epoch.PoolDelegatedStake"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
         (coe C_constructor_3094))
-- Ledger.Conway.Specification.Epoch.toRwdAddr
d_toRwdAddr_3160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_toRwdAddr_3160 v0 ~v1 v2 = du_toRwdAddr_3160 v0 v2
du_toRwdAddr_3160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
du_toRwdAddr_3160 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_312
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1284
            (coe v0)))
      (coe v1)
-- Ledger.Conway.Specification.Epoch.getStakeCred
d_getStakeCred_3164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_3164 ~v0 ~v1 v2 = du_getStakeCred_3164 v2
du_getStakeCred_3164 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getStakeCred_3164 v0
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
d_createRUpd_3168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800
d_createRUpd_3168 v0 ~v1 v2 v3 v4 v5
  = du_createRUpd_3168 v0 v2 v3 v4 v5
du_createRUpd_3168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800
du_createRUpd_3168 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2834
      (coe du_Δt'8321'_3210 (coe v0) (coe v1) (coe v2) (coe v3))
      (MAlonzo.Code.Data.Integer.Base.d__'43'__284
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'45'__302 (coe (0 :: Integer))
            (coe du_Δr'8321'_3206 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            du_Δr'8322'_3218 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      (MAlonzo.Code.Data.Integer.Base.d__'45'__302
         (coe (0 :: Integer)) (coe du_feeSS_3188 (coe v3)))
      (coe du_rs_3216 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe du_Δt'45'nonneg_3292 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_Δf'45'nonpos_3294 (coe v3))
-- Ledger.Conway.Specification.Epoch._.prevPp
d_prevPp_3182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_prevPp_3182 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_prevPp_3182 v4
du_prevPp_3182 ::
  T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_prevPp_3182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_428
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1098)
      (d_es_3022 (coe v0))
-- Ledger.Conway.Specification.Epoch._.reserves
d_reserves_3184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer -> Integer
d_reserves_3184 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_reserves_3184 v4
du_reserves_3184 :: T_EpochState_3004 -> Integer
du_reserves_3184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
      (coe d_acnt_3016 (coe v0))
-- Ledger.Conway.Specification.Epoch._.pstakego
d_pstakego_3186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_pstakego_3186 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pstakego_3186 v4
du_pstakego_3186 ::
  T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
du_pstakego_3186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2908
      (coe d_ss_3018 (coe v0))
-- Ledger.Conway.Specification.Epoch._.feeSS
d_feeSS_3188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer -> Integer
d_feeSS_3188 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_feeSS_3188 v4
du_feeSS_3188 :: T_EpochState_3004 -> Integer
du_feeSS_3188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2910
      (coe d_ss_3018 (coe v0))
-- Ledger.Conway.Specification.Epoch._.stake
d_stake_3190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_3190 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_stake_3190 v4
du_stake_3190 ::
  T_EpochState_3004 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stake_3190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2844
      (coe du_pstakego_3186 (coe v0))
-- Ledger.Conway.Specification.Epoch._.delegs
d_delegs_3192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegs_3192 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_delegs_3192 v4
du_delegs_3192 ::
  T_EpochState_3004 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegs_3192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2846
      (coe du_pstakego_3186 (coe v0))
-- Ledger.Conway.Specification.Epoch._.poolParams
d_poolParams_3194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolParams_3194 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_poolParams_3194 v4
du_poolParams_3194 ::
  T_EpochState_3004 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolParams_3194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2848
      (coe du_pstakego_3186 (coe v0))
-- Ledger.Conway.Specification.Epoch._.blocksMade
d_blocksMade_3196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer -> Integer
d_blocksMade_3196 v0 ~v1 ~v2 v3 ~v4 ~v5 = du_blocksMade_3196 v0 v3
du_blocksMade_3196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_blocksMade_3196 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
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
d_ρ_3200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ρ_3200 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ρ_3200 v4
du_ρ_3200 ::
  T_EpochState_3004 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_ρ_3200 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_368
         (coe du_prevPp_3182 (coe v0)))
-- Ledger.Conway.Specification.Epoch._.η
d_η_3202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_η_3202 v0 ~v1 v2 v3 ~v4 ~v5 = du_η_3202 v0 v2 v3
du_η_3202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_η_3202 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'247''8320'__54
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
         (coe du_blocksMade_3196 (coe v0) (coe v2)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_300
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1284
               (coe v0))))
-- Ledger.Conway.Specification.Epoch._.τ
d_τ_3204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_τ_3204 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_τ_3204 v4
du_τ_3204 ::
  T_EpochState_3004 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_τ_3204 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_370
         (coe du_prevPp_3182 (coe v0)))
-- Ledger.Conway.Specification.Epoch._.Δr₁
d_Δr'8321'_3206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer -> Integer
d_Δr'8321'_3206 v0 ~v1 v2 v3 v4 ~v5 = du_Δr'8321'_3206 v0 v2 v3 v4
du_Δr'8321'_3206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer
du_Δr'8321'_3206 v0 v1 v2 v3
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
               (coe du_η_3202 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_3200 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_3184 (coe v3))))
-- Ledger.Conway.Specification.Epoch._.rewardPot
d_rewardPot_3208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer -> Integer
d_rewardPot_3208 v0 ~v1 v2 v3 v4 ~v5
  = du_rewardPot_3208 v0 v2 v3 v4
du_rewardPot_3208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer
du_rewardPot_3208 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'43'__284
      (coe du_feeSS_3188 (coe v3))
      (coe du_Δr'8321'_3206 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Epoch._.Δt₁
d_Δt'8321'_3210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer -> Integer
d_Δt'8321'_3210 v0 ~v1 v2 v3 v4 ~v5 = du_Δt'8321'_3210 v0 v2 v3 v4
du_Δt'8321'_3210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer
du_Δt'8321'_3210 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Base.d_floor_346
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_3208 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe du_τ_3204 (coe v3)))
-- Ledger.Conway.Specification.Epoch._.R
d_R_3212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer -> Integer
d_R_3212 v0 ~v1 v2 v3 v4 ~v5 = du_R_3212 v0 v2 v3 v4
du_R_3212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer
du_R_3212 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'45'__302
      (coe du_rewardPot_3208 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_Δt'8321'_3210 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Epoch._.circulation
d_circulation_3214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer -> Integer
d_circulation_3214 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_circulation_3214 v4 v5
du_circulation_3214 :: T_EpochState_3004 -> Integer -> Integer
du_circulation_3214 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1
      (coe du_reserves_3184 (coe v0))
-- Ledger.Conway.Specification.Epoch._.rs
d_rs_3216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_3216 v0 ~v1 v2 v3 v4 v5 = du_rs_3216 v0 v2 v3 v4 v5
du_rs_3216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rs_3216 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2730
      (coe v0) (coe du_prevPp_3182 (coe v3)) (coe v2)
      (coe
         MAlonzo.Code.Prelude.d_posPart_58
         (coe du_R_3212 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe du_poolParams_3194 (coe v3)) (coe du_stake_3190 (coe v3))
      (coe du_delegs_3192 (coe v3))
      (coe du_circulation_3214 (coe v3) (coe v4))
-- Ledger.Conway.Specification.Epoch._.Δr₂
d_Δr'8322'_3218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer -> Integer
d_Δr'8322'_3218 v0 ~v1 v2 v3 v4 v5
  = du_Δr'8322'_3218 v0 v2 v3 v4 v5
du_Δr'8322'_3218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> Integer -> Integer
du_Δr'8322'_3218 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'45'__302
      (coe du_R_3212 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v5 -> v5))
         (coe du_rs_3216 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
-- Ledger.Conway.Specification.Epoch._.lemmaFlow
d_lemmaFlow_3230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemmaFlow_3230 = erased
-- Ledger.Conway.Specification.Epoch._.flowConservation
d_flowConservation_3242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_3242 = erased
-- Ledger.Conway.Specification.Epoch._.÷₀-0≤⇒0≤
d_'247''8320''45'0'8804''8658'0'8804'_3250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'247''8320''45'0'8804''8658'0'8804'_3250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                           v6 v7 ~v8 ~v9
  = du_'247''8320''45'0'8804''8658'0'8804'_3250 v6 v7
du_'247''8320''45'0'8804''8658'0'8804'_3250 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'247''8320''45'0'8804''8658'0'8804'_3250 v0 v1
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
d_η'45'nonneg_3284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_η'45'nonneg_3284 v0 ~v1 v2 v3 ~v4 ~v5
  = du_η'45'nonneg_3284 v0 v2 v3
du_η'45'nonneg_3284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_η'45'nonneg_3284 v0 v1 v2
  = coe
      du_'247''8320''45'0'8804''8658'0'8804'_3250
      (let v3 = coe du_blocksMade_3196 (coe v0) (coe v2) in
       coe (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v3)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_300
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1284
               (coe v0))))
-- Ledger.Conway.Specification.Epoch._.min1η-nonneg
d_min1η'45'nonneg_3286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_min1η'45'nonneg_3286 v0 ~v1 v2 v3 ~v4 ~v5
  = du_min1η'45'nonneg_3286 v0 v2 v3
du_min1η'45'nonneg_3286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_min1η'45'nonneg_3286 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3394
      (coe
         MAlonzo.Code.Data.Rational.Properties.d_'8804''45'totalPreorder_3646)
      (coe
         MAlonzo.Code.Data.Rational.Properties.d_'8851''45'operator_5716)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
      (coe du_η_3202 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Data.Rational.Properties.du_nonNegative'8315''185'_3992
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe (1 :: Integer))))
      (coe du_η'45'nonneg_3284 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch._.Δr₁-nonneg
d_Δr'8321''45'nonneg_3288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δr'8321''45'nonneg_3288 v0 ~v1 v2 v3 v4 ~v5
  = du_Δr'8321''45'nonneg_3288 v0 v2 v3 v4
du_Δr'8321''45'nonneg_3288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δr'8321''45'nonneg_3288 v0 v1 v2 v3
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
               (coe du_η_3202 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_3200 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_3184 (coe v3))))
      (coe
         MAlonzo.Code.Qstdlib.Data.Rational.Properties.du_'42''45'0'8804''8658'0'8804'_68
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'8851'__332
               (coe
                  MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
               (coe du_η_3202 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_3200 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_3184 (coe v3)))
         (coe
            MAlonzo.Code.Qstdlib.Data.Rational.Properties.d_fromℕ'45'0'8804'_60
            (coe du_reserves_3184 (coe v3))))
-- Ledger.Conway.Specification.Epoch._.rewardPot-nonneg
d_rewardPot'45'nonneg_3290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_rewardPot'45'nonneg_3290 v0 ~v1 v2 v3 v4 ~v5
  = du_rewardPot'45'nonneg_3290 v0 v2 v3 v4
du_rewardPot'45'nonneg_3290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_rewardPot'45'nonneg_3290 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Properties.d_'43''45'mono'45''8804'_4632
      (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12)
      (coe du_feeSS_3188 (coe v3)) (coe (0 :: Integer))
      (coe du_Δr'8321'_3206 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_nonNegative'8315''185'_3338)
      (coe
         du_Δr'8321''45'nonneg_3288 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Epoch._.Δt-nonneg
d_Δt'45'nonneg_3292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonneg_3292 v0 ~v1 v2 v3 v4 ~v5
  = du_Δt'45'nonneg_3292 v0 v2 v3 v4
du_Δt'45'nonneg_3292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δt'45'nonneg_3292 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Qstdlib.Data.Rational.Properties.d_0'8804''8658'0'8804'floor_36
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_3208 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_370
               (coe du_prevPp_3182 (coe v3)))))
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.du_UnitInterval'45''42''45'0'8804'_174
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_3208 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_370
            (coe du_prevPp_3182 (coe v3))))
-- Ledger.Conway.Specification.Epoch._.Δf-nonpos
d_Δf'45'nonpos_3294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_3004 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpos_3294 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_Δf'45'nonpos_3294 v4
du_Δf'45'nonpos_3294 ::
  T_EpochState_3004 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δf'45'nonpos_3294 v0
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
         (coe (0 :: Integer)) (coe du_feeSS_3188 (coe v0)))
      (0 :: Integer)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
         (\ v1 v2 v3 v4 v5 -> v5)
         (MAlonzo.Code.Data.Integer.Base.d__'45'__302
            (coe (0 :: Integer)) (coe du_feeSS_3188 (coe v0)))
         (MAlonzo.Code.Data.Integer.Base.d_'45'__260
            (coe du_feeSS_3188 (coe v0)))
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
               (coe du_feeSS_3188 (coe v0)))
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
                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2910
                  (coe d_ss_3018 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                  (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))))
         erased)
-- Ledger.Conway.Specification.Epoch.applyRUpd
d_applyRUpd_3300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  T_EpochState_3004 -> T_EpochState_3004
d_applyRUpd_3300 v0 ~v1 v2 v3 = du_applyRUpd_3300 v0 v2 v3
du_applyRUpd_3300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  T_EpochState_3004 -> T_EpochState_3004
du_applyRUpd_3300 v0 v1 v2
  = case coe v2 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3026 v3 v4 v5 v6 v7
        -> case coe v3 of
             MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_2736 v10 v11 v12
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2360 v13 v14 v15 v16
                             -> case coe v12 of
                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1366 v17 v18 v19
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1326 v20 v21 v22
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
                                                                              (3004 :: Integer)
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
                                                                              (34 :: Integer)
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
                                                                                 (3004 :: Integer)
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
                                                                                 (2740 :: Integer)
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
                                                                                    (3004 ::
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
                                                                                    (2512 ::
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
                                                                                       (3004 ::
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
                                                                                       (2254 ::
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
                                                                                          (3004 ::
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
                                                                                          (2616 ::
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
                                                         C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3026)))
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
                                                                                    (164 :: Integer)
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
                                                                                       (164 ::
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174)))
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
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2818
                                                                     (coe v1)))
                                                               (coe
                                                                  du_unregRU''_3352 (coe v0)
                                                                  (coe v1) (coe v22))))
                                                         (coe
                                                            MAlonzo.Code.Prelude.d_posPart_58
                                                            (coe
                                                               MAlonzo.Code.Data.Integer.Base.d__'43'__284
                                                               (coe v9)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2820
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
                                                                                          (2722 ::
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
                                                                                          (2088 ::
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
                                                                                             (2722 ::
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
                                                                                             (1916 ::
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
                                                                                                (2722 ::
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
                                                                                                (2312 ::
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
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_2736)))
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
                                                                                                (2342 ::
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
                                                                                                (552 ::
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
                                                                                                   (2342 ::
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
                                                                                                      (2342 ::
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
                                                                                                      (1958 ::
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
                                                                                                         (2342 ::
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
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2360)))
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
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2822
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
                                                                                                   (1352 ::
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
                                                                                                   (1312 ::
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
                                                                                                      (1352 ::
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
                                                                                                      (1328 ::
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
                                                                                                         (1352 ::
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
                                                                                                         (1340 ::
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
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1366)))
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
                                                                                                         (1312 ::
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
                                                                                                         (894 ::
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
                                                                                                            (1312 ::
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
                                                                                                            (1110 ::
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
                                                                                                               (1312 ::
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
                                                                                                               (1106 ::
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
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1326)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v20)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v21)
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
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
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                (coe
                                                                                                   v0))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                             (coe
                                                                                                v0))))
                                                                                    v22
                                                                                    (coe
                                                                                       du_regRU_3348
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
d_regRU_3348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_3348 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             v13 ~v14 ~v15 ~v16 ~v17
  = du_regRU_3348 v0 v2 v13
du_regRU_3348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_3348 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2824
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2))
-- Ledger.Conway.Specification.Epoch._.unregRU
d_unregRU_3350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_3350 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               v13 ~v14 ~v15 ~v16 ~v17
  = du_unregRU_3350 v0 v2 v13
du_unregRU_3350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_3350 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2824
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2))
-- Ledger.Conway.Specification.Epoch._.unregRU'
d_unregRU''_3352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  Integer
d_unregRU''_3352 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 v13 ~v14 ~v15 ~v16 ~v17
  = du_unregRU''_3352 v0 v2 v13
du_unregRU''_3352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_3352 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v3 -> v3)) (coe du_unregRU_3350 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch.calculatePoolDelegatedStake
d_calculatePoolDelegatedStake_3356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStake_3356 v0 ~v1 v2
  = du_calculatePoolDelegatedStake_3356 v0 v2
du_calculatePoolDelegatedStake_3356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_calculatePoolDelegatedStake_3356 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0)))))
      (coe du_sd_3366 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2848
            (coe v1)))
-- Ledger.Conway.Specification.Epoch._.stakeCredentialsPerPool
d_stakeCredentialsPerPool_3364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeCredentialsPerPool_3364 ~v0 ~v1 v2
  = du_stakeCredentialsPerPool_3364 v2
du_stakeCredentialsPerPool_3364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeCredentialsPerPool_3364 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.du__'8315''185''691'_120
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2846
            (coe v0)))
-- Ledger.Conway.Specification.Epoch._.sd
d_sd_3366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sd_3366 v0 ~v1 v2 = du_sd_3366 v0 v2
du_sd_3366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sd_3366 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_534
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
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1184
         (coe
            MAlonzo.Code.Ledger.Prelude.du__'8728''691'__136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                     (coe v0))))
            (coe du_stakeCredentialsPerPool_3364 (coe v1))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2844
                  (coe v1)))))
-- Ledger.Conway.Specification.Epoch.calculateVDelegDelegatedStake
d_calculateVDelegDelegatedStake_3368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculateVDelegDelegatedStake_3368 v0 ~v1 v2 v3 v4 v5 v6
  = du_calculateVDelegDelegatedStake_3368 v0 v2 v3 v4 v5 v6
du_calculateVDelegDelegatedStake_3368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_calculateVDelegDelegatedStake_3368 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_534
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1038
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
            (coe v0)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1184
         (coe
            MAlonzo.Code.Ledger.Prelude.du__'8728''691'__136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Prelude.du__'8315''185''691'_120
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                  (coe
                     du_activeVoteDelegs_3414 (coe v0) (coe v1) (coe v4) (coe v5))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
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
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                           (coe v0))))
                  (coe
                     du_stakePerCredential_3416 (coe v0) (coe v1) (coe v2) (coe v4)
                     (coe v5))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                              (coe v0))))
                     (coe du_stakeFromRewards_3440 (coe v5))
                     (coe du_stakeFromGADeposits_3422 (coe v0) (coe v2) (coe v3)))))))
-- Ledger.Conway.Specification.Epoch._.activeDReps
d_activeDReps_3408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_3408 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_activeDReps_3408 v0 v2 v5
du_activeDReps_3408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_activeDReps_3408 v0 v1 v2
  = coe
      MAlonzo.Code.Class.IsSet.du_dom_562
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
              (coe
                 MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_68
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_74
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                          (coe v0)))
                    (\ v4 v5 -> v4) v1
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v4 v5 -> v5)
                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_74
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                          (coe v0)))
                    v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                       (coe v0)))
                 (coe v1) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1346
            (coe v2)))
-- Ledger.Conway.Specification.Epoch._.activeVoteDelegs
d_activeVoteDelegs_3414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeVoteDelegs_3414 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_activeVoteDelegs_3414 v0 v2 v5 v6
du_activeVoteDelegs_3414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeVoteDelegs_3414 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1764
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1038
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
         (coe v3))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__682
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_400
            (MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_804)
            (coe du_activeDReps_3408 (coe v0) (coe v1) (coe v2)))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__682
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
               (MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               erased
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_808))
            (coe
               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
               (MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               erased
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_806))))
-- Ledger.Conway.Specification.Epoch._.stakePerCredential
d_stakePerCredential_3416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakePerCredential_3416 v0 ~v1 v2 v3 ~v4 v5 v6
  = du_stakePerCredential_3416 v0 v2 v3 v5 v6
du_stakePerCredential_3416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakePerCredential_3416 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1082
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v5 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2418
              (coe v0)
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8739''94'''__1216
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2352 (coe v2))
                 (coe
                    (\ v6 ->
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
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                           (coe v0))))
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                        (coe v0))))))
                         (coe du_getStakeCred_3164 (coe v6))
                         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v5)))))))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
         (coe du_activeVoteDelegs_3414 (coe v0) (coe v1) (coe v3) (coe v4)))
-- Ledger.Conway.Specification.Epoch._.stakeFromGADeposits
d_stakeFromGADeposits_3422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeFromGADeposits_3422 v0 ~v1 ~v2 v3 v4 ~v5 ~v6
  = du_stakeFromGADeposits_3422 v0 v3 v4
du_stakeFromGADeposits_3422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeFromGADeposits_3422 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1268
               (coe v0))
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_292
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1284
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_400
         (MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_govSt''_3428 (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1264
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1714
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1480
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                    (coe v1))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1480
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v4
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                (coe v1))))))))
         (coe du_govSt''_3428 (coe v2)))
-- Ledger.Conway.Specification.Epoch._._.govSt'
d_govSt''_3428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3428 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_govSt''_3428 v4
du_govSt''_3428 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_3428 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_400
      (MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe
            (\ v1 ->
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1014
                 (coe v1))))
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_430
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v0))
-- Ledger.Conway.Specification.Epoch._.stakeFromRewards
d_stakeFromRewards_3440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeFromRewards_3440 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_stakeFromRewards_3440 v6
du_stakeFromRewards_3440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeFromRewards_3440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
      (coe v0)
-- Ledger.Conway.Specification.Epoch.mkStakeDistrs
d_mkStakeDistrs_3442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2502
d_mkStakeDistrs_3442 v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_mkStakeDistrs_3442 v0 v2 v3 v4 v5 v6 v7
du_mkStakeDistrs_3442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2502
du_mkStakeDistrs_3442 v0 v1 v2 v3 v4 v5 v6
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
                                    (2502 :: Integer) (11046137501266703203 :: Integer)
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
                                             (560 :: Integer) (11046137501266703203 :: Integer)
                                             "_.VDeleg"
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
                                       (2502 :: Integer) (11046137501266703203 :: Integer)
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (344 :: Integer) (11046137501266703203 :: Integer)
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
               MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2512)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_calculateVDelegDelegatedStake_3368 (coe v0) (coe v2) (coe v3)
            (coe v4) (coe v5) (coe v6))
         (coe du_poolDelegatedStake_3460 (coe v0) (coe v1) (coe v6)))
-- Ledger.Conway.Specification.Epoch._.poolDelegatedStake
d_poolDelegatedStake_3460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolDelegatedStake_3460 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_poolDelegatedStake_3460 v0 v2 v7
du_poolDelegatedStake_3460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolDelegatedStake_3460 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1130
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v3 v4 ->
            coe
              MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe addInt (coe v4))
              (coe v4)
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1714
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1480
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1188
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1472)
                    v2)
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                    (coe v3))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                   (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                (coe v0)))))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                       (coe v3))
                    (let v5
                           = MAlonzo.Code.Axiom.Set.d_th_1480
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v5
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1188
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1472)
                                v2))))))))
      (coe du_calculatePoolDelegatedStake_3356 (coe v0) (coe v1))
-- Ledger.Conway.Specification.Epoch.getOrphans
d_getOrphans_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_3508 v0 ~v1 v2 v3 = du_getOrphans_3508 v0 v2 v3
du_getOrphans_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getOrphans_3508 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
         (coe du_step_3518 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v2))
         (coe MAlonzo.Code.Data.List.Base.du_length_268 v2))
-- Ledger.Conway.Specification.Epoch._.step
d_step_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_step_3518 v0 ~v1 v2 ~v3 v4 = du_step_3518 v0 v2 v4
du_step_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_step_3518 v0 v1 v2
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.d_hasParent'63'_2792
                                 (coe v0) (coe v1) (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_886
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1018
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1020
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
                              MAlonzo.Code.Ledger.Conway.Specification.Gov.d_hasParent'63'_2792
                              (coe v0) (coe v1) (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_886
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1018
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1020
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
                   (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0
d_EPOCH'45'Updates0_3540 a0 a1 = ()
data T_EPOCH'45'Updates0_3540
  = C_EPOCHUpdates0_3566 MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
                         [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                         MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
                         Integer
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.es
d_es_3554 ::
  T_EPOCH'45'Updates0_3540 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_es_3554 v0
  = case coe v0 of
      C_EPOCHUpdates0_3566 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.govSt'
d_govSt''_3556 ::
  T_EPOCH'45'Updates0_3540 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3556 v0
  = case coe v0 of
      C_EPOCHUpdates0_3566 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.payout
d_payout_3558 ::
  T_EPOCH'45'Updates0_3540 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_payout_3558 v0
  = case coe v0 of
      C_EPOCHUpdates0_3566 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.gState'
d_gState''_3560 ::
  T_EPOCH'45'Updates0_3540 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340
d_gState''_3560 v0
  = case coe v0 of
      C_EPOCHUpdates0_3566 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.utxoSt'
d_utxoSt''_3562 ::
  T_EPOCH'45'Updates0_3540 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_utxoSt''_3562 v0
  = case coe v0 of
      C_EPOCHUpdates0_3566 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.totWithdrawals
d_totWithdrawals_3564 :: T_EPOCH'45'Updates0_3540 -> Integer
d_totWithdrawals_3564 v0
  = case coe v0 of
      C_EPOCHUpdates0_3566 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-updates0
d_EPOCH'45'updates0_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  T_EPOCH'45'Updates0_3540
d_EPOCH'45'updates0_3568 v0 ~v1 v2 v3
  = du_EPOCH'45'updates0_3568 v0 v2 v3
du_EPOCH'45'updates0_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  T_EPOCH'45'Updates0_3540
du_EPOCH'45'updates0_3568 v0 v1 v2
  = coe
      C_EPOCHUpdates0_3566 (coe du_es_3598 (coe v1))
      (coe du_govSt''_3608 (coe v0) (coe v1) (coe v2))
      (coe du_payout_3630 (coe v0) (coe v1) (coe v2))
      (coe du_gState''_3632 (coe v0) (coe v1) (coe v2))
      (coe du_utxoSt''_3636 (coe v0) (coe v1) (coe v2))
      (coe du_totWithdrawals_3638 (coe v0) (coe v1))
-- Ledger.Conway.Specification.Epoch._.es
d_es_3598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_es_3598 ~v0 ~v1 v2 ~v3 = du_es_3598 v2
du_es_3598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
du_es_3598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1076
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1066
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2554
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1068
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2554
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1070
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2554
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1072
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2554
            (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Conway.Specification.Epoch._.tmpGovSt
d_tmpGovSt_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_tmpGovSt_3600 v0 ~v1 v2 v3 = du_tmpGovSt_3600 v0 v2 v3
du_tmpGovSt_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_tmpGovSt_3600 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_filter_112
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
           (coe
              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
              (coe
                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1268
                    (coe v0))
                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
              (coe
                 MAlonzo.Code.Class.IsSet.d_toSet_502
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_566)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_map_400
                    (MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2556
                       (coe v1)))))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
      (MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2732
         (coe v2))
-- Ledger.Conway.Specification.Epoch._.orphans
d_orphans_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_orphans_3604 v0 ~v1 v2 v3 = du_orphans_3604 v0 v2 v3
du_orphans_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_orphans_3604 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_fromList_430
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         du_getOrphans_3508 (coe v0) (coe du_es_3598 (coe v1))
         (coe du_tmpGovSt_3600 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Specification.Epoch._.removed'
d_removed''_3606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed''_3606 v0 ~v1 v2 v3 = du_removed''_3606 v0 v2 v3
du_removed''_3606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed''_3606 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2556
         (coe v1))
      (coe du_orphans_3604 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch._.govSt'
d_govSt''_3608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3608 v0 ~v1 v2 v3 = du_govSt''_3608 v0 v2 v3
du_govSt''_3608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_3608 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_filter_112
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
           (coe
              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
              (coe
                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1268
                    (coe v0))
                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
              (coe
                 MAlonzo.Code.Class.IsSet.d_toSet_502
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_566)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_map_400
                    (MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (coe du_removed''_3606 (coe v0) (coe v1) (coe v2)))))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
      (MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2732
         (coe v2))
-- Ledger.Conway.Specification.Epoch._.removedGovActions
d_removedGovActions_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_3612 v0 ~v1 v2 v3
  = du_removedGovActions_3612 v0 v2 v3
du_removedGovActions_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removedGovActions_3612 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_concatMap'738'_510
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Axiom.Set.du_map_400
              (MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (\ v4 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1014
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                   (coe v4))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2730
                          (coe v2)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                       (MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       erased
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))))))
      (coe du_removed''_3606 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch._.govActionReturns
d_govActionReturns_3622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionReturns_3622 v0 ~v1 v2 v3
  = du_govActionReturns_3622 v0 v2 v3
du_govActionReturns_3622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionReturns_3622 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_534
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_292
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1284
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1184
         (coe
            MAlonzo.Code.Axiom.Set.du_map_400
            (MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe du_removedGovActions_3612 (coe v0) (coe v1) (coe v2))))
-- Ledger.Conway.Specification.Epoch._.payout
d_payout_3630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_payout_3630 v0 ~v1 v2 v3 = du_payout_3630 v0 v2 v3
du_payout_3630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_payout_3630 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_292
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1284
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe du_govActionReturns_3622 (coe v0) (coe v1) (coe v2))
      (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1074
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2554
            (coe v1)))
-- Ledger.Conway.Specification.Epoch._.gState'
d_gState''_3632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340
d_gState''_3632 v0 ~v1 v2 v3 = du_gState''_3632 v0 v2 v3
du_gState''_3632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340
du_gState''_3632 v0 v1 v2
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
                                    (1340 :: Integer) (3005244792873517680 :: Integer)
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
                                    (1098 :: Integer) (3005244792873517680 :: Integer)
                                    "Ledger.Conway.Specification.Certs.DReps"
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
                                       (1340 :: Integer) (3005244792873517680 :: Integer)
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
                                                                        (292 :: Integer)
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
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'10215''7515'_1350)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Class.ToBool.du_if_then_else__38
            (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88)
            (coe
               MAlonzo.Code.Data.List.Base.du_null_262
               (coe du_govSt''_3608 (coe v0) (coe v1) (coe v2)))
            (coe
               MAlonzo.Code.Level.C_lift_20
               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Class.HasAdd.Core.d__'43'__16
                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_252
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                          (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_258
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                (coe v0)))
                          (1 :: Integer) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1140
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1478)
                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1364
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2734
                             (coe v2))))))
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1140
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1478)
                    (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1364
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2734
                          (coe v2))))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                        (coe v0)))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1348
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1364
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2734
                     (coe v2))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1106
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1066
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2554
                     (coe v1))))))
-- Ledger.Conway.Specification.Epoch._.utxoSt'
d_utxoSt''_3636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_utxoSt''_3636 v0 ~v1 v2 v3 = du_utxoSt''_3636 v0 v2 v3
du_utxoSt''_3636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
du_utxoSt''_3636 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2360
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2352
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2730
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2354
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2730
            (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2730
               (coe v2)))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_400
            (MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
            (coe du_removedGovActions_3612 (coe v0) (coe v1) (coe v2))))
      (coe (0 :: Integer))
-- Ledger.Conway.Specification.Epoch._.totWithdrawals
d_totWithdrawals_3638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  Integer
d_totWithdrawals_3638 v0 ~v1 v2 ~v3 = du_totWithdrawals_3638 v0 v2
du_totWithdrawals_3638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  Integer
du_totWithdrawals_3638 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_292
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1284
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
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
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1074
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2554
            (coe v1)))
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates
d_EPOCH'45'Updates_3642 a0 a1 = ()
data T_EPOCH'45'Updates_3642
  = C_EPOCHUpdates_3668 MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.es
d_es_3656 ::
  T_EPOCH'45'Updates_3642 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_es_3656 v0
  = case coe v0 of
      C_EPOCHUpdates_3668 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.govSt'
d_govSt''_3658 ::
  T_EPOCH'45'Updates_3642 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3658 v0
  = case coe v0 of
      C_EPOCHUpdates_3668 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.dState''
d_dState''''_3660 ::
  T_EPOCH'45'Updates_3642 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312
d_dState''''_3660 v0
  = case coe v0 of
      C_EPOCHUpdates_3668 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.gState'
d_gState''_3662 ::
  T_EPOCH'45'Updates_3642 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340
d_gState''_3662 v0
  = case coe v0 of
      C_EPOCHUpdates_3668 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.utxoSt'
d_utxoSt''_3664 ::
  T_EPOCH'45'Updates_3642 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_utxoSt''_3664 v0
  = case coe v0 of
      C_EPOCHUpdates_3668 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.acnt''
d_acnt''''_3666 ::
  T_EPOCH'45'Updates_3642 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164
d_acnt''''_3666 v0
  = case coe v0 of
      C_EPOCHUpdates_3668 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-updates
d_EPOCH'45'updates_3670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  T_EPOCH'45'Updates_3642
d_EPOCH'45'updates_3670 v0 ~v1 v2 v3 v4 v5
  = du_EPOCH'45'updates_3670 v0 v2 v3 v4 v5
du_EPOCH'45'updates_3670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  T_EPOCH'45'Updates_3642
du_EPOCH'45'updates_3670 v0 v1 v2 v3 v4
  = coe
      C_EPOCHUpdates_3668
      (coe d_es_3554 (coe du_u0_3684 (coe v0) (coe v1) (coe v2)))
      (coe d_govSt''_3556 (coe du_u0_3684 (coe v0) (coe v1) (coe v2)))
      (coe du_dState''''_3688 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe d_gState''_3560 (coe du_u0_3684 (coe v0) (coe v1) (coe v2)))
      (coe d_utxoSt''_3562 (coe du_u0_3684 (coe v0) (coe v1) (coe v2)))
      (coe du_acnt''''_3692 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Conway.Specification.Epoch._.u0
d_u0_3684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  T_EPOCH'45'Updates0_3540
d_u0_3684 v0 ~v1 v2 v3 ~v4 ~v5 = du_u0_3684 v0 v2 v3
du_u0_3684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  T_EPOCH'45'Updates0_3540
du_u0_3684 v0 v1 v2
  = coe du_EPOCH'45'updates0_3568 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Epoch._.refunds
d_refunds_3686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refunds_3686 v0 ~v1 v2 v3 v4 ~v5 = du_refunds_3686 v0 v2 v3 v4
du_refunds_3686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refunds_3686 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1736
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe d_payout_3558 (coe du_u0_3684 (coe v0) (coe v1) (coe v2)))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
              (coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_292
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1284
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                          (coe v0)))))
              (coe v4)
              (let v5
                     = MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
               coe
                 (coe
                    MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v5
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                       (coe
                          d_payout_3558 (coe du_u0_3684 (coe v0) (coe v1) (coe v2))))))))
      (coe du_toRwdAddr_3160 (coe v0))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
            (coe v3)))
-- Ledger.Conway.Specification.Epoch._.dState''
d_dState''''_3688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312
d_dState''''_3688 v0 ~v1 v2 v3 v4 ~v5
  = du_dState''''_3688 v0 v2 v3 v4
du_dState''''_3688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312
du_dState''''_3688 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1326
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
         (coe v3))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
         (coe v3))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
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
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0))))
         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
            (coe v3))
         (coe du_refunds_3686 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Epoch._.unclaimed
d_unclaimed_3690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  Integer
d_unclaimed_3690 v0 ~v1 v2 v3 v4 ~v5
  = du_unclaimed_3690 v0 v2 v3 v4
du_unclaimed_3690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  Integer
du_unclaimed_3690 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_292
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1284
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4))
         (coe d_payout_3558 (coe du_u0_3684 (coe v0) (coe v1) (coe v2))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4))
         (coe du_refunds_3686 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Epoch._.acnt''
d_acnt''''_3692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164
d_acnt''''_3692 v0 ~v1 v2 v3 v4 v5
  = du_acnt''''_3692 v0 v2 v3 v4 v5
du_acnt''''_3692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164
du_acnt''''_3692 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
      (coe
         addInt
         (coe
            addInt (coe du_unclaimed_3690 (coe v0) (coe v1) (coe v2) (coe v3))
            (coe
               MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2390)
               (MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2730
                  (coe v2))))
         (coe
            MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
            (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
               (coe v4))
            (d_totWithdrawals_3564
               (coe du_u0_3684 (coe v0) (coe v1) (coe v2)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
         (coe v4))
-- Ledger.Conway.Specification.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__3694 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__3694
  = C_EPOCH_3722 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3724 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3724
  = C_NEWEPOCH'45'New_3736 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_3742 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_3752 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
