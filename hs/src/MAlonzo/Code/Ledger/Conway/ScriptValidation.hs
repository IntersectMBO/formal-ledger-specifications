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

module MAlonzo.Code.Ledger.Conway.ScriptValidation where

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
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _.CostModel
d_CostModel_44 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_CostModel_44 = erased
-- _.T
d_T_52 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_T_52 = erased
-- _.THash
d_THash_54 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_THash_54 = erased
-- _.Datum
d_Datum_58 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Datum_58 = erased
-- _.Dec-isScript
d_Dec'45'isScript_60 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_60 ~v0 = du_Dec'45'isScript_60
du_Dec'45'isScript_60 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_60
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
-- _.ExUnits
d_ExUnits_148 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ExUnits_148 = erased
-- _.GovProposal
d_GovProposal_162 a0 = ()
-- _.THash
d_THash_252 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_THash_252 = erased
-- _.Language
d_Language_260 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Language_260 = erased
-- _.PlutusScript
d_PlutusScript_288 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_PlutusScript_288 = erased
-- _.PParams
d_PParams_292 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_320 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_RdmrPtr_320 = erased
-- _.Redeemer
d_Redeemer_322 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Redeemer_322 = erased
-- _.RwdAddr
d_RwdAddr_324 a0 = ()
-- _.Script
d_Script_332 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Script_332 = erased
-- _.ScriptHash
d_ScriptHash_340 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_340 = erased
-- _.Slot
d_Slot_384 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Slot_384 = erased
-- _.Tx
d_Tx_410 a0 = ()
-- _.TxBody
d_TxBody_412 a0 = ()
-- _.TxIn
d_TxIn_418 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxIn_418 = erased
-- _.TxOut
d_TxOut_420 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxOut_420 = erased
-- _.UTxO
d_UTxO_426 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_UTxO_426 = erased
-- _.Value
d_Value_446 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Value_446 = erased
-- _.Voter
d_Voter_450 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Voter_450 = erased
-- _.Wdrl
d_Wdrl_452 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Wdrl_452 = erased
-- _.GovProposal.action
d_action_768 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800
d_action_768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_868 (coe v0)
-- _.GovProposal.anchor
d_anchor_770 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_772
d_anchor_770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_878 (coe v0)
-- _.GovProposal.deposit
d_deposit_772 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  Integer
d_deposit_772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_874 (coe v0)
-- _.GovProposal.policy
d_policy_774 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  Maybe AgdaAny
d_policy_774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_872 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_776 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  AgdaAny
d_prevAction_776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_870
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_778 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_876
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_826 a0 = ()
-- _.PParams.Emax
d_Emax_1040 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_Emax_1040 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_412 (coe v0)
-- _.PParams.a
d_a_1042 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_a_1042 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_384 (coe v0)
-- _.PParams.a0
d_a0_1044 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1044 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_416 (coe v0)
-- _.PParams.b
d_b_1046 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_b_1046 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_386 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1048 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMaxTermLength_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_428 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1050 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMinSize_1050 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_426 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1052 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_coinsPerUTxOByte_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_396 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1054 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_collateralPercentage_1054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_418
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_costmdls_1056 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_420 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_drepActivity_1058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_436 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_drepDeposit_1060 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_434 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232
d_drepThresholds_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionDeposit_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_432 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionLifetime_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_430 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_keyDeposit_1068 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_388 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_maxBlockExUnits_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_376 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxBlockSize_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_368 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxCollateralInputs_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_380
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxHeaderSize_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_372 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerBlock_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_404
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerTx_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_402
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_maxTxExUnits_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_374 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxTxSize_1084 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_370 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxValSize_1086 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_378 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_400
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_minUTxOValue_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_410 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_392 (coe v0)
-- _.PParams.nopt
d_nopt_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_nopt_1094 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_414 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_poolDeposit_1096 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_390 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274
d_poolThresholds_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422 (coe v0)
-- _.PParams.prices
d_prices_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_prices_1100 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_398 (coe v0)
-- _.PParams.pv
d_pv_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1102 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_382 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_408
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_406
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_394 (coe v0)
-- _.RwdAddr.net
d_net_1306 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1306 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- _.RwdAddr.stake
d_stake_1308 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1308 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- _.Tx.body
d_body_1522 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_1522 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v0)
-- _.Tx.isValid
d_isValid_1524 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 -> Bool
d_isValid_1524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v0)
-- _.Tx.txAD
d_txAD_1526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 -> Maybe AgdaAny
d_txAD_1526 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150 (coe v0)
-- _.Tx.wits
d_wits_1528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3114
d_wits_1528 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146 (coe v0)
-- _.TxBody.collateral
d_collateral_1532 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3018 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1534 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe Integer
d_curTreasury_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3012 (coe v0)
-- _.TxBody.mint
d_mint_1536 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_mint_1536 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2992 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1538 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2986 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [AgdaAny]
d_reqSigHash_1540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3020 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1542 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_scriptIntHash_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3022
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_txADhash_1544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3008 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_txNetworkId_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3010 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcerts_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2996 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txdonation_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3004 (coe v0)
-- _.TxBody.txfee
d_txfee_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txfee_1552 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2990 (coe v0)
-- _.TxBody.txid
d_txid_1554 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_txid_1554 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3016 (coe v0)
-- _.TxBody.txins
d_txins_1556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1556 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984 (coe v0)
-- _.TxBody.txouts
d_txouts_1558 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1558 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2988 (coe v0)
-- _.TxBody.txprop
d_txprop_1560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854]
d_txprop_1560 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3002 (coe v0)
-- _.TxBody.txsize
d_txsize_1562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txsize_1562 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3014 (coe v0)
-- _.TxBody.txup
d_txup_1564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1564 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3006 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1566 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2994 (coe v0)
-- _.TxBody.txvote
d_txvote_1568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836]
d_txvote_1568 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3000 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2998 (coe v0)
-- Ledger.Conway.ScriptValidation._.DCert
d_DCert_1660 a0 a1 = ()
-- Ledger.Conway.ScriptValidation.ScriptPurpose
d_ScriptPurpose_1960 a0 a1 = ()
data T_ScriptPurpose_1960
  = C_Cert_1962 MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 |
    C_Rwrd_1964 MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 |
    C_Mint_1966 AgdaAny |
    C_Spend_1968 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_1970 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Propose_1972 MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854
