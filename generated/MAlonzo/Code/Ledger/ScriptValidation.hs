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
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.CostModel
d_CostModel_66 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CostModel_66 = erased
-- _.DCert
d_DCert_72 a0 = ()
-- _.T
d_T_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_86 = erased
-- _.THash
d_THash_88 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_88 = erased
-- _.Datum
d_Datum_92 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Datum_92 = erased
-- _.Dec-isScript
d_Dec'45'isScript_96 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_96 ~v0 = du_Dec'45'isScript_96
du_Dec'45'isScript_96 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_96
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- _.ExUnits
d_ExUnits_198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_198 = erased
-- _.GovProposal
d_GovProposal_222 a0 = ()
-- _.THash
d_THash_256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_256 = erased
-- _.Language
d_Language_264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Language_264 = erased
-- _.PlutusScript
d_PlutusScript_290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_290 = erased
-- _.PParams
d_PParams_300 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_RdmrPtr_332 = erased
-- _.Redeemer
d_Redeemer_334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Redeemer_334 = erased
-- _.RwdAddr
d_RwdAddr_348 a0 = ()
-- _.Script
d_Script_356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_356 = erased
-- _.ScriptHash
d_ScriptHash_364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_364 = erased
-- _.Slot
d_Slot_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_412 = erased
-- _.Tx
d_Tx_442 a0 = ()
-- _.TxBody
d_TxBody_444 a0 = ()
-- _.TxIn
d_TxIn_448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_448 = erased
-- _.TxOut
d_TxOut_450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_450 = erased
-- _.UTxO
d_UTxO_456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_456 = erased
-- _.Value
d_Value_474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_474 = erased
-- _.Voter
d_Voter_480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_480 = erased
-- _.Wdrl
d_Wdrl_482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_482 = erased
-- _.evalTimelock
d_evalTimelock_540 a0 a1 a2 a3 = ()
-- _.GovProposal.action
d_action_936 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_936 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_766 (coe v0)
-- _.GovProposal.anchor
d_anchor_938 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_938 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_776 (coe v0)
-- _.GovProposal.deposit
d_deposit_940 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 -> Integer
d_deposit_940 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_772 (coe v0)
-- _.GovProposal.policy
d_policy_942 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  Maybe AgdaAny
d_policy_942 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_770 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_944 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 -> AgdaAny
d_prevAction_944 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_768 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_946 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_946 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_774 (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_988 a0 = ()
-- _.PParams.Emax
d_Emax_1146 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_1146 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_334 (coe v0)
-- _.PParams.a
d_a_1148 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_1148 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_318 (coe v0)
-- _.PParams.a0
d_a0_1150 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1150 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_338 (coe v0)
-- _.PParams.b
d_b_1152 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_1152 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_320 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1154 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_1154 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_350 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1156 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_1156 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_348 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1158 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_1158 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_326 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1160 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_1160 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_340 (coe v0)
-- _.PParams.costmdls
d_costmdls_1162 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_1162 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_342 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1164 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_1164 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_358 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1166 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_1166 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_356 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1168 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_1168 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1170 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_1170 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1172 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_1172 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_352 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1174 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_1174 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_322 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1176 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_1176 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_310 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1178 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_1178 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_302 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1180 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_1180 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_314 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1182 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_1182 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_306 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1184 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_1184 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_308 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1186 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_1186 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_304 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1188 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_1188 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_312 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1190 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1190 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_330
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1192 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_1192 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_332 (coe v0)
-- _.PParams.nopt
d_nopt_1194 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_1194 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_336 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1196 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_1196 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_324 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1198 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_1198 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v0)
-- _.PParams.prices
d_prices_1200 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_1200 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_328 (coe v0)
-- _.PParams.pv
d_pv_1202 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1202 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_316 (coe v0)
-- _.RwdAddr.net
d_net_1396 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1396 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_1398 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1398 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- _.Tx.body
d_body_1618 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768
d_body_1618 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v0)
-- _.Tx.isValid
d_isValid_1620 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Bool
d_isValid_1620 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2884 (coe v0)
-- _.Tx.txAD
d_txAD_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Maybe AgdaAny
d_txAD_1622 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2886 (coe v0)
-- _.Tx.wits
d_wits_1624 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2850
d_wits_1624 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2882 (coe v0)
-- _.TxBody.collateral
d_collateral_1628 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1628 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2844 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1630 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Maybe Integer
d_curTreasury_1630 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2838 (coe v0)
-- _.TxBody.mint
d_mint_1632 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> AgdaAny
d_mint_1632 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2818 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1634 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2812 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> [AgdaAny]
d_reqSigHash_1636 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2846 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Maybe AgdaAny
d_scriptIntHash_1638 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2848 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Maybe AgdaAny
d_txADhash_1640 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2834 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Maybe AgdaAny
d_txNetworkId_1642 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2836 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_1644 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2822 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1646 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
d_txdonation_1646 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2830 (coe v0)
-- _.TxBody.txfee
d_txfee_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
d_txfee_1648 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2816 (coe v0)
-- _.TxBody.txid
d_txid_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> AgdaAny
d_txid_1650 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2842 (coe v0)
-- _.TxBody.txins
d_txins_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1652 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2810 (coe v0)
-- _.TxBody.txouts
d_txouts_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1654 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2814 (coe v0)
-- _.TxBody.txprop
d_txprop_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752]
d_txprop_1656 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2828 (coe v0)
-- _.TxBody.txsize
d_txsize_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
d_txsize_1658 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2840 (coe v0)
-- _.TxBody.txup
d_txup_1660 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1660 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2832 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1662 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2820 (coe v0)
-- _.TxBody.txvote
d_txvote_1664 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_txvote_1664 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2826 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1666 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1666 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2824 (coe v0)
-- Ledger.ScriptValidation.ScriptPurpose
d_ScriptPurpose_1742 a0 a1 = ()
data T_ScriptPurpose_1742
  = C_Cert_1744 MAlonzo.Code.Ledger.Certs.T_DCert_832 |
    C_Rwrd_1746 MAlonzo.Code.Ledger.Address.T_RwdAddr_76 |
    C_Mint_1748 AgdaAny |
    C_Spend_1750 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_1752 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Propose_1754 MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752
