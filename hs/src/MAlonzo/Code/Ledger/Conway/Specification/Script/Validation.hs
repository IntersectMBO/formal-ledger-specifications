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

module MAlonzo.Code.Ledger.Conway.Specification.Script.Validation where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Bool.ListAction
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Certs
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Core.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _.CostModel
d_CostModel_58 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_58 = erased
-- _.Credential
d_Credential_60 a0 = ()
-- _.T
d_T_66 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_66 = erased
-- _.THash
d_THash_68 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_68 = erased
-- _.Datum
d_Datum_72 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Datum_72 = erased
-- _.ExUnits
d_ExUnits_166 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_166 = erased
-- _.GovProposal
d_GovProposal_190 a0 = ()
-- _.GovVoter
d_GovVoter_202 a0 = ()
-- _.THash
d_THash_328 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_328 = erased
-- _.Language
d_Language_336 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_336 = erased
-- _.PlutusScript
d_PlutusScript_368 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_368 = erased
-- _.PParams
d_PParams_372 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_416 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_RdmrPtr_416 = erased
-- _.Redeemer
d_Redeemer_418 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Redeemer_418 = erased
-- _.RwdAddr
d_RwdAddr_420 a0 = ()
-- _.ScriptHash
d_ScriptHash_438 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_438 = erased
-- _.Slot
d_Slot_488 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_488 = erased
-- _.TxIn
d_TxIn_518 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_518 = erased
-- _.TxOut
d_TxOut_520 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_520 = erased
-- _.UTxO
d_UTxO_528 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_528 = erased
-- _.Value
d_Value_548 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_548 = erased
-- _.Withdrawals
d_Withdrawals_558 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_558 = erased
-- _.GovActions.GovProposal
d_GovProposal_884 a0 = ()
-- _.GovActions.GovVoter
d_GovVoter_896 a0 = ()
-- _.GovActions.GovProposal.action
d_action_1018 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_action_1018 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_992
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1020 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886
d_anchor_1020 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_1002
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1022 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  Integer
d_deposit_1022 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_deposit_998
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1024 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  Maybe AgdaAny
d_policy_1024 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_policy_996
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1026 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  AgdaAny
d_prevAction_1026 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_994
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1028 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1028 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_1000
      (coe v0)
-- _.GovActions.GovVoter.gvCredential
d_gvCredential_1050 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  AgdaAny
d_gvCredential_1050 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvCredential_882
      (coe v0)
-- _.GovActions.GovVoter.gvRole
d_gvRole_1052 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784
d_gvRole_1052 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvRole_880
      (coe v0)
-- _.PParams.Emax
d_Emax_1228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_Emax_1228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_392
      (coe v0)
-- _.PParams.a
d_a_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_a_1230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_364 (coe v0)
-- _.PParams.a0
d_a0_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_396 (coe v0)
-- _.PParams.b
d_b_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_b_1234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_366 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMaxTermLength_1236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_408
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMinSize_1238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_coinsPerUTxOByte_1240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_376
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_collateralPercentage_1242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_398
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_costmdls_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_400
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_drepActivity_1246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_416
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_drepDeposit_1248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_414
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_1250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionDeposit_1252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_412
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionLifetime_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_410
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_keyDeposit_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_368
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxBlockExUnits_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_356
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxBlockSize_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_348
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxCollateralInputs_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_360
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxHeaderSize_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_352
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerBlock_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_384
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerTx_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_382
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxTxExUnits_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_354
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxTxSize_1272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_350
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxValSize_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_358
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_380
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_minUTxOValue_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_390
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_372
      (coe v0)
-- _.PParams.nopt
d_nopt_1282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_nopt_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_394
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_poolDeposit_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_370
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
      (coe v0)
-- _.PParams.prices
d_prices_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_prices_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_378
      (coe v0)
-- _.PParams.pv
d_pv_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_362 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1292 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_388
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_386
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1296 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_374
      (coe v0)
