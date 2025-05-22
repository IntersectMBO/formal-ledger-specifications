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
import qualified MAlonzo.Code.Ledger.Conway.Script
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra
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
d_Dec'45'isScript_62 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_62 ~v0 = du_Dec'45'isScript_62
du_Dec'45'isScript_62 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_62
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
-- _.ExUnits
d_ExUnits_152 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ExUnits_152 = erased
-- _.GovProposal
d_GovProposal_166 a0 = ()
-- _.THash
d_THash_254 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_THash_254 = erased
-- _.Language
d_Language_262 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Language_262 = erased
-- _.PlutusScript
d_PlutusScript_290 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_PlutusScript_290 = erased
-- _.PParams
d_PParams_294 a0 = ()
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
d_RwdAddr_336 a0 = ()
-- _.Script
d_Script_344 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Script_344 = erased
-- _.ScriptHash
d_ScriptHash_352 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_352 = erased
-- _.Slot
d_Slot_396 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Slot_396 = erased
-- _.Tx
d_Tx_424 a0 = ()
-- _.TxBody
d_TxBody_426 a0 = ()
-- _.TxIn
d_TxIn_432 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxIn_432 = erased
-- _.TxOut
d_TxOut_434 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxOut_434 = erased
-- _.UTxO
d_UTxO_440 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_UTxO_440 = erased
-- _.Value
d_Value_460 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Value_460 = erased
-- _.Voter
d_Voter_464 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Voter_464 = erased
-- _.Wdrl
d_Wdrl_466 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Wdrl_466 = erased
-- _.GovProposal.action
d_action_786 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778
d_action_786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_846 (coe v0)
-- _.GovProposal.anchor
d_anchor_788 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_750
d_anchor_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_856 (coe v0)
-- _.GovProposal.deposit
d_deposit_790 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  Integer
d_deposit_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_852 (coe v0)
-- _.GovProposal.policy
d_policy_792 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  Maybe AgdaAny
d_policy_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_850 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_794 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  AgdaAny
d_prevAction_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_848
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_796 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_854
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_844 a0 = ()
-- _.PParams.Emax
d_Emax_1054 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_Emax_1054 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_380 (coe v0)
-- _.PParams.a
d_a_1056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_a_1056 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_352 (coe v0)
-- _.PParams.a0
d_a0_1058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1058 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_384 (coe v0)
-- _.PParams.b
d_b_1060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_b_1060 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_354 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMaxTermLength_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_396 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMinSize_1064 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_394 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_coinsPerUTxOByte_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_364 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_collateralPercentage_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_386
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_costmdls_1070 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_388 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_drepActivity_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_404 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_drepDeposit_1074 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_402 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionDeposit_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_400 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionLifetime_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_398 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_keyDeposit_1082 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_356 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxBlockExUnits_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_344 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxBlockSize_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_336 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxCollateralInputs_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_348
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxHeaderSize_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_340 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerBlock_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_372
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerTx_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_370
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxTxExUnits_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_342 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxTxSize_1098 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_338 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxValSize_1100 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_346 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_368
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_minUTxOValue_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_378 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_360 (coe v0)
-- _.PParams.nopt
d_nopt_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_nopt_1108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_382 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1110 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_poolDeposit_1110 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_358 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v0)
-- _.PParams.prices
d_prices_1114 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_prices_1114 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_366 (coe v0)
-- _.PParams.pv
d_pv_1116 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1116 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_350 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1118 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_376
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1120 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_refScriptCostStride_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_374
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1122 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1122 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_362 (coe v0)
-- _.RwdAddr.net
d_net_1320 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1320 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- _.RwdAddr.stake
d_stake_1322 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1322 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- _.Tx.body
d_body_1536 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990
d_body_1536 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v0)
-- _.Tx.isValid
d_isValid_1538 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 -> Bool
d_isValid_1538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3196 (coe v0)
-- _.Tx.txAD
d_txAD_1540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 -> Maybe AgdaAny
d_txAD_1540 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3198 (coe v0)
-- _.Tx.wits
d_wits_1542 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3162
d_wits_1542 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194 (coe v0)
-- _.TxBody.collateral
d_collateral_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3066 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe Integer
d_curTreasury_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3060 (coe v0)
-- _.TxBody.mint
d_mint_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> AgdaAny
d_mint_1550 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3040 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3034 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1554 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> [AgdaAny]
d_reqSigHash_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3068 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe AgdaAny
d_scriptIntHash_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3070
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1558 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe AgdaAny
d_txADhash_1558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3056 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe AgdaAny
d_txNetworkId_1560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3058 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
d_txcerts_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3044 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
d_txdonation_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3052 (coe v0)
-- _.TxBody.txfee
d_txfee_1566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
d_txfee_1566 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3038 (coe v0)
-- _.TxBody.txid
d_txid_1568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> AgdaAny
d_txid_1568 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3064 (coe v0)
-- _.TxBody.txins
d_txins_1570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1570 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032 (coe v0)
-- _.TxBody.txouts
d_txouts_1572 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1572 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3036 (coe v0)
-- _.TxBody.txprop
d_txprop_1574 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832]
d_txprop_1574 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3050 (coe v0)
-- _.TxBody.txsize
d_txsize_1576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
d_txsize_1576 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3062 (coe v0)
-- _.TxBody.txup
d_txup_1578 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1578 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3054 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1580 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1580 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3042 (coe v0)
-- _.TxBody.txvote
d_txvote_1582 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814]
d_txvote_1582 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3048 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1584 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3046 (coe v0)
-- Ledger.Conway.ScriptValidation._.DCert
d_DCert_1688 a0 a1 = ()
-- Ledger.Conway.ScriptValidation.ScriptPurpose
d_ScriptPurpose_1988 a0 a1 = ()
data T_ScriptPurpose_1988
  = C_Cert_1990 MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000 |
    C_Rwrd_1992 MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 |
    C_Mint_1994 AgdaAny |
    C_Spend_1996 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_1998 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Propose_2000 MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832