-- Ledger.ScriptValidation.rdptr
d_rdptr_1756 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  T_ScriptPurpose_1742 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_1756 v0 v1 v2 v3
  = case coe v3 of
      C_Cert_1744 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Cert_10) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1726
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txcerts_2822 (coe v2)))
      C_Rwrd_1746 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Rewrd_12) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1728
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txwdrls_2824 (coe v2)))
      C_Mint_1748 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Mint_8) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1732
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754 (coe v1)) v4
                (coe
                   MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
                   (MAlonzo.Code.Ledger.Transaction.d_mint_2818 (coe v2))))
      C_Spend_1750 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Spend_6) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1730
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txins_2810 (coe v2)))
      C_Vote_1752 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Vote_14) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1734
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754 (coe v1)) v4
                (coe
                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                   () erased
                   (\ v5 ->
                      MAlonzo.Code.Ledger.GovernanceActions.d_voter_746 (coe v5))
                   (MAlonzo.Code.Ledger.Transaction.d_txvote_2826 (coe v2))))
      C_Propose_1754 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Propose_16) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1736
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txprop_2828 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.indexedRdmrs
d_indexedRdmrs_1832 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  T_ScriptPurpose_1742 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_1832 v0 v1 v2 v3
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
                 MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2866
                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2882 (coe v2)))
              (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                       (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200 (coe v0))))
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
                             MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2866
                             (coe MAlonzo.Code.Ledger.Transaction.d_wits_2882 (coe v2)))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_1756 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2))
         (coe v3))