-- Ledger.Conway.ScriptValidation.rdptr
d_rdptr_1974 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  T_ScriptPurpose_1960 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_1974 v0 v1 v2 v3
  = case coe v3 of
      C_Cert_1962 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.C_Cert_12) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfDCert_1944
                (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972 (coe v1)) v4
                (MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2996 (coe v2)))
      C_Rwrd_1964 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.C_Rewrd_14) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfRwdAddr_1946
                (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972 (coe v1)) v4
                (MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2998 (coe v2)))
      C_Mint_1966 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.C_Mint_10) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfPolicyId_1950
                (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972 (coe v1)) v4
                (coe
                   MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
                   (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                      (coe v0))
                   (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2992 (coe v2))))
      C_Spend_1968 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.C_Spend_8) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfTxIn_1948
                (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972 (coe v1)) v4
                (MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984 (coe v2)))
      C_Vote_1970 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.C_Vote_16) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfVote_1952
                (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972 (coe v1)) v4
                (coe
                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                   () erased
                   (\ v5 ->
                      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_848 (coe v5))
                   (MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3000 (coe v2))))
      C_Propose_1972 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.C_Propose_18) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfProposal_1954
                (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972 (coe v1)) v4
                (MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3002 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.indexedRdmrs
d_indexedRdmrs_2050 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  T_ScriptPurpose_1960 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_2050 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe
                 MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3130
                 (coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146 (coe v2)))
              (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Tag_20
                       (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                          (coe v0))))
                 (coe v4)
                 (let v5
                        = MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                  coe
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v5
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                          (coe
                             MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3130
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146 (coe v2)))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_1974 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2))
         (coe v3))
-- Ledger.Conway.ScriptValidation.getDatum
d_getDatum_2084 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1960 -> [AgdaAny]
d_getDatum_2084 v0 ~v1 v2 v3 v4 = du_getDatum_2084 v0 v2 v3 v4
du_getDatum_2084 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1960 -> [AgdaAny]
du_getDatum_2084 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v3 of
         C_Spend_1968 v5
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
                                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3128
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
                                                                    (coe v1)))
                                                              (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                    erased
                                                                    (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                                                                   (coe v0)))))))
                                                                 (coe v14)
                                                                 (let v15
                                                                        = MAlonzo.Code.Axiom.Set.d_th_1470
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                                                       v15
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3128
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
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
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe v2) (coe v5)
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                               (coe v0))
                            (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                               (coe v0))))
                      (coe v5)
                      (let v6
                             = MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v6
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2))))))
         _ -> coe v4)
