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
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _.CostModel
d_CostModel_42 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CostModel_42 = erased
-- _.T
d_T_50 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_50 = erased
-- _.THash
d_THash_52 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_52 = erased
-- _.Datum
d_Datum_56 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Datum_56 = erased
-- _.Dec-isScript
d_Dec'45'isScript_60 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_60 ~v0 = du_Dec'45'isScript_60
du_Dec'45'isScript_60 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_60
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_202
-- _.ExUnits
d_ExUnits_150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_150 = erased
-- _.GovProposal
d_GovProposal_164 a0 = ()
-- _.THash
d_THash_252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_252 = erased
-- _.Language
d_Language_260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Language_260 = erased
-- _.PlutusScript
d_PlutusScript_288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_288 = erased
-- _.PParams
d_PParams_292 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_318 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_RdmrPtr_318 = erased
-- _.Redeemer
d_Redeemer_320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Redeemer_320 = erased
-- _.RwdAddr
d_RwdAddr_334 a0 = ()
-- _.Script
d_Script_342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_342 = erased
-- _.ScriptHash
d_ScriptHash_350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_350 = erased
-- _.Slot
d_Slot_394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_394 = erased
-- _.Tx
d_Tx_422 a0 = ()
-- _.TxBody
d_TxBody_424 a0 = ()
-- _.TxIn
d_TxIn_430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_430 = erased
-- _.TxOut
d_TxOut_432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_432 = erased
-- _.UTxO
d_UTxO_438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_438 = erased
-- _.Value
d_Value_458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_458 = erased
-- _.Voter
d_Voter_462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_462 = erased
-- _.Wdrl
d_Wdrl_464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_464 = erased
-- _.GovProposal.action
d_action_784 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776
d_action_784 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_844 (coe v0)
-- _.GovProposal.anchor
d_anchor_786 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748
d_anchor_786 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_854 (coe v0)
-- _.GovProposal.deposit
d_deposit_788 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 -> Integer
d_deposit_788 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_850 (coe v0)
-- _.GovProposal.policy
d_policy_790 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  Maybe AgdaAny
d_policy_790 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_848 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_792 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 -> AgdaAny
d_prevAction_792 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_846 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_794 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_794 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_852 (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_842 a0 = ()
-- _.PParams.Emax
d_Emax_1052 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_Emax_1052 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_378 (coe v0)
-- _.PParams.a
d_a_1054 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_a_1054 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v0)
-- _.PParams.a0
d_a0_1056 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1056 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_382 (coe v0)
-- _.PParams.b
d_b_1058 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_b_1058 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMaxTermLength_1060 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1062 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMinSize_1062 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_392 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1064 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_coinsPerUTxOByte_1064 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1066 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_collateralPercentage_1066 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384 (coe v0)
-- _.PParams.costmdls
d_costmdls_1068 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_costmdls_1068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_386 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1070 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_drepActivity_1070 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_402 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1072 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepDeposit_1072 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_400 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1074 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_1074 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_390 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1076 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionDeposit_1076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1078 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionLifetime_1078 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_396 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1080 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_keyDeposit_1080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1082 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxBlockExUnits_1082 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_342 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1084 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxBlockSize_1084 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_334 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1086 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxCollateralInputs_1086 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_346 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1088 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxHeaderSize_1088 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_338 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1090 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_1090 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_370 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1092 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_1092 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1094 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxTxExUnits_1094 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_340 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1096 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxTxSize_1096 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_336 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1098 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxValSize_1098 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_344 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1100 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1100 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_366
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1102 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_minUTxOValue_1102 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_376 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1104 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1104 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_358 (coe v0)
-- _.PParams.nopt
d_nopt_1106 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_nopt_1106 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_380 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1108 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_poolDeposit_1108 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1110 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_1110 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_388 (coe v0)
-- _.PParams.prices
d_prices_1112 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_prices_1112 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v0)
-- _.PParams.pv
d_pv_1114 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1114 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_348 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1116 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1116 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_374 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1118 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_refScriptCostStride_1118 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_372 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1120 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1120 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_360 (coe v0)
-- _.RwdAddr.net
d_net_1318 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_94 -> AgdaAny
d_net_1318 v0 = coe MAlonzo.Code.Ledger.Address.d_net_100 (coe v0)
-- _.RwdAddr.stake
d_stake_1320 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1320 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_102 (coe v0)
-- _.Tx.body
d_body_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988
d_body_1534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v0)
-- _.Tx.isValid
d_isValid_1536 :: MAlonzo.Code.Ledger.Transaction.T_Tx_3180 -> Bool
d_isValid_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_3194 (coe v0)
-- _.Tx.txAD
d_txAD_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 -> Maybe AgdaAny
d_txAD_1538 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_3196 (coe v0)
-- _.Tx.wits
d_wits_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3160
d_wits_1540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_3192 (coe v0)
-- _.TxBody.collateral
d_collateral_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1544 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_3064 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Maybe Integer
d_curTreasury_1546 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_3058 (coe v0)
-- _.TxBody.mint
d_mint_1548 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> AgdaAny
d_mint_1548 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_3038 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1550 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_3032 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> [AgdaAny]
d_reqSigHash_1552 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_3066 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Maybe AgdaAny
d_scriptIntHash_1554 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_3068 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Maybe AgdaAny
d_txADhash_1556 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_3054 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Maybe AgdaAny
d_txNetworkId_1558 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_3056 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_998]
d_txcerts_1560 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_3042 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
d_txdonation_1562 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_3050 (coe v0)
-- _.TxBody.txfee
d_txfee_1564 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
d_txfee_1564 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_3036 (coe v0)
-- _.TxBody.txid
d_txid_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> AgdaAny
d_txid_1566 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_3062 (coe v0)
-- _.TxBody.txins
d_txins_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1568 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_3030 (coe v0)
-- _.TxBody.txouts
d_txouts_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1570 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_3034 (coe v0)
-- _.TxBody.txprop
d_txprop_1572 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830]
d_txprop_1572 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_3048 (coe v0)
-- _.TxBody.txsize
d_txsize_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
d_txsize_1574 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_3060 (coe v0)
-- _.TxBody.txup
d_txup_1576 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1576 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_3052 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1578 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1578 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_3040 (coe v0)
-- _.TxBody.txvote
d_txvote_1580 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812]
d_txvote_1580 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_3046 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1582 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1582 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_3044 (coe v0)
-- Ledger.ScriptValidation._.DCert
d_DCert_1686 a0 a1 = ()
-- Ledger.ScriptValidation.ScriptPurpose
d_ScriptPurpose_1986 a0 a1 = ()
data T_ScriptPurpose_1986
  = C_Cert_1988 MAlonzo.Code.Ledger.Certs.T_DCert_998 |
    C_Rwrd_1990 MAlonzo.Code.Ledger.Address.T_RwdAddr_94 |
    C_Mint_1992 AgdaAny |
    C_Spend_1994 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_1996 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Propose_1998 MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830
