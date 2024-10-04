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

module MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.MOf
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.CostModel
d_CostModel_70 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_70 = erased
-- _.DCert
d_DCert_76 a0 = ()
-- _.T
d_T_88 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_T_88 = erased
-- _.THash
d_THash_90 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_90 = erased
-- _.Datum
d_Datum_94 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Datum_94 = erased
-- _.Dec-isScript
d_Dec'45'isScript_98 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_98 ~v0 = du_Dec'45'isScript_98
du_Dec'45'isScript_98 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_98
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isScript_162
-- _.ExUnits
d_ExUnits_200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_200 = erased
-- _.GovProposal
d_GovProposal_222 a0 = ()
-- _.THash
d_THash_258 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_258 = erased
-- _.Language
d_Language_266 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_266 = erased
-- _.PlutusScript
d_PlutusScript_292 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_292 = erased
-- _.PParams
d_PParams_302 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_334 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_RdmrPtr_334 = erased
-- _.Redeemer
d_Redeemer_336 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Redeemer_336 = erased
-- _.RwdAddr
d_RwdAddr_350 a0 = ()
-- _.Script
d_Script_358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_358 = erased
-- _.ScriptHash
d_ScriptHash_366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_366 = erased
-- _.Slot
d_Slot_414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_414 = erased
-- _.Tx
d_Tx_444 a0 = ()
-- _.TxBody
d_TxBody_446 a0 = ()
-- _.TxIn
d_TxIn_450 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_450 = erased
-- _.TxOut
d_TxOut_452 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_452 = erased
-- _.UTxO
d_UTxO_458 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_458 = erased
-- _.Value
d_Value_476 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_476 = erased
-- _.Voter
d_Voter_482 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Voter_482 = erased
-- _.Wdrl
d_Wdrl_484 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Wdrl_484 = erased
-- _.evalTimelock
d_evalTimelock_546 a0 a1 a2 a3 = ()
-- _.GovProposal.action
d_action_932 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
      (coe v0)
-- _.GovProposal.anchor
d_anchor_934 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_804
      (coe v0)
-- _.GovProposal.deposit
d_deposit_936 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer
d_deposit_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
      (coe v0)
-- _.GovProposal.policy
d_policy_938 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Maybe AgdaAny
d_policy_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_940 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  AgdaAny
d_prevAction_940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_942 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_984 a0 = ()
-- _.PParams.Emax
d_Emax_1142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_Emax_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- _.PParams.a
d_a_1144 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- _.PParams.a0
d_a0_1146 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- _.PParams.b
d_b_1148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1150 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_1150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1158 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_costmdls_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_drepActivity_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxBlockExUnits_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_1180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxTxExUnits_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1186 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1188 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- _.PParams.nopt
d_nopt_1194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_1196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_1198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- _.PParams.prices
d_prices_1200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_prices_1200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- _.PParams.pv
d_pv_1202 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_1206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- _.RwdAddr.net
d_net_1408 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  AgdaAny
d_net_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_86 (coe v0)
-- _.RwdAddr.stake
d_stake_1410 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_stake_1410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88 (coe v0)
-- _.Tx.body
d_body_1632 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806
d_body_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
      (coe v0)
-- _.Tx.isValid
d_isValid_1634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  Bool
d_isValid_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2922
      (coe v0)
-- _.Tx.txAD
d_txAD_1636 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  Maybe AgdaAny
d_txAD_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2924
      (coe v0)
-- _.Tx.wits
d_wits_1638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888
d_wits_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
      (coe v0)