-- Ledger.Conway.ScriptValidation.TxInfo
d_TxInfo_2124 a0 a1 = ()
data T_TxInfo_2124
  = C_TxInfo'46'constructor_18347 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.Conway.ScriptValidation.TxInfo.realizedInputs
d_realizedInputs_2146 ::
  T_TxInfo_2124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2146 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18347 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.txouts
d_txouts_2148 ::
  T_TxInfo_2124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2148 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18347 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.fee
d_fee_2150 :: T_TxInfo_2124 -> AgdaAny
d_fee_2150 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18347 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.mint
d_mint_2152 :: T_TxInfo_2124 -> AgdaAny
d_mint_2152 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18347 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.txcerts
d_txcerts_2154 ::
  T_TxInfo_2124 -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcerts_2154 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18347 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.txwdrls
d_txwdrls_2156 ::
  T_TxInfo_2124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2156 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18347 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.txvldt
d_txvldt_2158 ::
  T_TxInfo_2124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2158 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18347 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.vkKey
d_vkKey_2160 :: T_TxInfo_2124 -> [AgdaAny]
d_vkKey_2160 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18347 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.txdats
d_txdats_2162 ::
  T_TxInfo_2124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2162 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18347 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.txid
d_txid_2164 :: T_TxInfo_2124 -> AgdaAny
d_txid_2164 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18347 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.txInfo
d_txInfo_2166 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 -> T_TxInfo_2124
d_txInfo_2166 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_2166 v0 v4 v5
du_txInfo_2166 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 -> T_TxInfo_2124
du_txInfo_2166 v0 v1 v2
  = coe
      C_TxInfo'46'constructor_18347
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                  (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984
            (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2988
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2990
            (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2992
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2996
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2998
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2994
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3020
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3128
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3016
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
-- Ledger.Conway.ScriptValidation.DelegateOrDeReg
d_DelegateOrDeReg_2290 a0 a1 a2 = ()
data T_DelegateOrDeReg_2290
  = C_reg_2296 | C_delegate_2306 | C_dereg_2312 | C_regdrep_2320 |
    C_deregdrep_2326
-- Ledger.Conway.ScriptValidation.Dec-DelegateOrDeReg
d_Dec'45'DelegateOrDeReg_2328 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'DelegateOrDeReg_2328 ~v0 ~v1 v2
  = du_Dec'45'DelegateOrDeReg_2328 v2
du_Dec'45'DelegateOrDeReg_2328 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'DelegateOrDeReg_2328 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1024 v1 v2 v3 v4
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v5 v6 -> coe C_delegate_2306))
         MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1026 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_dereg_2312))
         MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1028 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Conway.Certs.C_retirepool_1030 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1032 v1 v2 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v4 v5 -> coe C_regdrep_2320))
         MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1034 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_deregdrep_2326))
         MAlonzo.Code.Ledger.Conway.Certs.C_ccreghot_1036 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Conway.Certs.C_reg_1038 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_reg_2296))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.ScriptValidation.UTxOSH
d_UTxOSH_2352 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 -> ()
d_UTxOSH_2352 = erased
-- Ledger.Conway.ScriptValidation.scriptOutWithHash
d_scriptOutWithHash_2354 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutWithHash_2354 ~v0 ~v1 ~v2 v3
  = du_scriptOutWithHash_2354 v3