-- _.RwdAddr.net
d_net_1496 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  AgdaAny
d_net_1496 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- _.RwdAddr.stake
d_stake_1498 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1498 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.DCert
d_DCert_1790 a0 a1 = ()
-- Ledger.Conway.Specification.Script.Validation._.Tx
d_Tx_2216 a0 a1 = ()
-- Ledger.Conway.Specification.Script.Validation._.TxBody
d_TxBody_2220 a0 a1 = ()
-- Ledger.Conway.Specification.Script.Validation._.Tx.body
d_body_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174
d_body_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.Tx.isValid
d_isValid_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Bool
d_isValid_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_2350
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.Tx.txAD
d_txAD_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Maybe AgdaAny
d_txAD_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_2352
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.Tx.txsize
d_txsize_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Integer
d_txsize_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_2348
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.Tx.wits
d_wits_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262
d_wits_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.collateralInputs
d_collateralInputs_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_2216
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.currentTreasury
d_currentTreasury_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  Maybe Integer
d_currentTreasury_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_2240
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.mint
d_mint_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  AgdaAny
d_mint_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_2242
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.refInputs
d_refInputs_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2214
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.reqSignerHashes
d_reqSignerHashes_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [AgdaAny]
d_reqSignerHashes_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_2244
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  Maybe AgdaAny
d_scriptIntegrityHash_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_2246
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.txADhash
d_txADhash_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  Maybe AgdaAny
d_txADhash_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_2230
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.txCerts
d_txCerts_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290]
d_txCerts_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2222
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.txDonation
d_txDonation_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  Integer
d_txDonation_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_2232
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.txFee
d_txFee_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  Integer
d_txFee_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_2224
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.txGovProposals
d_txGovProposals_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978]
d_txGovProposals_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_2236
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.txGovVotes
d_txGovVotes_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
d_txGovVotes_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_2234
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.txId
d_txId_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  AgdaAny
d_txId_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2220
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.txIns
d_txIns_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2212
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.txNetworkId
d_txNetworkId_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  Maybe AgdaAny
d_txNetworkId_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_2238
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.txOuts
d_txOuts_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2218
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.txVldt
d_txVldt_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_2228
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxBody.txWithdrawals
d_txWithdrawals_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_2226
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation.ScriptPurpose
d_ScriptPurpose_2326 a0 a1 = ()
data T_ScriptPurpose_2326
  = C_Cert_2328 MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290 |
    C_Rwrd_2330 MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 |
    C_Mint_2332 AgdaAny |
    C_Spend_2334 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_2336 MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 |
    C_Propose_2338 MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978
-- Ledger.Conway.Specification.Script.Validation.rdptr
d_rdptr_2340 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  T_ScriptPurpose_2326 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_2340 v0 v1 v2 v3
  = case coe v3 of
      C_Cert_2328 v4
        -> coe
             MAlonzo.Code.Class.Functor.Core.du_fmap_22
             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
             () erased
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Cert_14)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Abstract.d_indexOfDCert_2186
                (MAlonzo.Code.Ledger.Core.Specification.Abstract.d_indexOfImp_2216
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2222
                   (coe v2)))
      C_Rwrd_2330 v4
        -> coe
             MAlonzo.Code.Class.Functor.Core.du_fmap_22
             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
             () erased
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Rewrd_16)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Abstract.d_indexOfRwdAddr_2188
                (MAlonzo.Code.Ledger.Core.Specification.Abstract.d_indexOfImp_2216
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_2226
                   (coe v2)))
      C_Mint_2332 v4
        -> coe
             MAlonzo.Code.Class.Functor.Core.du_fmap_22
             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
             () erased
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Mint_12)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Abstract.d_indexOfPolicyId_2192
                (MAlonzo.Code.Ledger.Core.Specification.Abstract.d_indexOfImp_2216
                   (coe v1))
                v4
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_policies_218
                   (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
                      (coe v0))
                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_2242
                      (coe v2))))
      C_Spend_2334 v4
        -> coe
             MAlonzo.Code.Class.Functor.Core.du_fmap_22
             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
             () erased
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Spend_10)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Abstract.d_indexOfTxIn_2190
                (MAlonzo.Code.Ledger.Core.Specification.Abstract.d_indexOfImp_2216
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2212
                   (coe v2)))
      C_Vote_2336 v4
        -> coe
             MAlonzo.Code.Class.Functor.Core.du_fmap_22
             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
             () erased
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Vote_18)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Abstract.d_indexOfVote_2194
                (MAlonzo.Code.Ledger.Core.Specification.Abstract.d_indexOfImp_2216
                   (coe v1))
                v4
                (coe
                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                   () erased
                   (\ v5 ->
                      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_voter_910
                        (coe v5))
                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_2234
                      (coe v2))))
      C_Propose_2338 v4
        -> coe
             MAlonzo.Code.Class.Functor.Core.du_fmap_22
             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
             () erased
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.C_Propose_20)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Abstract.d_indexOfProposal_2196
                (MAlonzo.Code.Ledger.Core.Specification.Abstract.d_indexOfImp_2216
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_2236
                   (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.indexedRdmrs
d_indexedRdmrs_2412 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  T_ScriptPurpose_2326 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_2412 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txrdmrs_3278
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
                    (coe v2)))
              (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Tag_22
                       (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1270
                          (coe v0))))
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
                             MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txrdmrs_3278
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
                                (coe v2)))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_2340 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
            (coe v2))
         (coe v3))
