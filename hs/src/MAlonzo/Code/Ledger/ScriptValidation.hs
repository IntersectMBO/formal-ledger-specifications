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

module MAlonzo.Code.Ledger.ScriptValidation where

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
import qualified MAlonzo.Code.Class.HasCast.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.CostModel
d_CostModel_40 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CostModel_40 = erased
-- _.T
d_T_48 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_48 = erased
-- _.THash
d_THash_50 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_50 = erased
-- _.Datum
d_Datum_54 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Datum_54 = erased
-- _.Dec-isScript
d_Dec'45'isScript_58 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_58 ~v0 = du_Dec'45'isScript_58
du_Dec'45'isScript_58 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_58
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_202
-- _.ExUnits
d_ExUnits_148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_148 = erased
-- _.GovProposal
d_GovProposal_162 a0 = ()
-- _.THash
d_THash_248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_248 = erased
-- _.Language
d_Language_256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Language_256 = erased
-- _.PlutusScript
d_PlutusScript_282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_282 = erased
-- _.PParams
d_PParams_286 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_RdmrPtr_312 = erased
-- _.Redeemer
d_Redeemer_314 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Redeemer_314 = erased
-- _.RwdAddr
d_RwdAddr_328 a0 = ()
-- _.Script
d_Script_336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_336 = erased
-- _.ScriptHash
d_ScriptHash_344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_344 = erased
-- _.Slot
d_Slot_388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_388 = erased
-- _.Tx
d_Tx_416 a0 = ()
-- _.TxBody
d_TxBody_418 a0 = ()
-- _.TxIn
d_TxIn_424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_424 = erased
-- _.TxOut
d_TxOut_426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_426 = erased
-- _.UTxO
d_UTxO_432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_432 = erased
-- _.Value
d_Value_452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_452 = erased
-- _.Voter
d_Voter_456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_456 = erased
-- _.Wdrl
d_Wdrl_458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_458 = erased
-- _.GovProposal.action
d_action_778 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_772
d_action_778 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_836 (coe v0)
-- _.GovProposal.anchor
d_anchor_780 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_744
d_anchor_780 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_846 (coe v0)
-- _.GovProposal.deposit
d_deposit_782 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 -> Integer
d_deposit_782 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_842 (coe v0)
-- _.GovProposal.policy
d_policy_784 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
  Maybe AgdaAny