-- _.TxBody.collateral
d_collateral_1642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2882
      (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe Integer
d_curTreasury_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_2876
      (coe v0)
-- _.TxBody.mint
d_mint_1646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  AgdaAny
d_mint_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2856
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1648 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2850
      (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [AgdaAny]
d_reqSigHash_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_reqSigHash_2884
      (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe AgdaAny
d_scriptIntHash_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptIntHash_2886
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1654 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe AgdaAny
d_txADhash_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_2872
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe AgdaAny
d_txNetworkId_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_2874
      (coe v0)
-- _.TxBody.txcerts
d_txcerts_1658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2860
      (coe v0)
-- _.TxBody.txdonation
d_txdonation_1660 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_txdonation_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_2868
      (coe v0)
-- _.TxBody.txfee
d_txfee_1662 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_txfee_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2854
      (coe v0)
-- _.TxBody.txid
d_txid_1664 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  AgdaAny
d_txid_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
      (coe v0)
-- _.TxBody.txins
d_txins_1666 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2848
      (coe v0)
-- _.TxBody.txouts
d_txouts_1668 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2852
      (coe v0)
-- _.TxBody.txprop
d_txprop_1670 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2866
      (coe v0)
-- _.TxBody.txsize
d_txsize_1672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_txsize_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_2878
      (coe v0)
-- _.TxBody.txup
d_txup_1674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txup_2870
      (coe v0)
-- _.TxBody.txvldt
d_txvldt_1676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2858
      (coe v0)
-- _.TxBody.txvote
d_txvote_1678 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_1678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2864
      (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1680 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2862
      (coe v0)
-- Ledger.Conway.Conformance.ScriptValidation.ScriptPurpose
d_ScriptPurpose_1756 a0 a1 = ()
data T_ScriptPurpose_1756
  = C_Cert_1758 MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 |
    C_Rwrd_1760 MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 |
    C_Mint_1762 AgdaAny |
    C_Spend_1764 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_1766 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Propose_1768 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780
-- Ledger.Conway.Conformance.ScriptValidation.rdptr
d_rdptr_1770 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  T_ScriptPurpose_1756 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_1770 v0 v1 v2 v3
  = case coe v3 of
      C_Cert_1758 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Cert_14)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfDCert_1740
                (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2860
                   (coe v2)))
      C_Rwrd_1760 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Rewrd_16)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfRwdAddr_1742
                (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2862
                   (coe v2)))
      C_Mint_1762 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Mint_12)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfPolicyId_1746
                (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                   (coe v1))
                v4
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_212
                   (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
                      (coe v0))
                   (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2856
                      (coe v2))))
      C_Spend_1764 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Spend_10)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfTxIn_1744
                (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2848
                   (coe v2)))
      C_Vote_1766 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Vote_18)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfVote_1748
                (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                   (coe v1))
                v4
                (coe
                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                   () erased
                   (\ v5 ->
                      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
                        (coe v5))
                   (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2864
                      (coe v2))))
      C_Propose_1768 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Propose_20)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfProposal_1750
                (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2866
                   (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.indexedRdmrs
d_indexedRdmrs_1846 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  T_ScriptPurpose_1756 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_1846 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txrdmrs_2904
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                    (coe v2)))
              (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Tag_22
                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1230
                          (coe v0))))
                 (coe v4)
                 (let v5
                        = MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                  coe
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v5
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txrdmrs_2904
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                                (coe v2)))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_1770 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
            (coe v2))
         (coe v3))
-- Ledger.Conway.Conformance.ScriptValidation.getDatum
d_getDatum_1880 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1756 -> [AgdaAny]
d_getDatum_1880 v0 ~v1 v2 v3 v4 = du_getDatum_1880 v0 v2 v3 v4
du_getDatum_1880 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1756 -> [AgdaAny]
du_getDatum_1880 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v3 of
         C_Spend_1764 v5
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_32
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
                                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                           (coe v14)
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                      -> coe
                                                           MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_286)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdats_2902
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                                                                    (coe v1)))
                                                              (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased
                                                                    (MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                                                                                   (coe v0)))))))
                                                                 (coe v14)
                                                                 (let v15
                                                                        = MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_338
                                                                       v15
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdats_2902
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                                                                                (coe v1))))))))
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                               -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               _ -> MAlonzo.RTE.mazUnreachableError
                        _ -> MAlonzo.RTE.mazUnreachableError))
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe v2) (coe v5)
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1232
                               (coe v0))
                            (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1230
                               (coe v0))))
                      (coe v5)
                      (let v6
                             = MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v6
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v2))))))
         _ -> coe v4)
-- Ledger.Conway.Conformance.ScriptValidation.TxInfo
d_TxInfo_1920 a0 a1 = ()
data T_TxInfo_1920
  = C_TxInfo'46'constructor_16393 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.Conway.Conformance.ScriptValidation.TxInfo.realizedInputs
d_realizedInputs_1942 ::
  T_TxInfo_1920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_1942 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16393 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.TxInfo.txouts
d_txouts_1944 ::
  T_TxInfo_1920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1944 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16393 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.TxInfo.fee
d_fee_1946 :: T_TxInfo_1920 -> AgdaAny
d_fee_1946 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16393 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.TxInfo.mint
d_mint_1948 :: T_TxInfo_1920 -> AgdaAny
d_mint_1948 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16393 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.TxInfo.txcerts
d_txcerts_1950 ::
  T_TxInfo_1920 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_1950 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16393 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.TxInfo.txwdrls