-- Ledger.ScriptValidation.rdptr
d_rdptr_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  T_ScriptPurpose_1986 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_2000 v0 v1 v2 v3
  = case coe v3 of
      C_Cert_1988 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Cert_10) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1970
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txcerts_3042 (coe v2)))
      C_Rwrd_1990 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Rewrd_12) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1972
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txwdrls_3044 (coe v2)))
      C_Mint_1992 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Mint_8) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1976
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998 (coe v1)) v4
                (coe
                   MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v0))
                   (MAlonzo.Code.Ledger.Transaction.d_mint_3038 (coe v2))))
      C_Spend_1994 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Spend_6) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1974
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txins_3030 (coe v2)))
      C_Vote_1996 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Vote_14) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1978
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998 (coe v1)) v4
                (coe
                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                   () erased
                   (\ v5 ->
                      MAlonzo.Code.Ledger.GovernanceActions.d_voter_824 (coe v5))
                   (MAlonzo.Code.Ledger.Transaction.d_txvote_3046 (coe v2))))
      C_Propose_1998 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Propose_16) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1980
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txprop_3048 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.indexedRdmrs
d_indexedRdmrs_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  T_ScriptPurpose_1986 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_2076 v0 v1 v2 v3
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
                 MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3176
                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_3192 (coe v2)))
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
                       (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1242 (coe v0))))
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
                             MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3176
                             (coe MAlonzo.Code.Ledger.Transaction.d_wits_3192 (coe v2)))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_2000 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2))
         (coe v3))