-- Ledger.ScriptValidation.getDatum
d_getDatum_1866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1742 -> [AgdaAny]
d_getDatum_1866 v0 ~v1 v2 v3 v4 = du_getDatum_1866 v0 v2 v3 v4
du_getDatum_1866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1742 -> [AgdaAny]
du_getDatum_1866 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v3 of
         C_Spend_1750 v5
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2864
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_wits_2882
                                                                    (coe v1)))
                                                              (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased
                                                                    (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Script.d_ps_470
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824
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
                                                                             MAlonzo.Code.Ledger.Transaction.d_txdats_2864
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_wits_2882
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
                            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200 (coe v0))))
                      (coe v5)
                      (let v6
                             = MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v6
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v2))))))
         _ -> coe v4)
-- Ledger.ScriptValidation.TxInfo
d_TxInfo_1906 a0 a1 = ()
data T_TxInfo_1906
  = C_TxInfo'46'constructor_16383 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.ScriptValidation.TxInfo.realizedInputs
d_realizedInputs_1928 ::
  T_TxInfo_1906 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_1928 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16383 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txouts
d_txouts_1930 ::
  T_TxInfo_1906 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1930 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16383 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.fee
d_fee_1932 :: T_TxInfo_1906 -> AgdaAny
d_fee_1932 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16383 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.mint
d_mint_1934 :: T_TxInfo_1906 -> AgdaAny
d_mint_1934 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16383 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txcerts
d_txcerts_1936 ::
  T_TxInfo_1906 -> [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_1936 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16383 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txwdrls
d_txwdrls_1938 ::
  T_TxInfo_1906 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1938 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16383 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txvldt
d_txvldt_1940 ::
  T_TxInfo_1906 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1940 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16383 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.vkKey
d_vkKey_1942 :: T_TxInfo_1906 -> [AgdaAny]
d_vkKey_1942 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16383 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txdats
d_txdats_1944 ::
  T_TxInfo_1906 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_1944 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16383 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txid
d_txid_1946 :: T_TxInfo_1906 -> AgdaAny
d_txid_1946 v0
  = case coe v0 of
      C_TxInfo'46'constructor_16383 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.txInfo
d_txInfo_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> T_TxInfo_1906
d_txInfo_1948 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_1948 v0 v4 v5
du_txInfo_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> T_TxInfo_1906
du_txInfo_1948 v0 v1 v2
  = coe
      C_TxInfo'46'constructor_16383
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txins_2810
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txouts_2814
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txfee_2816
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_mint_2818
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txcerts_2822
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2824
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txvldt_2820
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2846
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txdats_2864
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2882 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txid_2842
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2)))
-- Ledger.ScriptValidation.DelegateOrDeReg
d_DelegateOrDeReg_2072 a0 a1 a2 = ()
data T_DelegateOrDeReg_2072
  = C_delegate_2082 | C_dereg_2088 | C_regdrep_2096 |
    C_deregdrep_2102
-- Ledger.ScriptValidation.Dec-DelegateOrDeReg
d_Dec'45'DelegateOrDeReg_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'DelegateOrDeReg_2104 ~v0 ~v1 v2
  = du_Dec'45'DelegateOrDeReg_2104 v2
du_Dec'45'DelegateOrDeReg_2104 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'DelegateOrDeReg_2104 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_834 v1 v2 v3 v4
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v5 v6 -> coe C_delegate_2082))
         MAlonzo.Code.Ledger.Certs.C_dereg_836 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_dereg_2088))
         MAlonzo.Code.Ledger.Certs.C_regpool_838 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Certs.C_retirepool_840 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Certs.C_regdrep_842 v1 v2 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v4 v5 -> coe C_regdrep_2096))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_844 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_deregdrep_2102))
         MAlonzo.Code.Ledger.Certs.C_ccreghot_846 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.ScriptValidation.UTxOSH
d_UTxOSH_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 -> ()
d_UTxOSH_2126 = erased
-- Ledger.ScriptValidation.scriptOutWithHash
d_scriptOutWithHash_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutWithHash_2128 ~v0 ~v1 ~v2 v3
  = du_scriptOutWithHash_2128 v3