d_txwdrls_1952 ::
  T_TxInfo_1920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1952 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16393 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.TxInfo.txvldt
d_txvldt_1954 ::
  T_TxInfo_1920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1954 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16393 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.TxInfo.vkKey
d_vkKey_1956 :: T_TxInfo_1920 -> [AgdaAny]
d_vkKey_1956 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16393 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.TxInfo.txdats
d_txdats_1958 ::
  T_TxInfo_1920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_1958 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16393 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.TxInfo.txid
d_txid_1960 :: T_TxInfo_1920 -> AgdaAny
d_txid_1960 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16393 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.txInfo
d_txInfo_1962 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  T_TxInfo_1920
d_txInfo_1962 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_1962 v0 v4 v5
du_txInfo_1962 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  T_TxInfo_1920
du_txInfo_1962 v0 v1 v2
  = coe
      C_TxInfo'46'constructor_16393
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1232
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1230
                  (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2848
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2852
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_210
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2854
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2856
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2860
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2862
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2858
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_reqSigHash_2884
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdats_2902
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
            (coe v2)))
-- Ledger.Conway.Conformance.ScriptValidation.DelegateOrDeReg
d_DelegateOrDeReg_2086 a0 a1 a2 = ()
data T_DelegateOrDeReg_2086
  = C_delegate_2096 | C_dereg_2102 | C_regdrep_2110 |
    C_deregdrep_2116
-- Ledger.Conway.Conformance.ScriptValidation.Dec-DelegateOrDeReg
d_Dec'45'DelegateOrDeReg_2118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'DelegateOrDeReg_2118 ~v0 ~v1 v2
  = du_Dec'45'DelegateOrDeReg_2118 v2
du_Dec'45'DelegateOrDeReg_2118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'DelegateOrDeReg_2118 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_delegate_874 v1 v2 v3 v4
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v5 v6 -> coe C_delegate_2096))
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_dereg_876 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_dereg_2102))
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_regpool_878 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_retirepool_880 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_regdrep_882 v1 v2 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v4 v5 -> coe C_regdrep_2110))
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_deregdrep_884 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_deregdrep_2116))
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_ccreghot_886 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.ScriptValidation.UTxOSH
d_UTxOSH_2140 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  ()
d_UTxOSH_2140 = erased
-- Ledger.Conway.Conformance.ScriptValidation.scriptOutWithHash
d_scriptOutWithHash_2142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutWithHash_2142 ~v0 ~v1 ~v2 v3
  = du_scriptOutWithHash_2142 v3
du_scriptOutWithHash_2142 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutWithHash_2142 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Interface.ToBool.du_if_then_else__46
             (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
             (coe
                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isScript_162
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_payCred_112
                   (coe v1)))
             (coe
                (\ v3 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_getScriptHash_188
                           (coe v1) (coe v3)))))
             (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.scriptOutsWithHash
d_scriptOutsWithHash_2152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutsWithHash_2152 ~v0 ~v1 v2
  = du_scriptOutsWithHash_2152 v2
du_scriptOutsWithHash_2152 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutsWithHash_2152 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1168
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (\ v1 v2 -> coe du_scriptOutWithHash_2142 v2) (coe v0)
-- Ledger.Conway.Conformance.ScriptValidation.spendScripts
d_spendScripts_2156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_spendScripts_2156 v0 ~v1 v2 v3 = du_spendScripts_2156 v0 v2 v3
du_spendScripts_2156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_spendScripts_2156 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1232
               (coe v0))
            (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1230
               (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe C_Spend_1764 (coe v1))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1548
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1458
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe v2) (coe v1) (coe v3))))))
      (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Conway.Conformance.ScriptValidation.rwdScripts
d_rwdScripts_2164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwdScripts_2164 ~v0 ~v1 v2 = du_rwdScripts_2164 v2
du_rwdScripts_2164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwdScripts_2164 v0
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isScript_162
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88
            (coe v0)))
      (coe
         (\ v1 ->
            seq
              (coe v1)
              (case coe v0 of
                 MAlonzo.Code.Ledger.Conway.Conformance.Address.C_RwdAddr'46'constructor_3193 v2 v3
                   -> case coe v3 of
                        MAlonzo.Code.Ledger.Conway.Conformance.Address.C_ScriptObj_24 v4
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe C_Rwrd_1760 (coe v0)) (coe v4))
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Conway.Conformance.ScriptValidation.certScripts
d_certScripts_2172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certScripts_2172 ~v0 ~v1 v2 = du_certScripts_2172 v2
du_certScripts_2172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certScripts_2172 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_delegate_874 v1 v2 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Conformance.Address.C_KeyHashObj_22 v5
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Conformance.Address.C_ScriptObj_24 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1758 (coe v0)) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_dereg_876 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Conformance.Address.C_KeyHashObj_22 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Conformance.Address.C_ScriptObj_24 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1758 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_regpool_878 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_retirepool_880 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_regdrep_882 v1 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Conformance.Address.C_KeyHashObj_22 v4
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Conformance.Address.C_ScriptObj_24 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1758 (coe v0)) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_deregdrep_884 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Conformance.Address.C_KeyHashObj_22 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Conformance.Address.C_ScriptObj_24 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1758 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_ccreghot_886 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.scriptsNeeded
d_scriptsNeeded_2232 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_scriptsNeeded_2232 v0 ~v1 v2 v3 = du_scriptsNeeded_2232 v0 v2 v3
du_scriptsNeeded_2232 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_scriptsNeeded_2232 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__668
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_564
         (MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v3 ->
            coe
              du_spendScripts_2156 (coe v0) (coe v3)
              (coe du_scriptOutsWithHash_2152 (coe v1)))
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2848
            (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_mapPartial_564
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe du_rwdScripts_2164)
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_540
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2862
                     (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__668
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_564
               (MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe du_certScripts_2172)
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_416
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2860
                     (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_386
               (MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe C_Mint_1762 (coe v3)) (coe v3))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_212
                  (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
                     (coe v0))
                  (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2856
                     (coe v2))))))