du_scriptOutWithHash_2354 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutWithHash_2354 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Class.ToBool.du_if_then_else__42
             (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
             (coe
                MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
                (coe MAlonzo.Code.Ledger.Conway.Address.du_payCred_154 (coe v1)))
             (coe
                (\ v3 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230 (coe v1)
                           (coe v3)))))
             (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.scriptOutsWithHash
d_scriptOutsWithHash_2364 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutsWithHash_2364 ~v0 ~v1 v2
  = du_scriptOutsWithHash_2364 v2
du_scriptOutsWithHash_2364 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutsWithHash_2364 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1252
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (\ v1 v2 -> coe du_scriptOutWithHash_2354 v2) (coe v0)
-- Ledger.Conway.ScriptValidation.spendScripts
d_spendScripts_2368 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_spendScripts_2368 v0 ~v1 v2 v3 = du_spendScripts_2368 v0 v2 v3
du_spendScripts_2368 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_spendScripts_2368 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__42
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
               (coe v0))
            (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
               (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_548
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe C_Spend_1968 (coe v1))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1680
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe v2) (coe v1) (coe v3))))))
      (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Conway.ScriptValidation.rwdScripts
d_rwdScripts_2376 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwdScripts_2376 ~v0 ~v1 v2 = du_rwdScripts_2376 v2
du_rwdScripts_2376 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwdScripts_2376 v0
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__42
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
      (coe
         MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
         (coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)))
      (coe
         (\ v1 ->
            seq
              (coe v1)
              (case coe v0 of
                 MAlonzo.Code.Ledger.Conway.Address.C_RwdAddr'46'constructor_3453 v2 v3
                   -> case coe v3 of
                        MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22 v4
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe C_Rwrd_1964 (coe v0)) (coe v4))
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Conway.ScriptValidation.certScripts
d_certScripts_2384 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certScripts_2384 ~v0 ~v1 v2 = du_certScripts_2384 v2
du_certScripts_2384 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certScripts_2384 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1024 v1 v2 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Address.C_KeyHashObj_20 v5
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1962 (coe v0)) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1026 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Address.C_KeyHashObj_20 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1962 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1028 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Certs.C_retirepool_1030 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1032 v1 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Address.C_KeyHashObj_20 v4
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1962 (coe v0)) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1034 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Address.C_KeyHashObj_20 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1962 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Certs.C_ccreghot_1036 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Certs.C_reg_1038 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Address.C_KeyHashObj_20 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1962 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.scriptsNeeded
d_scriptsNeeded_2456 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_scriptsNeeded_2456 v0 ~v1 v2 v3 = du_scriptsNeeded_2456 v0 v2 v3
du_scriptsNeeded_2456 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_scriptsNeeded_2456 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_576
         (MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v3 ->
            coe
              du_spendScripts_2368 (coe v0) (coe v3)
              (coe du_scriptOutsWithHash_2364 (coe v1)))
         (MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984 (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.du_mapPartial_576
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe du_rwdScripts_2376)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_548
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
               (coe
                  MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_116
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2998 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__680
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_576
               (MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe du_certScripts_2384)
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_428
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2996 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_398
               (MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe C_Mint_1966 (coe v3)) (coe v3))
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                     (coe v0))
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2992 (coe v2))))))
-- Ledger.Conway.ScriptValidation.valContext
d_valContext_2516 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_TxInfo_2124 -> T_ScriptPurpose_1960 -> AgdaAny
d_valContext_2516 v0 ~v1 v2 v3 = du_valContext_2516 v0 v2 v3
du_valContext_2516 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_TxInfo_2124 -> T_ScriptPurpose_1960 -> AgdaAny
du_valContext_2516 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_toData_266
      (MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
            (coe v0)))
      erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Ledger.Conway.ScriptValidation.collectPhaseTwoScriptInputs'