du_scriptOutWithHash_2128 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutWithHash_2128 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Interface.ToBool.du_if_then_else__46
             (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
             (coe
                MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
                (coe MAlonzo.Code.Ledger.Address.du_payCred_108 (coe v1)))
             (coe
                (\ v3 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Address.du_getScriptHash_184 (coe v1)
                           (coe v3)))))
             (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.scriptOutsWithHash
d_scriptOutsWithHash_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutsWithHash_2138 ~v0 ~v1 v2
  = du_scriptOutsWithHash_2138 v2
du_scriptOutsWithHash_2138 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutsWithHash_2138 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1168
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (\ v1 v2 -> coe du_scriptOutWithHash_2128 v2) (coe v0)
-- Ledger.ScriptValidation.spendScripts
d_spendScripts_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_spendScripts_2142 v0 ~v1 v2 v3 = du_spendScripts_2142 v0 v2 v3
du_spendScripts_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_spendScripts_2142 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200 (coe v0)))
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
                 (coe C_Spend_1750 (coe v1))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1548
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1458
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe v2) (coe v1) (coe v3))))))
      (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.ScriptValidation.rwdScripts
d_rwdScripts_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwdScripts_2150 ~v0 ~v1 v2 = du_rwdScripts_2150 v2
du_rwdScripts_2150 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwdScripts_2150 v0
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
         (coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)))
      (coe
         (\ v1 ->
            seq
              (coe v1)
              (case coe v0 of
                 MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3193 v2 v3
                   -> case coe v3 of
                        MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v4
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe C_Rwrd_1746 (coe v0)) (coe v4))
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.ScriptValidation.certScripts
d_certScripts_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certScripts_2158 ~v0 ~v1 v2 = du_certScripts_2158 v2
du_certScripts_2158 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certScripts_2158 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Certs.C_delegate_834 v1 v2 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v5
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1744 (coe v0)) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_dereg_836 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1744 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_regpool_838 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Certs.C_retirepool_840 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Certs.C_regdrep_842 v1 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v4
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1744 (coe v0)) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_deregdrep_844 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1744 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_ccreghot_846 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.scriptsNeeded
d_scriptsNeeded_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_scriptsNeeded_2218 v0 ~v1 v2 v3 = du_scriptsNeeded_2218 v0 v2 v3
du_scriptsNeeded_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_scriptsNeeded_2218 v0 v1 v2
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
              du_spendScripts_2142 (coe v0) (coe v3)
              (coe du_scriptOutsWithHash_2138 (coe v1)))
         (MAlonzo.Code.Ledger.Transaction.d_txins_2810 (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_mapPartial_564
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe du_rwdScripts_2150)
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_540
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2824 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__668
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_564
               (MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe du_certScripts_2158)
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_416
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2822 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_386
               (MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe C_Mint_1748 (coe v3)) (coe v3))
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
                  (MAlonzo.Code.Ledger.Transaction.d_mint_2818 (coe v2))))))
-- Ledger.ScriptValidation.valContext
d_valContext_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_TxInfo_1906 -> T_ScriptPurpose_1742 -> AgdaAny
d_valContext_2278 v0 ~v1 v2 v3 = du_valContext_2278 v0 v2 v3
du_valContext_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_TxInfo_1906 -> T_ScriptPurpose_1742 -> AgdaAny
du_valContext_2278 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (MAlonzo.Code.Ledger.Script.d_ps_470
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0)))
      erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs'