-- Ledger.Conway.Conformance.ScriptValidation.valContext
d_valContext_2292 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_TxInfo_1920 -> T_ScriptPurpose_1756 -> AgdaAny
d_valContext_2292 v0 ~v1 v2 v3 = du_valContext_2292 v0 v2 v3
du_valContext_2292 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_TxInfo_1920 -> T_ScriptPurpose_1756 -> AgdaAny
du_valContext_2292 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_toData_266
      (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
            (coe v0)))
      erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Ledger.Conway.Conformance.ScriptValidation.collectPhaseTwoScriptInputs'
d_collectPhaseTwoScriptInputs''_2298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_collectPhaseTwoScriptInputs''_2298 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                     (MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                           (coe v0)))
                     v7
                     (coe
                        MAlonzo.Code.Axiom.Set.du_map_386
                        (MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_m_3040
                              (coe v0) (coe v3) (coe v4)))) in
           coe
             (case coe v8 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                  -> if coe v9
                       then case coe v10 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                -> let v12
                                         = coe
                                             MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1548
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_m_3040
                                                (coe v0) (coe v3) (coe v4))
                                             (coe v7) (coe v11) in
                                   coe
                                     (let v13
                                            = coe
                                                MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v12) in
                                      coe
                                        (let v14
                                               = coe
                                                   MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                   (coe
                                                      (\ v14 ->
                                                         coe
                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txrdmrs_2904
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                                                                 (coe v3)))
                                                           (coe v14)
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                    () erased () erased
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Tag_22
                                                                    (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1230
                                                                       (coe v0))))
                                                              (coe v14)
                                                              (let v15
                                                                     = MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_338
                                                                    v15
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txrdmrs_2904
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                                                                             (coe v3)))))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                   (let v14
                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                              (coe v3) in
                                                    coe
                                                      (case coe v6 of
                                                         C_Cert_1758 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Cert_14)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfDCert_1740
                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2860
                                                                      (coe v14)))
                                                         C_Rwrd_1760 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Rewrd_16)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfRwdAddr_1742
                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2862
                                                                      (coe v14)))
                                                         C_Mint_1762 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Mint_12)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfPolicyId_1746
                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_212
                                                                      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
                                                                         (coe v0))
                                                                      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2856
                                                                         (coe v14))))
                                                         C_Spend_1764 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Spend_10)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfTxIn_1744
                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2848
                                                                      (coe v14)))
                                                         C_Vote_1766 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Vote_18)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfVote_1748
                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                      () erased () erased
                                                                      (\ v16 ->
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
                                                                           (coe v16))
                                                                      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2864
                                                                         (coe v14))))
                                                         C_Propose_1768 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Propose_20)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfProposal_1750
                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2866
                                                                      (coe v14)))
                                                         _ -> MAlonzo.RTE.mazUnreachableError)) in
                                         coe
                                           (case coe v13 of
                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v15
                                                -> case coe v14 of
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v16
                                                       -> case coe v16 of
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                              -> coe
                                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v12)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                            (coe
                                                                               du_getDatum_1880
                                                                               (coe v0) (coe v3)
                                                                               (coe v4) (coe v6))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                               (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                  (coe
                                                                                     du_valContext_2292
                                                                                     (coe v0)
                                                                                     (coe
                                                                                        du_txInfo_1962
                                                                                        (coe v0)
                                                                                        (coe v4)
                                                                                        (coe v3))
                                                                                     (coe v6))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe v18)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
                                                                               (coe v2)))))
                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                     _ -> coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                              _ -> coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else (let v11
                                   = seq
                                       (coe v10)
                                       (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased) in
                             coe
                               (case coe v11 of
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                    -> let v13
                                             = coe
                                                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1548
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_m_3040
                                                    (coe v0) (coe v3) (coe v4))
                                                 (coe v7) (coe v12) in
                                       coe
                                         (let v14
                                                = coe
                                                    MAlonzo.Code.Data.Sum.du_isInj'8322'_30
                                                    (coe v13) in
                                          coe
                                            (let v15
                                                   = coe
                                                       MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                       (coe
                                                          (\ v15 ->
                                                             coe
                                                               MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txrdmrs_2904
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                                                                     (coe v3)))
                                                               (coe v15)
                                                               (coe
                                                                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                     erased
                                                                     (coe
                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                        () erased () erased
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Tag_22
                                                                        (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1230
                                                                           (coe v0))))
                                                                  (coe v15)
                                                                  (let v16
                                                                         = MAlonzo.Code.Axiom.Set.d_th_1458
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Rel.du_dom_338
                                                                        v16
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txrdmrs_2904
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
                                                                                 (coe v3)))))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                       (let v15
                                                              = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                                  (coe v3) in
                                                        coe
                                                          (case coe v6 of
                                                             C_Cert_1758 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Cert_14)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfDCert_1740
                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2860
                                                                          (coe v15)))
                                                             C_Rwrd_1760 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Rewrd_16)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfRwdAddr_1742
                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2862
                                                                          (coe v15)))
                                                             C_Mint_1762 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Mint_12)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfPolicyId_1746
                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_212
                                                                          (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
                                                                             (coe v0))
                                                                          (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2856
                                                                             (coe v15))))
                                                             C_Spend_1764 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Spend_10)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfTxIn_1744
                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2848
                                                                          (coe v15)))
                                                             C_Vote_1766 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Vote_18)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfVote_1748
                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                          () erased () erased
                                                                          (\ v17 ->
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
                                                                               (coe v17))
                                                                          (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2864
                                                                             (coe v15))))
                                                             C_Propose_1768 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_Propose_20)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfProposal_1750
                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2866
                                                                          (coe v15)))
                                                             _ -> MAlonzo.RTE.mazUnreachableError)) in
                                             coe
                                               (case coe v14 of
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v16
                                                    -> case coe v15 of
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v17
                                                           -> case coe v17 of
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                  -> coe
                                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v13)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                (coe
                                                                                   du_getDatum_1880
                                                                                   (coe v0) (coe v3)
                                                                                   (coe v4)
                                                                                   (coe v6))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe v18)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         du_valContext_2292
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            du_txInfo_1962
                                                                                            (coe v0)
                                                                                            (coe v4)
                                                                                            (coe
                                                                                               v3))
                                                                                         (coe v6))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe v19)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
                                                                                   (coe v2)))))
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         _ -> coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                  _ -> coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                    -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.ScriptValidation.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_2374 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_2374 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (d_collectPhaseTwoScriptInputs''_2298
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_scriptsNeeded_2232 (coe v0) (coe v4)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
            (coe v3)))
-- Ledger.Conway.Conformance.ScriptValidation.⟦_⟧,_,_,_
d_'10214'_'10215''44'_'44'_'44'__2382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_'10214'_'10215''44'_'44'_'44'__2382 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_runPLCScript_1770
      v0 v2 v1 v3 v4
-- Ledger.Conway.Conformance.ScriptValidation.evalScripts
d_evalScripts_2392 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_2392 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> case coe v6 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> coe
                                  seq (coe v10)
                                  (coe
                                     MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46
                                        (coe ())
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'evalTimelock_326
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_reqSigHash_2884
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                 (coe v2)))
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2858
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                 (coe v2)))
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_410
                                              (coe v8))))
                                     (coe d_evalScripts_2392 (coe v0) (coe v1) (coe v2) (coe v5)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_runPLCScript_1770
                                            v1 v12 v8 v11 v9)
                                         (coe
                                            d_evalScripts_2392 (coe v0) (coe v1) (coe v2) (coe v5))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