-- Ledger.Conway.ScriptValidation.rdptr
d_rdptr_2002 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  T_ScriptPurpose_1988 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_2002 v0 v1 v2 v3
  = case coe v3 of
      C_Cert_1990 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.C_Cert_12) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfDCert_1972
                (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000 (coe v1)) v4
                (MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3044 (coe v2)))
      C_Rwrd_1992 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.C_Rewrd_14) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfRwdAddr_1974
                (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000 (coe v1)) v4
                (MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3046 (coe v2)))
      C_Mint_1994 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.C_Mint_10) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfPolicyId_1978
                (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000 (coe v1)) v4
                (coe
                   MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
                   (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                      (coe v0))
                   (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3040 (coe v2))))
      C_Spend_1996 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.C_Spend_8) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfTxIn_1976
                (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000 (coe v1)) v4
                (MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032 (coe v2)))
      C_Vote_1998 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.C_Vote_16) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfVote_1980
                (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000 (coe v1)) v4
                (coe
                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                   () erased
                   (\ v5 ->
                      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_826 (coe v5))
                   (MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3048 (coe v2))))
      C_Propose_2000 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.C_Propose_18) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfProposal_1982
                (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000 (coe v1)) v4
                (MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3050 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.indexedRdmrs
d_indexedRdmrs_2078 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  T_ScriptPurpose_1988 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_2078 v0 v1 v2 v3
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
                 MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3178
                 (coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194 (coe v2)))
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
                       (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
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
                             MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3178
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194 (coe v2)))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_2002 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v2))
         (coe v3))
-- Ledger.Conway.ScriptValidation.getDatum
d_getDatum_2112 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1988 -> [AgdaAny]
d_getDatum_2112 v0 ~v1 v2 v3 v4 = du_getDatum_2112 v0 v2 v3 v4
du_getDatum_2112 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1988 -> [AgdaAny]
du_getDatum_2112 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v3 of
         C_Spend_1996 v5
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
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3176
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194
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
                                                                             MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
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
                                                                             MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3176
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194
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
                            (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                               (coe v0))
                            (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
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
d_TxInfo_2152 a0 a1 = ()
data T_TxInfo_2152
  = C_TxInfo'46'constructor_18403 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.Conway.ScriptValidation.TxInfo.realizedInputs
d_realizedInputs_2174 ::
  T_TxInfo_2152 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2174 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.txouts
d_txouts_2176 ::
  T_TxInfo_2152 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2176 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.fee
d_fee_2178 :: T_TxInfo_2152 -> AgdaAny
d_fee_2178 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.mint
d_mint_2180 :: T_TxInfo_2152 -> AgdaAny
d_mint_2180 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.txcerts
d_txcerts_2182 ::
  T_TxInfo_2152 -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
d_txcerts_2182 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.txwdrls
d_txwdrls_2184 ::
  T_TxInfo_2152 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2184 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.txvldt
d_txvldt_2186 ::
  T_TxInfo_2152 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2186 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.vkKey
d_vkKey_2188 :: T_TxInfo_2152 -> [AgdaAny]
d_vkKey_2188 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.txdats
d_txdats_2190 ::
  T_TxInfo_2152 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2190 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.TxInfo.txid
d_txid_2192 :: T_TxInfo_2152 -> AgdaAny
d_txid_2192 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.txInfo
d_txInfo_2194 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 -> T_TxInfo_2152
d_txInfo_2194 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_2194 v0 v4 v5
du_txInfo_2194 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 -> T_TxInfo_2152
du_txInfo_2194 v0 v1 v2
  = coe
      C_TxInfo'46'constructor_18403
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
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
                  (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032
            (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3036
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3038
            (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3040
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3044
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3046
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3042
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3068
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3176
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3064
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v2)))
-- Ledger.Conway.ScriptValidation.DelegateOrDeReg
d_DelegateOrDeReg_2318 a0 a1 a2 = ()
data T_DelegateOrDeReg_2318
  = C_reg_2324 | C_delegate_2334 | C_dereg_2340 | C_regdrep_2348 |
    C_deregdrep_2354
-- Ledger.Conway.ScriptValidation.Dec-DelegateOrDeReg
d_Dec'45'DelegateOrDeReg_2356 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'DelegateOrDeReg_2356 ~v0 ~v1 v2
  = du_Dec'45'DelegateOrDeReg_2356 v2
du_Dec'45'DelegateOrDeReg_2356 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'DelegateOrDeReg_2356 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1002 v1 v2 v3 v4
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v5 v6 -> coe C_delegate_2334))
         MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1004 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_dereg_2340))
         MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1006 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Conway.Certs.C_retirepool_1008 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1010 v1 v2 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v4 v5 -> coe C_regdrep_2348))
         MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1012 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_deregdrep_2354))
         MAlonzo.Code.Ledger.Conway.Certs.C_ccreghot_1014 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Conway.Certs.C_reg_1016 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_reg_2324))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.ScriptValidation.UTxOSH