d_policy_784 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_840 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_786 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 -> AgdaAny
d_prevAction_786 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_838 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_788 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_788 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_844 (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_836 a0 = ()
-- _.PParams.Emax
d_Emax_1044 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_Emax_1044 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_378 (coe v0)
-- _.PParams.a
d_a_1046 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_a_1046 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v0)
-- _.PParams.a0
d_a0_1048 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1048 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_382 (coe v0)
-- _.PParams.b
d_b_1050 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_b_1050 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1052 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMaxTermLength_1052 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1054 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMinSize_1054 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_392 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1056 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_coinsPerUTxOByte_1056 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1058 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_collateralPercentage_1058 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384 (coe v0)
-- _.PParams.costmdls
d_costmdls_1060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_costmdls_1060 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_386 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1062 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_drepActivity_1062 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_402 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1064 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepDeposit_1064 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_400 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1066 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_1066 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_390 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1068 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionDeposit_1068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1070 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionLifetime_1070 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_396 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1072 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_keyDeposit_1072 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1074 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxBlockExUnits_1074 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_342 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1076 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxBlockSize_1076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_334 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1078 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxCollateralInputs_1078 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_346 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1080 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxHeaderSize_1080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_338 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1082 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_1082 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_370 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1084 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_1084 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1086 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxTxExUnits_1086 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_340 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1088 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxTxSize_1088 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_336 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1090 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxValSize_1090 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_344 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1092 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1092 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_366
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1094 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_minUTxOValue_1094 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_376 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1096 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1096 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_358 (coe v0)
-- _.PParams.nopt
d_nopt_1098 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_nopt_1098 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_380 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1100 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_poolDeposit_1100 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1102 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_1102 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_388 (coe v0)
-- _.PParams.prices
d_prices_1104 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_prices_1104 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v0)
-- _.PParams.pv
d_pv_1106 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1106 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_348 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1108 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1108 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_374 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1110 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_refScriptCostStride_1110 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_372 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1112 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1112 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_360 (coe v0)
-- _.RwdAddr.net
d_net_1310 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_94 -> AgdaAny
d_net_1310 v0 = coe MAlonzo.Code.Ledger.Address.d_net_100 (coe v0)
-- _.RwdAddr.stake
d_stake_1312 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1312 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_102 (coe v0)
-- _.Tx.body
d_body_1526 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
d_body_1526 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v0)
-- _.Tx.isValid
d_isValid_1528 :: MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> Bool
d_isValid_1528 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_3184 (coe v0)
-- _.Tx.txAD
d_txAD_1530 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> Maybe AgdaAny
d_txAD_1530 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_3186 (coe v0)
-- _.Tx.wits
d_wits_1532 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3150
d_wits_1532 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v0)
-- _.TxBody.collateral
d_collateral_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_3054 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Maybe Integer
d_curTreasury_1538 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_3048 (coe v0)
-- _.TxBody.mint
d_mint_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> AgdaAny
d_mint_1540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_3028 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1542 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1542 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_3022 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> [AgdaAny]
d_reqSigHash_1544 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_3056 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Maybe AgdaAny
d_scriptIntHash_1546 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_3058 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1548 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Maybe AgdaAny
d_txADhash_1548 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_3044 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Maybe AgdaAny
d_txNetworkId_1550 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_3046 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_992]
d_txcerts_1552 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_3032 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
d_txdonation_1554 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_3040 (coe v0)
-- _.TxBody.txfee
d_txfee_1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
d_txfee_1556 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_3026 (coe v0)
-- _.TxBody.txid
d_txid_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> AgdaAny
d_txid_1558 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_3052 (coe v0)
-- _.TxBody.txins
d_txins_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1560 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_3020 (coe v0)
-- _.TxBody.txouts
d_txouts_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1562 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_3024 (coe v0)
-- _.TxBody.txprop
d_txprop_1564 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822]
d_txprop_1564 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_3038 (coe v0)
-- _.TxBody.txsize
d_txsize_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
d_txsize_1566 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_3050 (coe v0)
-- _.TxBody.txup
d_txup_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1568 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_3042 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1570 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_3030 (coe v0)
-- _.TxBody.txvote
d_txvote_1572 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_804]
d_txvote_1572 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_3036 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1574 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034 (coe v0)
-- Ledger.ScriptValidation._.DCert
d_DCert_1678 a0 a1 = ()
-- Ledger.ScriptValidation.ScriptPurpose
d_ScriptPurpose_1978 a0 a1 = ()
data T_ScriptPurpose_1978
  = C_Cert_1980 MAlonzo.Code.Ledger.Certs.T_DCert_992 |
    C_Rwrd_1982 MAlonzo.Code.Ledger.Address.T_RwdAddr_94 |
    C_Mint_1984 AgdaAny |
    C_Spend_1986 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_1988 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Propose_1990 MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822
-- Ledger.ScriptValidation.rdptr
d_rdptr_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  T_ScriptPurpose_1978 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_1992 v0 v1 v2 v3
  = case coe v3 of
      C_Cert_1980 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Cert_10) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1962
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txcerts_3032 (coe v2)))
      C_Rwrd_1982 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Rewrd_12) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1964
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034 (coe v2)))
      C_Mint_1984 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Mint_8) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1968
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990 (coe v1)) v4
                (coe
                   MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
                   (MAlonzo.Code.Ledger.Transaction.d_mint_3028 (coe v2))))
      C_Spend_1986 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Spend_6) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1966
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txins_3020 (coe v2)))
      C_Vote_1988 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Vote_14) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1970
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990 (coe v1)) v4
                (coe
                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                   () erased
                   (\ v5 ->
                      MAlonzo.Code.Ledger.GovernanceActions.d_voter_816 (coe v5))
                   (MAlonzo.Code.Ledger.Transaction.d_txvote_3036 (coe v2))))
      C_Propose_1990 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Propose_16) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1972
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txprop_3038 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.indexedRdmrs
d_indexedRdmrs_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  T_ScriptPurpose_1978 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_2068 v0 v1 v2 v3
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
                 MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3166
                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v2)))
              (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                       (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0))))
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
                             MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3166
                             (coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v2)))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_1992 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2))
         (coe v3))