d_collectPhaseTwoScriptInputs''_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_collectPhaseTwoScriptInputs''_2284 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                     (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
                     v7
                     (coe
                        MAlonzo.Code.Axiom.Set.du_map_386
                        (MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                           (coe
                              MAlonzo.Code.Ledger.Transaction.du_m_3002 (coe v0) (coe v3)
                              (coe v4)))) in
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
                                                MAlonzo.Code.Ledger.Transaction.du_m_3002 (coe v0)
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
                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2866
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_wits_2882
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
                                                                    MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                                                                    (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200
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
                                                                          MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2866
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_wits_2882
                                                                             (coe v3)))))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                   (let v14
                                                          = MAlonzo.Code.Ledger.Transaction.d_body_2880
                                                              (coe v3) in
                                                    coe
                                                      (case coe v6 of
                                                         C_Cert_1744 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Cert_10)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1726
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txcerts_2822
                                                                      (coe v14)))
                                                         C_Rwrd_1746 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Rewrd_12)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1728
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txwdrls_2824
                                                                      (coe v14)))
                                                         C_Mint_1748 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Mint_8)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1732
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248
                                                                         (coe v0))
                                                                      (MAlonzo.Code.Ledger.Transaction.d_mint_2818
                                                                         (coe v14))))
                                                         C_Spend_1750 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Spend_6)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1730
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txins_2810
                                                                      (coe v14)))
                                                         C_Vote_1752 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Vote_14)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1734
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                      () erased () erased
                                                                      (\ v16 ->
                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_voter_746
                                                                           (coe v16))
                                                                      (MAlonzo.Code.Ledger.Transaction.d_txvote_2826
                                                                         (coe v14))))
                                                         C_Propose_1754 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Propose_16)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1736
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txprop_2828
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
                                                                               du_getDatum_1866
                                                                               (coe v0) (coe v3)
                                                                               (coe v4) (coe v6))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                               (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                  (coe
                                                                                     du_valContext_2278
                                                                                     (coe v0)
                                                                                     (coe
                                                                                        du_txInfo_1948
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
                                                                               MAlonzo.Code.Ledger.PParams.d_costmdls_342
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
                                                    MAlonzo.Code.Ledger.Transaction.du_m_3002
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
                                                                  MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2866
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_wits_2882
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
                                                                        MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200
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
                                                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2866
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_wits_2882
                                                                                 (coe v3)))))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                       (let v15
                                                              = MAlonzo.Code.Ledger.Transaction.d_body_2880
                                                                  (coe v3) in
                                                        coe
                                                          (case coe v6 of
                                                             C_Cert_1744 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Cert_10)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1726
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txcerts_2822
                                                                          (coe v15)))
                                                             C_Rwrd_1746 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Rewrd_12)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1728
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txwdrls_2824
                                                                          (coe v15)))
                                                             C_Mint_1748 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Mint_8)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1732
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248
                                                                             (coe v0))
                                                                          (MAlonzo.Code.Ledger.Transaction.d_mint_2818
                                                                             (coe v15))))
                                                             C_Spend_1750 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Spend_6)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1730
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txins_2810
                                                                          (coe v15)))
                                                             C_Vote_1752 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Vote_14)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1734
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                          () erased () erased
                                                                          (\ v17 ->
                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_voter_746
                                                                               (coe v17))
                                                                          (MAlonzo.Code.Ledger.Transaction.d_txvote_2826
                                                                             (coe v15))))
                                                             C_Propose_1754 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Propose_16)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1736
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txprop_2828
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
                                                                                   du_getDatum_1866
                                                                                   (coe v0) (coe v3)
                                                                                   (coe v4)
                                                                                   (coe v6))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe v18)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         du_valContext_2278
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            du_txInfo_1948
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
                                                                                   MAlonzo.Code.Ledger.PParams.d_costmdls_342
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
d_collectPhaseTwoScriptInputs_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_2360 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (d_collectPhaseTwoScriptInputs''_2284
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_scriptsNeeded_2218 (coe v0) (coe v4)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v3)))
-- Ledger.ScriptValidation.⟦_⟧,_,_,_
d_'10214'_'10215''44'_'44'_'44'__2368 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_'10214'_'10215''44'_'44'_'44'__2368 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1756 v0 v2 v1 v3 v4
-- Ledger.ScriptValidation.evalScripts
d_evalScripts_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_2378 v0 v1 v2 v3
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
                                           MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2846
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2880
                                                 (coe v2)))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txvldt_2820
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2880
                                                 (coe v2)))
                                           (coe MAlonzo.Code.Ledger.Script.d_script_406 (coe v8))))
                                     (coe d_evalScripts_2378 (coe v0) (coe v1) (coe v2) (coe v5)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                         (coe
                                            MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1756 v1 v12
                                            v8 v11 v9)
                                         (coe
                                            d_evalScripts_2378 (coe v0) (coe v1) (coe v2) (coe v5))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