d_UTxOSH_2380 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 -> ()
d_UTxOSH_2380 = erased
-- Ledger.Conway.ScriptValidation.scriptOutWithHash
d_scriptOutWithHash_2382 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutWithHash_2382 ~v0 ~v1 ~v2 v3
  = du_scriptOutWithHash_2382 v3
du_scriptOutWithHash_2382 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutWithHash_2382 v0
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
d_scriptOutsWithHash_2392 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutsWithHash_2392 ~v0 ~v1 v2
  = du_scriptOutsWithHash_2392 v2
du_scriptOutsWithHash_2392 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutsWithHash_2392 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1252
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (\ v1 v2 -> coe du_scriptOutWithHash_2382 v2) (coe v0)
-- Ledger.Conway.ScriptValidation.spendScripts
d_spendScripts_2396 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_spendScripts_2396 v0 ~v1 v2 v3 = du_spendScripts_2396 v0 v2 v3
du_spendScripts_2396 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_spendScripts_2396 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__42
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
               (coe v0))
            (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
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
                 (coe C_Spend_1996 (coe v1))
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
d_rwdScripts_2404 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwdScripts_2404 ~v0 ~v1 v2 = du_rwdScripts_2404 v2
du_rwdScripts_2404 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwdScripts_2404 v0
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
                                  (coe C_Rwrd_1992 (coe v0)) (coe v4))
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Conway.ScriptValidation.certScripts
d_certScripts_2412 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certScripts_2412 ~v0 ~v1 v2 = du_certScripts_2412 v2
du_certScripts_2412 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certScripts_2412 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1002 v1 v2 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Address.C_KeyHashObj_20 v5
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1990 (coe v0)) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1004 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Address.C_KeyHashObj_20 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1990 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1006 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Certs.C_retirepool_1008 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1010 v1 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Address.C_KeyHashObj_20 v4
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1990 (coe v0)) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1012 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Address.C_KeyHashObj_20 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1990 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Certs.C_ccreghot_1014 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Certs.C_reg_1016 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Address.C_KeyHashObj_20 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Conway.Address.C_ScriptObj_22 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1990 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.ScriptValidation.scriptsNeeded
d_scriptsNeeded_2484 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_scriptsNeeded_2484 v0 ~v1 v2 v3 = du_scriptsNeeded_2484 v0 v2 v3
du_scriptsNeeded_2484 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_scriptsNeeded_2484 v0 v1 v2
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
              du_spendScripts_2396 (coe v0) (coe v3)
              (coe du_scriptOutsWithHash_2392 (coe v1)))
         (MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032 (coe v2)))
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
            (coe du_rwdScripts_2404)
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
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3046 (coe v2)))))
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
               (coe du_certScripts_2412)
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_428
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3044 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_398
               (MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe C_Mint_1994 (coe v3)) (coe v3))
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                     (coe v0))
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3040 (coe v2))))))
-- Ledger.Conway.ScriptValidation.valContext
d_valContext_2544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_TxInfo_2152 -> T_ScriptPurpose_1988 -> AgdaAny
d_valContext_2544 v0 ~v1 v2 v3 = du_valContext_2544 v0 v2 v3
du_valContext_2544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_TxInfo_2152 -> T_ScriptPurpose_1988 -> AgdaAny
du_valContext_2544 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_toData_264
      (MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
            (coe v0)))
      erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Ledger.Conway.ScriptValidation.collectPhaseTwoScriptInputs'