-- Ledger.ScriptValidation.getDatum
d_getDatum_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1978 -> [AgdaAny]
d_getDatum_2102 v0 ~v1 v2 v3 v4 = du_getDatum_2102 v0 v2 v3 v4
du_getDatum_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1978 -> [AgdaAny]
du_getDatum_2102 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v3 of
         C_Spend_1986 v5
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_txdats_3164
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_wits_3182
                                                                    (coe v1)))
                                                              (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                    erased
                                                                    (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
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
                                                                             MAlonzo.Code.Ledger.Transaction.d_txdats_3164
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_wits_3182
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
                            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
                            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0))))
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
-- Ledger.ScriptValidation.TxInfo
d_TxInfo_2142 a0 a1 = ()
data T_TxInfo_2142
  = C_TxInfo'46'constructor_18363 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  [MAlonzo.Code.Ledger.Certs.T_DCert_992]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.ScriptValidation.TxInfo.realizedInputs
d_realizedInputs_2164 ::
  T_TxInfo_2142 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2164 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18363 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txouts
d_txouts_2166 ::
  T_TxInfo_2142 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2166 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18363 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.fee
d_fee_2168 :: T_TxInfo_2142 -> AgdaAny
d_fee_2168 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18363 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.mint
d_mint_2170 :: T_TxInfo_2142 -> AgdaAny
d_mint_2170 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18363 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txcerts
d_txcerts_2172 ::
  T_TxInfo_2142 -> [MAlonzo.Code.Ledger.Certs.T_DCert_992]
d_txcerts_2172 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18363 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txwdrls
d_txwdrls_2174 ::
  T_TxInfo_2142 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2174 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18363 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txvldt
d_txvldt_2176 ::
  T_TxInfo_2142 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2176 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18363 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.vkKey
d_vkKey_2178 :: T_TxInfo_2142 -> [AgdaAny]
d_vkKey_2178 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18363 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txdats
d_txdats_2180 ::
  T_TxInfo_2142 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2180 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18363 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txid
d_txid_2182 :: T_TxInfo_2142 -> AgdaAny
d_txid_2182 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18363 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.txInfo
d_txInfo_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> T_TxInfo_2142
d_txInfo_2184 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_2184 v0 v4 v5
du_txInfo_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> T_TxInfo_2142
du_txInfo_2184 v0 v1 v2
  = coe
      C_TxInfo'46'constructor_18363
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txins_3020
            (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txouts_3024
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txfee_3026
            (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_mint_3028
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txcerts_3032
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txvldt_3030
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_reqSigHash_3056
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txdats_3164
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txid_3052
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2)))
-- Ledger.ScriptValidation.DelegateOrDeReg
d_DelegateOrDeReg_2308 a0 a1 a2 = ()
data T_DelegateOrDeReg_2308
  = C_reg_2314 | C_delegate_2324 | C_dereg_2330 | C_regdrep_2338 |
    C_deregdrep_2344
-- Ledger.ScriptValidation.Dec-DelegateOrDeReg
d_Dec'45'DelegateOrDeReg_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_992 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'DelegateOrDeReg_2346 ~v0 ~v1 v2
  = du_Dec'45'DelegateOrDeReg_2346 v2
du_Dec'45'DelegateOrDeReg_2346 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_992 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'DelegateOrDeReg_2346 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_994 v1 v2 v3 v4
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v5 v6 -> coe C_delegate_2324))
         MAlonzo.Code.Ledger.Certs.C_dereg_996 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_dereg_2330))
         MAlonzo.Code.Ledger.Certs.C_regpool_998 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Certs.C_retirepool_1000 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Certs.C_regdrep_1002 v1 v2 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v4 v5 -> coe C_regdrep_2338))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_1004 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_deregdrep_2344))
         MAlonzo.Code.Ledger.Certs.C_ccreghot_1006 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Certs.C_reg_1008 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_reg_2314))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.ScriptValidation.UTxOSH
d_UTxOSH_2370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 -> ()
d_UTxOSH_2370 = erased
-- Ledger.ScriptValidation.scriptOutWithHash
d_scriptOutWithHash_2372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutWithHash_2372 ~v0 ~v1 ~v2 v3
  = du_scriptOutWithHash_2372 v3