-- Ledger.Conway.Specification.Script.Validation.getDatum
d_getDatum_2448 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_2326 -> Maybe AgdaAny
d_getDatum_2448 v0 ~v1 v2 v3 v4 = du_getDatum_2448 v0 v2 v3 v4
du_getDatum_2448 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_2326 -> Maybe AgdaAny
du_getDatum_2448 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v3 of
         C_Spend_2334 v5
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1516
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe v2) (coe v5)
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
                               (coe v0))
                            (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1270
                               (coe v0))))
                      (coe v5)
                      (let v6
                             = MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v6
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))))))
                (coe
                   (\ v6 ->
                      case coe v6 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                          -> case coe v8 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                 -> case coe v10 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                        -> case coe v11 of
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13
                                               -> case coe v13 of
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                      -> coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe v14)
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                      -> coe
                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe du_m_2460 (coe v0) (coe v1))
                                                           (coe v14)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                                                                             (coe v0))))))
                                                              (coe v14)
                                                              (let v15
                                                                     = MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                                    v15
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                       (coe
                                                                          du_m_2460 (coe v0)
                                                                          (coe v1))))))
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v11
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               _ -> MAlonzo.RTE.mazUnreachableError
                        _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> coe v4)
-- Ledger.Conway.Specification.Script.Validation._.m
d_m_2460 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2460 v0 ~v1 v2 ~v3 ~v4 = du_m_2460 v0 v2
du_m_2460 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2460 v0 v1
  = coe
      MAlonzo.Code.Ledger.Prelude.du_setToMap_44
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                     (coe v0))))))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
            (coe
               MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                              (coe v0)))))))
            (coe (\ v2 -> v2)))
         (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txdats_3276
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
               (coe v1))))
-- Ledger.Conway.Specification.Script.Validation.TxInfo
d_TxInfo_2476 a0 a1 = ()
data T_TxInfo_2476
  = C_constructor_2518 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                       [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny] [AgdaAny] AgdaAny
-- Ledger.Conway.Specification.Script.Validation.TxInfo.realizedInputs
d_realizedInputs_2498 ::
  T_TxInfo_2476 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2498 v0
  = case coe v0 of
      C_constructor_2518 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.txOuts
d_txOuts_2500 ::
  T_TxInfo_2476 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2500 v0
  = case coe v0 of
      C_constructor_2518 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.fee
d_fee_2502 :: T_TxInfo_2476 -> AgdaAny
d_fee_2502 v0
  = case coe v0 of
      C_constructor_2518 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.mint
d_mint_2504 :: T_TxInfo_2476 -> AgdaAny
d_mint_2504 v0
  = case coe v0 of
      C_constructor_2518 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.txCerts
d_txCerts_2506 ::
  T_TxInfo_2476 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290]
d_txCerts_2506 v0
  = case coe v0 of
      C_constructor_2518 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.txWithdrawals
d_txWithdrawals_2508 ::
  T_TxInfo_2476 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2508 v0
  = case coe v0 of
      C_constructor_2518 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.txVldt
d_txVldt_2510 ::
  T_TxInfo_2476 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2510 v0
  = case coe v0 of
      C_constructor_2518 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.vkKey
d_vkKey_2512 :: T_TxInfo_2476 -> [AgdaAny]
d_vkKey_2512 v0
  = case coe v0 of
      C_constructor_2518 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.txdats
d_txdats_2514 :: T_TxInfo_2476 -> [AgdaAny]
d_txdats_2514 v0
  = case coe v0 of
      C_constructor_2518 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.txId
d_txId_2516 :: T_TxInfo_2476 -> AgdaAny
d_txId_2516 v0
  = case coe v0 of
      C_constructor_2518 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.txInfo
d_txInfo_2520 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  T_TxInfo_2476
d_txInfo_2520 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_2520 v0 v4 v5
du_txInfo_2520 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  T_TxInfo_2476
du_txInfo_2520 v0 v1 v2
  = coe
      C_constructor_2518
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
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1270
                  (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2212
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2218
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_2224
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_2242
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2222
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_2226
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_2228
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_2244
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txdats_3276
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2220
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
            (coe v2)))