-- Ledger.ScriptValidation.getDatum
d_getDatum_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1986 -> [AgdaAny]
d_getDatum_2110 v0 ~v1 v2 v3 v4 = du_getDatum_2110 v0 v2 v3 v4
du_getDatum_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1986 -> [AgdaAny]
du_getDatum_2110 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v3 of
         C_Spend_1994 v5
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_txdats_3174
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_wits_3192
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
                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874
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
                                                                             MAlonzo.Code.Ledger.Transaction.d_txdats_3174
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_wits_3192
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
                            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1244 (coe v0))
                            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1242 (coe v0))))
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
d_TxInfo_2150 a0 a1 = ()
data T_TxInfo_2150
  = C_TxInfo'46'constructor_18403 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  [MAlonzo.Code.Ledger.Certs.T_DCert_998]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.ScriptValidation.TxInfo.realizedInputs
d_realizedInputs_2172 ::
  T_TxInfo_2150 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2172 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txouts
d_txouts_2174 ::
  T_TxInfo_2150 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2174 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.fee
d_fee_2176 :: T_TxInfo_2150 -> AgdaAny
d_fee_2176 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.mint
d_mint_2178 :: T_TxInfo_2150 -> AgdaAny
d_mint_2178 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txcerts
d_txcerts_2180 ::
  T_TxInfo_2150 -> [MAlonzo.Code.Ledger.Certs.T_DCert_998]
d_txcerts_2180 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txwdrls
d_txwdrls_2182 ::
  T_TxInfo_2150 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2182 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txvldt
d_txvldt_2184 ::
  T_TxInfo_2150 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2184 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.vkKey
d_vkKey_2186 :: T_TxInfo_2150 -> [AgdaAny]
d_vkKey_2186 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txdats
d_txdats_2188 ::
  T_TxInfo_2150 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2188 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txid
d_txid_2190 :: T_TxInfo_2150 -> AgdaAny
d_txid_2190 v0
  = case coe v0 of
      C_TxInfo'46'constructor_18403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.txInfo
d_txInfo_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 -> T_TxInfo_2150
d_txInfo_2192 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_2192 v0 v4 v5
du_txInfo_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 -> T_TxInfo_2150
du_txInfo_2192 v0 v1 v2
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1244 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1242 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txins_3030
            (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txouts_3034
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txfee_3036
            (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_mint_3038
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txcerts_3042
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_3044
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txvldt_3040
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_reqSigHash_3066
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txdats_3174
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_3192 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txid_3062
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2)))
-- Ledger.ScriptValidation.DelegateOrDeReg
d_DelegateOrDeReg_2316 a0 a1 a2 = ()
data T_DelegateOrDeReg_2316
  = C_reg_2322 | C_delegate_2332 | C_dereg_2338 | C_regdrep_2346 |
    C_deregdrep_2352
-- Ledger.ScriptValidation.Dec-DelegateOrDeReg
d_Dec'45'DelegateOrDeReg_2354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_998 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'DelegateOrDeReg_2354 ~v0 ~v1 v2
  = du_Dec'45'DelegateOrDeReg_2354 v2
du_Dec'45'DelegateOrDeReg_2354 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_998 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'DelegateOrDeReg_2354 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_1000 v1 v2 v3 v4
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v5 v6 -> coe C_delegate_2332))
         MAlonzo.Code.Ledger.Certs.C_dereg_1002 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_dereg_2338))
         MAlonzo.Code.Ledger.Certs.C_regpool_1004 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Certs.C_retirepool_1006 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Certs.C_regdrep_1008 v1 v2 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v4 v5 -> coe C_regdrep_2346))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_1010 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_deregdrep_2352))
         MAlonzo.Code.Ledger.Certs.C_ccreghot_1012 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Certs.C_reg_1014 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_reg_2322))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.ScriptValidation.UTxOSH