du_scriptOutWithHash_2372 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutWithHash_2372 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Class.ToBool.du_if_then_else__42
             (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
             (coe
                MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_202
                (coe MAlonzo.Code.Ledger.Address.du_payCred_152 (coe v1)))
             (coe
                (\ v3 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Address.du_getScriptHash_228 (coe v1)
                           (coe v3)))))
             (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.scriptOutsWithHash
d_scriptOutsWithHash_2382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutsWithHash_2382 ~v0 ~v1 v2
  = du_scriptOutsWithHash_2382 v2
du_scriptOutsWithHash_2382 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutsWithHash_2382 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1252
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (\ v1 v2 -> coe du_scriptOutWithHash_2372 v2) (coe v0)
-- Ledger.ScriptValidation.spendScripts
d_spendScripts_2386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_spendScripts_2386 v0 ~v1 v2 v3 = du_spendScripts_2386 v0 v2 v3
du_spendScripts_2386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_spendScripts_2386 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__42
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0)))
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
                 (coe C_Spend_1986 (coe v1))
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
-- Ledger.ScriptValidation.rwdScripts
d_rwdScripts_2394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwdScripts_2394 ~v0 ~v1 v2 = du_rwdScripts_2394 v2
du_rwdScripts_2394 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwdScripts_2394 v0
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__42
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
      (coe
         MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_202
         (coe MAlonzo.Code.Ledger.Address.d_stake_102 (coe v0)))
      (coe
         (\ v1 ->
            seq
              (coe v1)
              (case coe v0 of
                 MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3453 v2 v3
                   -> case coe v3 of
                        MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v4
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe C_Rwrd_1982 (coe v0)) (coe v4))
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.ScriptValidation.certScripts
d_certScripts_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_992 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certScripts_2402 ~v0 ~v1 v2 = du_certScripts_2402 v2
du_certScripts_2402 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_992 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certScripts_2402 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Certs.C_delegate_994 v1 v2 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v5
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1980 (coe v0)) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_dereg_996 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1980 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_regpool_998 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Certs.C_retirepool_1000 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Certs.C_regdrep_1002 v1 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v4
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1980 (coe v0)) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_deregdrep_1004 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1980 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_ccreghot_1006 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Certs.C_reg_1008 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1980 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.scriptsNeeded
d_scriptsNeeded_2474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_scriptsNeeded_2474 v0 ~v1 v2 v3 = du_scriptsNeeded_2474 v0 v2 v3
du_scriptsNeeded_2474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_scriptsNeeded_2474 v0 v1 v2
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
              du_spendScripts_2386 (coe v0) (coe v3)
              (coe du_scriptOutsWithHash_2382 (coe v1)))
         (MAlonzo.Code.Ledger.Transaction.d_txins_3020 (coe v2)))
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
            (coe du_rwdScripts_2394)
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
                     MAlonzo.Code.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_10)
                  (MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034 (coe v2)))))
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
               (coe du_certScripts_2402)
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_428
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_3032 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_398
               (MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe C_Mint_1984 (coe v3)) (coe v3))
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
                  (MAlonzo.Code.Ledger.Transaction.d_mint_3028 (coe v2))))))
-- Ledger.ScriptValidation.valContext
d_valContext_2534 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_TxInfo_2142 -> T_ScriptPurpose_1978 -> AgdaAny
d_valContext_2534 v0 ~v1 v2 v3 = du_valContext_2534 v0 v2 v3
du_valContext_2534 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_TxInfo_2142 -> T_ScriptPurpose_1978 -> AgdaAny
du_valContext_2534 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (MAlonzo.Code.Ledger.Script.d_ps_448
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866 (coe v0)))
      erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs'