-- Ledger.Conway.Specification.Script.Validation.credsNeeded
d_credsNeeded_2638 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2638 v0 ~v1 v2 v3 = du_credsNeeded_2638 v0 v2 v3
du_credsNeeded_2638 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2638 v0 v1 v2
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
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 C_Spend_2334
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
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
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1270
                        (coe v0))))
               (coe v1)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2212
                     (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_2216
                     (coe v2))))))
      (coe
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
            (\ v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe C_Rwrd_2330 (coe v3))
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                    (coe v3)))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_586
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
               (coe
                  MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_2226
                     (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__708
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_604
               (MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe C_Cert_2328 (coe v3)) (coe v4))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Certs.du_cwitness_1308
                       (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_456
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2222
                     (coe v2))))
            (coe
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
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Mint_2332 (coe v3))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                          (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_policies_218
                     (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_2242
                        (coe v2))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_604
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Class.ToBool.du_if_then_else__38
                          (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_isGovVoterCredential_1218
                             (coe v3))
                          (coe
                             MAlonzo.Code.Level.C_lift_20
                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                          (coe
                             (\ v4 ->
                                coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe C_Vote_2336 (coe v3)) (coe v4))))
                          (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v3 ->
                              MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_voter_910
                                (coe v3))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_2234
                              (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_604
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Class.ToBool.du_if_then_else__38
                          (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_policy_996
                             (coe v3))
                          (coe
                             MAlonzo.Code.Level.C_lift_20
                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                          (coe
                             (\ v4 ->
                                coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe C_Propose_2338 (coe v3))
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                        (coe v4)))))
                          (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_2236
                           (coe v2))))))))
-- Ledger.Conway.Specification.Script.Validation.valContext
d_valContext_2708 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_TxInfo_2476 -> T_ScriptPurpose_2326 -> AgdaAny
d_valContext_2708 v0 ~v1 v2 v3 = du_valContext_2708 v0 v2 v3
du_valContext_2708 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_TxInfo_2476 -> T_ScriptPurpose_2326 -> AgdaAny
du_valContext_2708 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_toData_276
      (MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
            (coe v0)))
      erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Ledger.Conway.Specification.Script.Validation.txOutToDataHash
d_txOutToDataHash_2714 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_2714 ~v0 ~v1 v2 = du_txOutToDataHash_2714 v2
du_txOutToDataHash_2714 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_2714 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                      -> coe
                           MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72 (coe v5)
                           (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.txOutToP2Script
d_txOutToP2Script_2718 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_2718 v0 ~v1 v2 v3 v4
  = du_txOutToP2Script_2718 v0 v2 v3 v4
du_txOutToP2Script_2718 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_2718 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
                   (coe v4)))
             (coe
                (\ v6 ->
                   coe
                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                     MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_lookupScriptHash_2430
                        (coe v0) (coe v6) (coe v2) (coe v1))
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_toP2Script_428)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_2730 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_2730 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (\ v5 ->
         coe
           MAlonzo.Code.Class.ToBool.du_if_then_else__38
           (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
           (coe
              MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
           (coe
              MAlonzo.Code.Level.C_lift_20
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
           (coe
              (\ v6 ->
                 d_toScriptInput_2742
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)) (coe v6)))
           (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
      (coe
         du_credsNeeded_2638 (coe v0) (coe v4)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
            (coe v3)))
-- Ledger.Conway.Specification.Script.Validation._.toScriptInput
d_toScriptInput_2742 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_2326 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toScriptInput_2742 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_lookupScriptHash_2430
         (coe v0) (coe v6) (coe v3) (coe v4))
      (coe
         (\ v7 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
              erased
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_toP2Script_428
                 v7)
              (\ v8 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                   MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
                   erased (d_indexedRdmrs_2412 (coe v0) (coe v1) (coe v3) (coe v5))
                   (\ v9 ->
                      case coe v9 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                        (coe
                                           MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                           (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270)
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                           (coe
                                              du_getDatum_2448 (coe v0) (coe v3) (coe v4) (coe v5)))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v10)
                                           (coe
                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                              (coe
                                                 du_valContext_2708 (coe v0)
                                                 (coe du_txInfo_2520 (coe v0) (coe v4) (coe v3))
                                                 (coe v5)))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11)
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_400
                                           (coe v2)))))
                        _ -> MAlonzo.RTE.mazUnreachableError))))
-- Ledger.Conway.Specification.Script.Validation.evalP2Scripts
d_evalP2Scripts_2770 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_2770 ~v0 v1 = du_evalP2Scripts_2770 v1
du_evalP2Scripts_2770 ::
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_2770 v0
  = coe
      MAlonzo.Code.Data.Bool.ListAction.du_all_18
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Abstract.d_runPLCScript_2218
              v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