d_collectPhaseTwoScriptInputs''_2522 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_collectPhaseTwoScriptInputs''_2522 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased
                     (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                        (coe
                           MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0)))
                     v7
                     (coe
                        MAlonzo.Code.Axiom.Set.du_map_398
                        (MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                           (coe
                              MAlonzo.Code.Ledger.Conway.Transaction.du_m_3280 (coe v0) (coe v3)
                              (coe v4)))) in
           coe
             (case coe v8 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                  -> if coe v9
                       then case coe v10 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                -> let v12
                                         = coe
                                             MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1680
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.du_m_3280
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
                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3130
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
                                                                 (coe v3)))
                                                           (coe v14)
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                    () erased () erased
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Tag_20
                                                                    (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                                                                       (coe v0))))
                                                              (coe v14)
                                                              (let v15
                                                                     = MAlonzo.Code.Axiom.Set.d_th_1470
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                                                    v15
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3130
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
                                                                             (coe v3)))))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                   (let v14
                                                          = MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                                              (coe v3) in
                                                    coe
                                                      (case coe v6 of
                                                         C_Cert_1962 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.C_Cert_12)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfDCert_1944
                                                                   (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2996
                                                                      (coe v14)))
                                                         C_Rwrd_1964 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.C_Rewrd_14)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfRwdAddr_1946
                                                                   (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2998
                                                                      (coe v14)))
                                                         C_Mint_1966 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.C_Mint_10)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfPolicyId_1950
                                                                   (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
                                                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                                                         (coe v0))
                                                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2992
                                                                         (coe v14))))
                                                         C_Spend_1968 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.C_Spend_8)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfTxIn_1948
                                                                   (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984
                                                                      (coe v14)))
                                                         C_Vote_1970 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.C_Vote_16)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfVote_1952
                                                                   (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                      () erased () erased
                                                                      (\ v16 ->
                                                                         MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_848
                                                                           (coe v16))
                                                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3000
                                                                         (coe v14))))
                                                         C_Propose_1972 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.C_Propose_18)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfProposal_1954
                                                                   (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3002
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
                                                                               du_getDatum_2084
                                                                               (coe v0) (coe v3)
                                                                               (coe v4) (coe v6))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                               (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                  (coe
                                                                                     du_valContext_2516
                                                                                     (coe v0)
                                                                                     (coe
                                                                                        du_txInfo_2166
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
                                                                               MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_420
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
                                                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1680
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Transaction.du_m_3280
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
                                                               MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3130
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
                                                                     (coe v3)))
                                                               (coe v15)
                                                               (coe
                                                                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                     erased
                                                                     (coe
                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                        () erased () erased
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Tag_20
                                                                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                                                                           (coe v0))))
                                                                  (coe v15)
                                                                  (let v16
                                                                         = MAlonzo.Code.Axiom.Set.d_th_1470
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                                                        v16
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3130
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
                                                                                 (coe v3)))))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                       (let v15
                                                              = MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                                                  (coe v3) in
                                                        coe
                                                          (case coe v6 of
                                                             C_Cert_1962 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.C_Cert_12)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfDCert_1944
                                                                       (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2996
                                                                          (coe v15)))
                                                             C_Rwrd_1964 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.C_Rewrd_14)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfRwdAddr_1946
                                                                       (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2998
                                                                          (coe v15)))
                                                             C_Mint_1966 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.C_Mint_10)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfPolicyId_1950
                                                                       (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
                                                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                                                             (coe v0))
                                                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2992
                                                                             (coe v15))))
                                                             C_Spend_1968 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.C_Spend_8)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfTxIn_1948
                                                                       (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984
                                                                          (coe v15)))
                                                             C_Vote_1970 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.C_Vote_16)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfVote_1952
                                                                       (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                          () erased () erased
                                                                          (\ v17 ->
                                                                             MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_848
                                                                               (coe v17))
                                                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3000
                                                                             (coe v15))))
                                                             C_Propose_1972 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.C_Propose_18)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfProposal_1954
                                                                       (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_1972
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3002
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
                                                                                   du_getDatum_2084
                                                                                   (coe v0) (coe v3)
                                                                                   (coe v4)
                                                                                   (coe v6))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe v18)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         du_valContext_2516
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            du_txInfo_2166
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
                                                                                   MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_420
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
-- Ledger.Conway.ScriptValidation.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_2598 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_2598 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (d_collectPhaseTwoScriptInputs''_2522
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_scriptsNeeded_2456 (coe v0) (coe v4)
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v3)))
-- Ledger.Conway.ScriptValidation.⟦_⟧,_,_,_
d_'10214'_'10215''44'_'44'_'44'__2606 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_'10214'_'10215''44'_'44'_'44'__2606 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Abstract.d_runPLCScript_1974 v0 v2 v1 v3
      v4
-- Ledger.Conway.ScriptValidation.evalScripts
d_evalScripts_2616 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_2616 v0 v1 v2 v3
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
                                           MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validP1Script_112
                                           (MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                                 (coe v0)))
                                           (MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3020
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                                 (coe v2)))
                                           (MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2994
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                                 (coe v2)))
                                           v8))
                                     (coe d_evalScripts_2616 (coe v0) (coe v1) (coe v2) (coe v5)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Abstract.d_runPLCScript_1974
                                            v1 v12 v8 v11 v9)
                                         (coe
                                            d_evalScripts_2616 (coe v0) (coe v1) (coe v2) (coe v5))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