d_UTxOSH_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 -> ()
d_UTxOSH_2378 = erased
-- Ledger.ScriptValidation.scriptOutWithHash
d_scriptOutWithHash_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutWithHash_2380 ~v0 ~v1 ~v2 v3
  = du_scriptOutWithHash_2380 v3
du_scriptOutWithHash_2380 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutWithHash_2380 v0
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
d_scriptOutsWithHash_2390 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutsWithHash_2390 ~v0 ~v1 v2
  = du_scriptOutsWithHash_2390 v2
du_scriptOutsWithHash_2390 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutsWithHash_2390 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1252
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (\ v1 v2 -> coe du_scriptOutWithHash_2380 v2) (coe v0)
-- Ledger.ScriptValidation.spendScripts
d_spendScripts_2394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_spendScripts_2394 v0 ~v1 v2 v3 = du_spendScripts_2394 v0 v2 v3
du_spendScripts_2394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_spendScripts_2394 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__42
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1244 (coe v0))
            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1242 (coe v0)))
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
                 (coe C_Spend_1994 (coe v1))
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
d_rwdScripts_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwdScripts_2402 ~v0 ~v1 v2 = du_rwdScripts_2402 v2
du_rwdScripts_2402 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwdScripts_2402 v0
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
                                  (coe C_Rwrd_1990 (coe v0)) (coe v4))
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.ScriptValidation.certScripts
d_certScripts_2410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_998 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certScripts_2410 ~v0 ~v1 v2 = du_certScripts_2410 v2
du_certScripts_2410 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_998 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certScripts_2410 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Certs.C_delegate_1000 v1 v2 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v5
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1988 (coe v0)) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_dereg_1002 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1988 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_regpool_1004 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Certs.C_retirepool_1006 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Certs.C_regdrep_1008 v1 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v4
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1988 (coe v0)) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_deregdrep_1010 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1988 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_ccreghot_1012 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Certs.C_reg_1014 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1988 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.scriptsNeeded
d_scriptsNeeded_2482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_scriptsNeeded_2482 v0 ~v1 v2 v3 = du_scriptsNeeded_2482 v0 v2 v3
du_scriptsNeeded_2482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_scriptsNeeded_2482 v0 v1 v2
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
              du_spendScripts_2394 (coe v0) (coe v3)
              (coe du_scriptOutsWithHash_2390 (coe v1)))
         (MAlonzo.Code.Ledger.Transaction.d_txins_3030 (coe v2)))
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
            (coe du_rwdScripts_2402)
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
                  (MAlonzo.Code.Ledger.Transaction.d_txwdrls_3044 (coe v2)))))
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
               (coe du_certScripts_2410)
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_428
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_3042 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_398
               (MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe C_Mint_1992 (coe v3)) (coe v3))
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v0))
                  (MAlonzo.Code.Ledger.Transaction.d_mint_3038 (coe v2))))))
-- Ledger.ScriptValidation.valContext
d_valContext_2542 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_TxInfo_2150 -> T_ScriptPurpose_1986 -> AgdaAny
d_valContext_2542 v0 ~v1 v2 v3 = du_valContext_2542 v0 v2 v3
du_valContext_2542 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_TxInfo_2150 -> T_ScriptPurpose_1986 -> AgdaAny
du_valContext_2542 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (MAlonzo.Code.Ledger.Script.d_ps_448
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v0)))
      erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs'