d_collectPhaseTwoScriptInputs''_2550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_collectPhaseTwoScriptInputs''_2550 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased
                     (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                        (coe
                           MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0)))
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
                              MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328 (coe v0) (coe v3)
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
                                                MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
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
                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3178
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194
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
                                                                    (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
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
                                                                          MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3178
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194
                                                                             (coe v3)))))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                   (let v14
                                                          = MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
                                                              (coe v3) in
                                                    coe
                                                      (case coe v6 of
                                                         C_Cert_1990 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.C_Cert_12)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfDCert_1972
                                                                   (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3044
                                                                      (coe v14)))
                                                         C_Rwrd_1992 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.C_Rewrd_14)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfRwdAddr_1974
                                                                   (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3046
                                                                      (coe v14)))
                                                         C_Mint_1994 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.C_Mint_10)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfPolicyId_1978
                                                                   (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
                                                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                                                                         (coe v0))
                                                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3040
                                                                         (coe v14))))
                                                         C_Spend_1996 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.C_Spend_8)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfTxIn_1976
                                                                   (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032
                                                                      (coe v14)))
                                                         C_Vote_1998 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.C_Vote_16)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfVote_1980
                                                                   (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                      () erased () erased
                                                                      (\ v16 ->
                                                                         MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_826
                                                                           (coe v16))
                                                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3048
                                                                         (coe v14))))
                                                         C_Propose_2000 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.C_Propose_18)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfProposal_1982
                                                                   (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3050
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
                                                                               du_getDatum_2112
                                                                               (coe v0) (coe v3)
                                                                               (coe v4) (coe v6))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                               (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                  (coe
                                                                                     du_valContext_2544
                                                                                     (coe v0)
                                                                                     (coe
                                                                                        du_txInfo_2194
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
                                                                               MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_388
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
                                                    MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
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
                                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3178
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194
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
                                                                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
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
                                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3178
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194
                                                                                 (coe v3)))))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                       (let v15
                                                              = MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
                                                                  (coe v3) in
                                                        coe
                                                          (case coe v6 of
                                                             C_Cert_1990 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.C_Cert_12)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfDCert_1972
                                                                       (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3044
                                                                          (coe v15)))
                                                             C_Rwrd_1992 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.C_Rewrd_14)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfRwdAddr_1974
                                                                       (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3046
                                                                          (coe v15)))
                                                             C_Mint_1994 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.C_Mint_10)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfPolicyId_1978
                                                                       (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
                                                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                                                                             (coe v0))
                                                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3040
                                                                             (coe v15))))
                                                             C_Spend_1996 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.C_Spend_8)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfTxIn_1976
                                                                       (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032
                                                                          (coe v15)))
                                                             C_Vote_1998 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.C_Vote_16)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfVote_1980
                                                                       (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                          () erased () erased
                                                                          (\ v17 ->
                                                                             MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_826
                                                                               (coe v17))
                                                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3048
                                                                             (coe v15))))
                                                             C_Propose_2000 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.C_Propose_18)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfProposal_1982
                                                                       (MAlonzo.Code.Ledger.Conway.Abstract.d_indexOfImp_2000
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3050
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
                                                                                   du_getDatum_2112
                                                                                   (coe v0) (coe v3)
                                                                                   (coe v4)
                                                                                   (coe v6))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe v18)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         du_valContext_2544
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            du_txInfo_2194
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
                                                                                   MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_388
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
d_collectPhaseTwoScriptInputs_2626 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_2626 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (d_collectPhaseTwoScriptInputs''_2550
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_scriptsNeeded_2484 (coe v0) (coe v4)
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v3)))
-- Ledger.Conway.ScriptValidation.⟦_⟧,_,_,_
d_'10214'_'10215''44'_'44'_'44'__2634 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_'10214'_'10215''44'_'44'_'44'__2634 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Abstract.d_runPLCScript_2002 v0 v2 v1 v3
      v4
-- Ledger.Conway.ScriptValidation.evalScripts
d_evalScripts_2644 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_2644 v0 v1 v2 v3
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
                                           MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
                                           (MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                                                 (coe v0)))
                                           (MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3068
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
                                                 (coe v2)))
                                           (MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3042
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
                                                 (coe v2)))
                                           v8))
                                     (coe d_evalScripts_2644 (coe v0) (coe v1) (coe v2) (coe v5)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Abstract.d_runPLCScript_2002
                                            v1 v12 v8 v11 v9)
                                         (coe
                                            d_evalScripts_2644 (coe v0) (coe v1) (coe v2) (coe v5))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