d_collectPhaseTwoScriptInputs''_2540 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_collectPhaseTwoScriptInputs''_2540 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased
                     (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))
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
                              MAlonzo.Code.Ledger.Transaction.du_m_3316 (coe v0) (coe v3)
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
                                                MAlonzo.Code.Ledger.Transaction.du_m_3316 (coe v0)
                                                (coe v3) (coe v4))
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
                                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3166
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_wits_3182
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
                                                                    MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                                                                    (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238
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
                                                                          MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3166
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_wits_3182
                                                                             (coe v3)))))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                   (let v14
                                                          = MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                              (coe v3) in
                                                    coe
                                                      (case coe v6 of
                                                         C_Cert_1980 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Cert_10)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1962
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txcerts_3032
                                                                      (coe v14)))
                                                         C_Rwrd_1982 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Rewrd_12)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1964
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034
                                                                      (coe v14)))
                                                         C_Mint_1984 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Mint_8)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1968
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332
                                                                         (coe v0))
                                                                      (MAlonzo.Code.Ledger.Transaction.d_mint_3028
                                                                         (coe v14))))
                                                         C_Spend_1986 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Spend_6)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1966
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txins_3020
                                                                      (coe v14)))
                                                         C_Vote_1988 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Vote_14)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1970
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                      () erased () erased
                                                                      (\ v16 ->
                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_voter_816
                                                                           (coe v16))
                                                                      (MAlonzo.Code.Ledger.Transaction.d_txvote_3036
                                                                         (coe v14))))
                                                         C_Propose_1990 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Propose_16)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1972
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txprop_3038
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
                                                                               du_getDatum_2102
                                                                               (coe v0) (coe v3)
                                                                               (coe v4) (coe v6))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                               (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                  (coe
                                                                                     du_valContext_2534
                                                                                     (coe v0)
                                                                                     (coe
                                                                                        du_txInfo_2184
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
                                                                               MAlonzo.Code.Ledger.PParams.d_costmdls_386
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
                                                    MAlonzo.Code.Ledger.Transaction.du_m_3316
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
                                                                  MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3166
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_wits_3182
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
                                                                        MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238
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
                                                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3166
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_wits_3182
                                                                                 (coe v3)))))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                       (let v15
                                                              = MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                                  (coe v3) in
                                                        coe
                                                          (case coe v6 of
                                                             C_Cert_1980 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Cert_10)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1962
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txcerts_3032
                                                                          (coe v15)))
                                                             C_Rwrd_1982 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Rewrd_12)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1964
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034
                                                                          (coe v15)))
                                                             C_Mint_1984 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Mint_8)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1968
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332
                                                                             (coe v0))
                                                                          (MAlonzo.Code.Ledger.Transaction.d_mint_3028
                                                                             (coe v15))))
                                                             C_Spend_1986 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Spend_6)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1966
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txins_3020
                                                                          (coe v15)))
                                                             C_Vote_1988 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Vote_14)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1970
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                          () erased () erased
                                                                          (\ v17 ->
                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_voter_816
                                                                               (coe v17))
                                                                          (MAlonzo.Code.Ledger.Transaction.d_txvote_3036
                                                                             (coe v15))))
                                                             C_Propose_1990 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Propose_16)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1972
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1990
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txprop_3038
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
                                                                                   du_getDatum_2102
                                                                                   (coe v0) (coe v3)
                                                                                   (coe v4)
                                                                                   (coe v6))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe v18)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         du_valContext_2534
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            du_txInfo_2184
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
                                                                                   MAlonzo.Code.Ledger.PParams.d_costmdls_386
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
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_2616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_2616 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (d_collectPhaseTwoScriptInputs''_2540
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_scriptsNeeded_2474 (coe v0) (coe v4)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v3)))
-- Ledger.ScriptValidation.⟦_⟧,_,_,_
d_'10214'_'10215''44'_'44'_'44'__2624 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_'10214'_'10215''44'_'44'_'44'__2624 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1992 v0 v2 v1 v3 v4
-- Ledger.ScriptValidation.evalScripts
d_evalScripts_2634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_2634 v0 v1 v2 v3
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
                                           MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                                           (MAlonzo.Code.Ledger.Script.d_p1s_426
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                                 (coe v0)))
                                           (MAlonzo.Code.Ledger.Transaction.d_reqSigHash_3056
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                 (coe v2)))
                                           (MAlonzo.Code.Ledger.Transaction.d_txvldt_3030
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                 (coe v2)))
                                           v8))
                                     (coe d_evalScripts_2634 (coe v0) (coe v1) (coe v2) (coe v5)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                         (coe
                                            MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1992 v1 v12
                                            v8 v11 v9)
                                         (coe
                                            d_evalScripts_2634 (coe v0) (coe v1) (coe v2) (coe v5))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