d_collectPhaseTwoScriptInputs''_2548 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_collectPhaseTwoScriptInputs''_2548 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased
                     (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v0)))
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
                              MAlonzo.Code.Ledger.Transaction.du_m_3326 (coe v0) (coe v3)
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
                                                MAlonzo.Code.Ledger.Transaction.du_m_3326 (coe v0)
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
                                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3176
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_wits_3192
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
                                                                    (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1242
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
                                                                          MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3176
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_wits_3192
                                                                             (coe v3)))))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                   (let v14
                                                          = MAlonzo.Code.Ledger.Transaction.d_body_3190
                                                              (coe v3) in
                                                    coe
                                                      (case coe v6 of
                                                         C_Cert_1988 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Cert_10)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1970
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txcerts_3042
                                                                      (coe v14)))
                                                         C_Rwrd_1990 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Rewrd_12)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1972
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txwdrls_3044
                                                                      (coe v14)))
                                                         C_Mint_1992 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Mint_8)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1976
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340
                                                                         (coe v0))
                                                                      (MAlonzo.Code.Ledger.Transaction.d_mint_3038
                                                                         (coe v14))))
                                                         C_Spend_1994 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Spend_6)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1974
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txins_3030
                                                                      (coe v14)))
                                                         C_Vote_1996 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Vote_14)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1978
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                      () erased () erased
                                                                      (\ v16 ->
                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_voter_824
                                                                           (coe v16))
                                                                      (MAlonzo.Code.Ledger.Transaction.d_txvote_3046
                                                                         (coe v14))))
                                                         C_Propose_1998 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Propose_16)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1980
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txprop_3048
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
                                                                               du_getDatum_2110
                                                                               (coe v0) (coe v3)
                                                                               (coe v4) (coe v6))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                               (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                  (coe
                                                                                     du_valContext_2542
                                                                                     (coe v0)
                                                                                     (coe
                                                                                        du_txInfo_2192
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
                                                    MAlonzo.Code.Ledger.Transaction.du_m_3326
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
                                                                  MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3176
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_wits_3192
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
                                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1242
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
                                                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3176
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_wits_3192
                                                                                 (coe v3)))))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                       (let v15
                                                              = MAlonzo.Code.Ledger.Transaction.d_body_3190
                                                                  (coe v3) in
                                                        coe
                                                          (case coe v6 of
                                                             C_Cert_1988 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Cert_10)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1970
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txcerts_3042
                                                                          (coe v15)))
                                                             C_Rwrd_1990 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Rewrd_12)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1972
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txwdrls_3044
                                                                          (coe v15)))
                                                             C_Mint_1992 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Mint_8)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1976
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340
                                                                             (coe v0))
                                                                          (MAlonzo.Code.Ledger.Transaction.d_mint_3038
                                                                             (coe v15))))
                                                             C_Spend_1994 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Spend_6)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1974
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txins_3030
                                                                          (coe v15)))
                                                             C_Vote_1996 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Vote_14)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1978
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                          () erased () erased
                                                                          (\ v17 ->
                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_voter_824
                                                                               (coe v17))
                                                                          (MAlonzo.Code.Ledger.Transaction.d_txvote_3046
                                                                             (coe v15))))
                                                             C_Propose_1998 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Propose_16)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1980
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txprop_3048
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
                                                                                   du_getDatum_2110
                                                                                   (coe v0) (coe v3)
                                                                                   (coe v4)
                                                                                   (coe v6))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe v18)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         du_valContext_2542
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            du_txInfo_2192
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
d_collectPhaseTwoScriptInputs_2624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_2624 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (d_collectPhaseTwoScriptInputs''_2548
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_scriptsNeeded_2482 (coe v0) (coe v4)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v3)))
-- Ledger.ScriptValidation.⟦_⟧,_,_,_
d_'10214'_'10215''44'_'44'_'44'__2632 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_'10214'_'10215''44'_'44'_'44'__2632 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Abstract.d_runPLCScript_2000 v0 v2 v1 v3 v4
-- Ledger.ScriptValidation.evalScripts
d_evalScripts_2642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_2642 v0 v1 v2 v3
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
                                                 MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874
                                                 (coe v0)))
                                           (MAlonzo.Code.Ledger.Transaction.d_reqSigHash_3066
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_3190
                                                 (coe v2)))
                                           (MAlonzo.Code.Ledger.Transaction.d_txvldt_3040
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_3190
                                                 (coe v2)))
                                           v8))
                                     (coe d_evalScripts_2642 (coe v0) (coe v1) (coe v2) (coe v5)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                         (coe
                                            MAlonzo.Code.Ledger.Abstract.d_runPLCScript_2000 v1 v12
                                            v8 v11 v9)
                                         (coe
                                            d_evalScripts_2642 (coe v0) (coe v1) (coe v2) (coe v5))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
