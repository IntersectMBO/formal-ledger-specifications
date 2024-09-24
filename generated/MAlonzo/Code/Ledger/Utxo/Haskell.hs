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

module MAlonzo.Code.Ledger.Utxo.Haskell where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo

-- _._≤ᵗ_
d__'8804''7511'__18 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__18 = erased
-- _.DCert
d_DCert_74 a0 = ()
-- _.DepositPurpose
d_DepositPurpose_186 a0 = ()
-- _.Deposits
d_Deposits_188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Deposits_188 = erased
-- _.GovProposal
d_GovProposal_222 a0 = ()
-- _.PParams
d_PParams_298 a0 = ()
-- _.Tx
d_Tx_440 a0 = ()
-- _.TxBody
d_TxBody_442 a0 = ()
-- _.coin
d_coin_504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_504 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276 (coe v0))
-- _.getValueʰ
d_getValue'688'_548 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_548 ~v0 = du_getValue'688'_548
du_getValue'688'_548 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_548
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2916
-- _.inject
d_inject_558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_558 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276 (coe v0))
-- _.netId
d_netId_600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_600 ~v0 = du_netId_600
du_netId_600 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_600 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_670 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2906 (coe v0)
-- _.GovProposal.action
d_action_940 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_940 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_790 (coe v0)
-- _.GovProposal.anchor
d_anchor_942 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_942 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_800 (coe v0)
-- _.GovProposal.deposit
d_deposit_944 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> Integer
d_deposit_944 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_796 (coe v0)
-- _.GovProposal.policy
d_policy_946 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Maybe AgdaAny
d_policy_946 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_794 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_948 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> AgdaAny
d_prevAction_948 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_792 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_950 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_950 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_798 (coe v0)
-- _.PParams.Emax
d_Emax_1056 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_1056 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_1058 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_1058 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_1060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1060 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_1062 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_1062 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1064 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_1064 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1066 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_1066 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1068 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_1068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1070 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_1070 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_1072 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_1072 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1074 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_1074 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1076 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_1076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1078 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_1078 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1080 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_1080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1082 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_1082 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1084 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_1084 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1086 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_1086 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1088 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_1088 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1090 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_1090 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1092 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_1092 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1094 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_1094 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1096 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_1096 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1098 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_1098 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1100 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_1100 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1102 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_1102 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1104 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1104 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1106 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_1106 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_1108 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_1108 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1110 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_1110 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1112 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1112 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_1114 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_1114 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_1116 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1116 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1118 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1118 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1120 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_1120 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.Tx.body
d_body_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780
d_body_1546 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2892 (coe v0)
-- _.Tx.isValid
d_isValid_1548 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> Bool
d_isValid_1548 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2896 (coe v0)
-- _.Tx.txAD
d_txAD_1550 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> Maybe AgdaAny
d_txAD_1550 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2898 (coe v0)
-- _.Tx.wits
d_wits_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2862
d_wits_1552 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2894 (coe v0)
-- _.TxBody.collateral
d_collateral_1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1556 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2856 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> Maybe Integer
d_curTreasury_1558 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2850 (coe v0)
-- _.TxBody.mint
d_mint_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> AgdaAny
d_mint_1560 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2830 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1562 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2824 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1564 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> [AgdaAny]
d_reqSigHash_1564 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2858 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> Maybe AgdaAny
d_scriptIntHash_1566 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2860 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> Maybe AgdaAny
d_txADhash_1568 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2846 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> Maybe AgdaAny
d_txNetworkId_1570 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2848 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1572 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_1572 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2834 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> Integer
d_txdonation_1574 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2842 (coe v0)
-- _.TxBody.txfee
d_txfee_1576 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> Integer
d_txfee_1576 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2828 (coe v0)
-- _.TxBody.txid
d_txid_1578 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> AgdaAny
d_txid_1578 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2854 (coe v0)
-- _.TxBody.txins
d_txins_1580 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1580 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2822 (coe v0)
-- _.TxBody.txouts
d_txouts_1582 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1582 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2826 (coe v0)
-- _.TxBody.txprop
d_txprop_1584 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776]
d_txprop_1584 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2840 (coe v0)
-- _.TxBody.txsize
d_txsize_1586 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> Integer
d_txsize_1586 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2852 (coe v0)
-- _.TxBody.txup
d_txup_1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1588 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2844 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1590 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1590 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2832 (coe v0)
-- _.TxBody.txvote
d_txvote_1592 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_1592 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2838 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1594 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1594 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2836 (coe v0)
-- Ledger.Utxo.Haskell._._*↓_
d__'42''8595'__1664 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1664 ~v0 v1 v2 = du__'42''8595'__1664 v1 v2
du__'42''8595'__1664 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1664 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_346
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v1)
               (coe (1 :: Integer)))))
-- Ledger.Utxo.Haskell._._=>ᵇ_
d__'61''62''7495'__1666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1666 ~v0 ~v1 = du__'61''62''7495'__1666
du__'61''62''7495'__1666 :: Bool -> Bool -> Bool
du__'61''62''7495'__1666
  = coe MAlonzo.Code.Ledger.Utxo.du__'61''62''7495'__2242
-- Ledger.Utxo.Haskell._._≡?_
d__'8801''63'__1668 a0 a1 a2 a3 a4 = ()
-- Ledger.Utxo.Haskell._._≤ᵇ_
d__'8804''7495'__1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1670 ~v0 ~v1 = du__'8804''7495'__1670
du__'8804''7495'__1670 :: Integer -> Integer -> Bool
du__'8804''7495'__1670
  = coe MAlonzo.Code.Ledger.Utxo.du__'8804''7495'__2248
-- Ledger.Utxo.Haskell._._≥ᵇ_
d__'8805''7495'__1672 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1672 ~v0 ~v1 = du__'8805''7495'__1672
du__'8805''7495'__1672 :: Integer -> Integer -> Bool
du__'8805''7495'__1672
  = coe MAlonzo.Code.Ledger.Utxo.du__'8805''7495'__2250
-- Ledger.Utxo.Haskell._.Dec-inInterval
d_Dec'45'inInterval_1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1674 v0 ~v1 = du_Dec'45'inInterval_1674 v0
du_Dec'45'inInterval_1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1674 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2136 (coe v0)
-- Ledger.Utxo.Haskell._.HasCoin-Map
d_HasCoin'45'Map_1676 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1676 ~v0 ~v1 = du_HasCoin'45'Map_1676
du_HasCoin'45'Map_1676 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1676 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1774 v1
-- Ledger.Utxo.Haskell._.HasCoin-UTxO
d_HasCoin'45'UTxO_1678 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1678 v0 ~v1 = du_HasCoin'45'UTxO_1678 v0
du_HasCoin'45'UTxO_1678 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1678 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_1954 (coe v0)
-- Ledger.Utxo.Haskell._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1680 v0 ~v1
  = du_HasCoin'45'UTxOState_1680 v0
du_HasCoin'45'UTxOState_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1680 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2238 (coe v0)
-- Ledger.Utxo.Haskell._.Scripts-No-premises
d_Scripts'45'No'45'premises_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1684 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2628 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1688 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2626 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._.UTXO-premises
d_UTXO'45'premises_1692 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1692 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_2816 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.UTxOEnv
d_UTxOEnv_1694 a0 a1 = ()
-- Ledger.Utxo.Haskell._.UTxOState
d_UTxOState_1696 a0 a1 = ()
-- Ledger.Utxo.Haskell._.balance
d_balance_1698 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1698 v0 ~v1 = du_balance_1698 v0
du_balance_1698 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1698 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1926 (coe v0)
-- Ledger.Utxo.Haskell._.cbalance
d_cbalance_1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1702 v0 ~v1 = du_cbalance_1702 v0
du_cbalance_1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1702 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1932 (coe v0)
-- Ledger.Utxo.Haskell._.certRefund
d_certRefund_1704 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
d_certRefund_1704 ~v0 ~v1 = du_certRefund_1704
du_certRefund_1704 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
du_certRefund_1704
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_1970
-- Ledger.Utxo.Haskell._.coinPolicies
d_coinPolicies_1706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 -> [AgdaAny]
d_coinPolicies_1706 v0 ~v1 = du_coinPolicies_1706 v0
du_coinPolicies_1706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1706 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2266 (coe v0)
-- Ledger.Utxo.Haskell._.consumed
d_consumed_1708 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> AgdaAny
d_consumed_1708 v0 ~v1 = du_consumed_1708 v0
du_consumed_1708 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> AgdaAny
du_consumed_1708 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2448 (coe v0)
-- Ledger.Utxo.Haskell._.depositRefunds
d_depositRefunds_1710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> Integer
d_depositRefunds_1710 v0 ~v1 = du_depositRefunds_1710 v0
du_depositRefunds_1710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> Integer
du_depositRefunds_1710 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2432 (coe v0)
-- Ledger.Utxo.Haskell._.depositsChange
d_depositsChange_1712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1712 v0 ~v1 = du_depositsChange_1712 v0
du_depositsChange_1712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1712 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2106 (coe v0)
-- Ledger.Utxo.Haskell._.feesOK
d_feesOK_1714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1714 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_feesOK_2272 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.getDataHashes
d_getDataHashes_1716 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1716 ~v0 ~v1 = du_getDataHashes_1716
du_getDataHashes_1716 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1716
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1798
-- Ledger.Utxo.Haskell._.getInputHashes
d_getInputHashes_1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1718 v0 ~v1 = du_getInputHashes_1718 v0
du_getInputHashes_1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1718 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1802 (coe v0)
-- Ledger.Utxo.Haskell._.inInterval
d_inInterval_1720 a0 a1 a2 a3 = ()
-- Ledger.Utxo.Haskell._.isAdaOnlyᵇ
d_isAdaOnly'7495'_1722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1722 v0 ~v1 = du_isAdaOnly'7495'_1722 v0
du_isAdaOnly'7495'_1722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1722 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_isAdaOnly'7495'_2268 (coe v0)
-- Ledger.Utxo.Haskell._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1724 v0 ~v1
  = du_isTwoPhaseScriptAddress_1724 v0
du_isTwoPhaseScriptAddress_1724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1724 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress_1786 (coe v0)
-- Ledger.Utxo.Haskell._.minfee
d_minfee_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> Integer
d_minfee_1728 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_1946 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.newDeposits
d_newDeposits_1730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> Integer
d_newDeposits_1730 v0 ~v1 = du_newDeposits_1730 v0
du_newDeposits_1730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> Integer
du_newDeposits_1730 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2440 (coe v0)
-- Ledger.Utxo.Haskell._.outs
d_outs_1734 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1734 ~v0 ~v1 = du_outs_1734
du_outs_1734 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1734 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1920
-- Ledger.Utxo.Haskell._.produced
d_produced_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> AgdaAny
d_produced_1736 v0 ~v1 = du_produced_1736 v0
du_produced_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 -> AgdaAny
du_produced_1736 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2456 (coe v0)
-- Ledger.Utxo.Haskell._.proposalDepositsΔ
d_proposalDepositsΔ_1738 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1738 v0 ~v1 = du_proposalDepositsΔ_1738 v0
du_proposalDepositsΔ_1738 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1738 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_2052 (coe v0)
-- Ledger.Utxo.Haskell._.refScriptsSize
d_refScriptsSize_1740 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> Integer
d_refScriptsSize_1740 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_1936 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.totExUnits
d_totExUnits_1742 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> AgdaAny
d_totExUnits_1742 v0 ~v1 = du_totExUnits_1742 v0
du_totExUnits_1742 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> AgdaAny
du_totExUnits_1742 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1858 (coe v0)
-- Ledger.Utxo.Haskell._.utxoEntrySize
d_utxoEntrySize_1746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1746 v0 ~v1 = du_utxoEntrySize_1746 v0
du_utxoEntrySize_1746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1746 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1872 (coe v0)
-- Ledger.Utxo.Haskell._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1748 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 -> Integer
d_utxoEntrySizeWithoutVal_1748 ~v0
  = du_utxoEntrySizeWithoutVal_1748
du_utxoEntrySizeWithoutVal_1748 :: Integer
du_utxoEntrySizeWithoutVal_1748 = coe (8 :: Integer)
-- Ledger.Utxo.Haskell._.≟-∅ᵇ
d_'8799''45''8709''7495'_1750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1750 ~v0 ~v1
  = du_'8799''45''8709''7495'_1750
du_'8799''45''8709''7495'_1750 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1750 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''45''8709''7495'_2262 v1 v2
-- Ledger.Utxo.Haskell._.≟?
d_'8799''63'_1752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1752 ~v0 ~v1 = du_'8799''63'_1752
du_'8799''63'_1752 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1752 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_2658 v1 v2 v3
-- Ledger.Utxo.Haskell._.UTxOEnv.pparams
d_pparams_1768 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1768 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1886 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOEnv.slot
d_slot_1770 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 -> AgdaAny
d_slot_1770 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1884 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOEnv.treasury
d_treasury_1772 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 -> Integer
d_treasury_1772 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1888 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.deposits
d_deposits_1776 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1776 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1904 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.donations
d_donations_1778 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 -> Integer
d_donations_1778 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1906 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.fees
d_fees_1780 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 -> Integer
d_fees_1780 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1902 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.utxo
d_utxo_1782 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1782 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1900 (coe v0)
-- Ledger.Utxo.Haskell.certDepositUtxo
d_certDepositUtxo_1798 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDepositUtxo_1798 ~v0 ~v1 v2 v3
  = du_certDepositUtxo_1798 v2 v3
du_certDepositUtxo_1798 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDepositUtxo_1798 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_regpool_862 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_840 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v1)))
         _ -> coe v2)
-- Ledger.Utxo.Haskell.updateCertDepositsUtxo
d_updateCertDepositsUtxo_1804 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDepositsUtxo_1804 v0 ~v1 v2 v3 v4
  = du_updateCertDepositsUtxo_1804 v0 v2 v3 v4
du_updateCertDepositsUtxo_1804 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDepositsUtxo_1804 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             (coe
                MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
             (coe
                du_updateCertDepositsUtxo_1804 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe du_certDepositUtxo_1798 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.updateProposalDeposits
d_updateProposalDeposits_1816 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1816 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1816 v0 v2 v3 v4 v5
du_updateProposalDeposits_1816 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1816 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             (coe
                MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
             (coe
                du_updateProposalDeposits_1816 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_284 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.updateDeposits
d_updateDeposits_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1828 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1828 v0 v2 v3 v4
du_updateDeposits_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1828 v0 v1 v2 v3
  = coe
      du_updateCertDepositsUtxo_1804 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2834 (coe v2))
      (coe
         du_updateProposalDeposits_1816 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2840 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2854 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v1))
         (coe v3))
-- Ledger.Utxo.Haskell._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1906 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2294
      (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.evalScripts
d_evalScripts_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1916 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2312 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1994 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__1994
  = C_Scripts'45'Yes_2074 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2154 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo.Haskell._.txdonation
d_txdonation_2032 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> Integer
d_txdonation_2032 ~v0 ~v1 ~v2 v3 = du_txdonation_2032 v3
du_txdonation_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> Integer
du_txdonation_2032 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2842
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2892 (coe v0))
-- Ledger.Utxo.Haskell._.txfee
d_txfee_2034 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> Integer
d_txfee_2034 ~v0 ~v1 ~v2 v3 = du_txfee_2034 v3
du_txfee_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> Integer
du_txfee_2034 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2828
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2892 (coe v0))
-- Ledger.Utxo.Haskell._.txins
d_txins_2038 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2038 ~v0 ~v1 ~v2 v3 = du_txins_2038 v3
du_txins_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2038 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2822
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2892 (coe v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2056 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2056 ~v0 v1 ~v2 ~v3 = du_pparams_2056 v1
du_pparams_2056 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2056 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1886 (coe v0)
-- Ledger.Utxo.Haskell._.deposits
d_deposits_2064 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2064 ~v0 ~v1 v2 ~v3 = du_deposits_2064 v2
du_deposits_2064 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2064 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1904 (coe v0)
-- Ledger.Utxo.Haskell._.donations
d_donations_2066 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> Integer
d_donations_2066 ~v0 ~v1 v2 ~v3 = du_donations_2066 v2
du_donations_2066 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 -> Integer
du_donations_2066 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1906 (coe v0)
-- Ledger.Utxo.Haskell._.fees
d_fees_2068 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> Integer
d_fees_2068 ~v0 ~v1 v2 ~v3 = du_fees_2068 v2
du_fees_2068 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 -> Integer
du_fees_2068 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1902 (coe v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2070 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2070 ~v0 ~v1 v2 ~v3 = du_utxo_2070 v2
du_utxo_2070 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2070 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1900 (coe v0)
-- Ledger.Utxo.Haskell._.collateral
d_collateral_2094 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2094 ~v0 ~v1 ~v2 v3 = du_collateral_2094 v3
du_collateral_2094 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2094 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2856
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2892 (coe v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2136 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2136 ~v0 v1 ~v2 ~v3 = du_pparams_2136 v1
du_pparams_2136 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2136 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1886 (coe v0)
-- Ledger.Utxo.Haskell._.deposits
d_deposits_2144 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2144 ~v0 ~v1 v2 ~v3 = du_deposits_2144 v2
du_deposits_2144 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2144 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1904 (coe v0)
-- Ledger.Utxo.Haskell._.donations
d_donations_2146 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> Integer
d_donations_2146 ~v0 ~v1 v2 ~v3 = du_donations_2146 v2
du_donations_2146 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 -> Integer
du_donations_2146 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1906 (coe v0)
-- Ledger.Utxo.Haskell._.fees
d_fees_2148 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 -> Integer
d_fees_2148 ~v0 ~v1 v2 ~v3 = du_fees_2148 v2
du_fees_2148 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 -> Integer
du_fees_2148 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1902 (coe v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2150 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2150 ~v0 ~v1 v2 ~v3 = du_utxo_2150 v2
du_utxo_2150 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2150 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1900 (coe v0)
-- Ledger.Utxo.Haskell._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2156 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2156
  = C_UTXO'45'inductive_2250 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo.Haskell._.body
d_body_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780
d_body_2164 ~v0 ~v1 v2 = du_body_2164 v2
du_body_2164 ::
  T_GeneralizeTel_14511 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2780
du_body_2164 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2892
      (coe d_'46'generalizedField'45'tx_14503 (coe v0))
-- Ledger.Utxo.Haskell._.curTreasury
d_curTreasury_2172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 -> Maybe Integer
d_curTreasury_2172 ~v0 ~v1 v2 = du_curTreasury_2172 v2
du_curTreasury_2172 :: T_GeneralizeTel_14511 -> Maybe Integer
du_curTreasury_2172 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2850
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2892
         (coe d_'46'generalizedField'45'tx_14503 (coe v0)))
-- Ledger.Utxo.Haskell._.mint
d_mint_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 -> AgdaAny
d_mint_2174 ~v0 ~v1 v2 = du_mint_2174 v2
du_mint_2174 :: T_GeneralizeTel_14511 -> AgdaAny
du_mint_2174 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2830
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2892
         (coe d_'46'generalizedField'45'tx_14503 (coe v0)))
-- Ledger.Utxo.Haskell._.refInputs
d_refInputs_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2176 ~v0 ~v1 v2 = du_refInputs_2176 v2
du_refInputs_2176 ::
  T_GeneralizeTel_14511 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2176 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2824
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2892
         (coe d_'46'generalizedField'45'tx_14503 (coe v0)))
-- Ledger.Utxo.Haskell._.txNetworkId
d_txNetworkId_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 -> Maybe AgdaAny
d_txNetworkId_2184 ~v0 ~v1 v2 = du_txNetworkId_2184 v2
du_txNetworkId_2184 :: T_GeneralizeTel_14511 -> Maybe AgdaAny
du_txNetworkId_2184 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2848
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2892
         (coe d_'46'generalizedField'45'tx_14503 (coe v0)))
-- Ledger.Utxo.Haskell._.txins
d_txins_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2194 ~v0 ~v1 v2 = du_txins_2194 v2
du_txins_2194 ::
  T_GeneralizeTel_14511 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2194 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2822
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2892
         (coe d_'46'generalizedField'45'tx_14503 (coe v0)))
-- Ledger.Utxo.Haskell._.txouts
d_txouts_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2196 ~v0 ~v1 v2 = du_txouts_2196 v2
du_txouts_2196 ::
  T_GeneralizeTel_14511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2196 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2826
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2892
         (coe d_'46'generalizedField'45'tx_14503 (coe v0)))
-- Ledger.Utxo.Haskell._.txsize
d_txsize_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 -> Integer
d_txsize_2200 ~v0 ~v1 v2 = du_txsize_2200 v2
du_txsize_2200 :: T_GeneralizeTel_14511 -> Integer
du_txsize_2200 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2852
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2892
         (coe d_'46'generalizedField'45'tx_14503 (coe v0)))
-- Ledger.Utxo.Haskell._.txvldt
d_txvldt_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2204 ~v0 ~v1 v2 = du_txvldt_2204 v2
du_txvldt_2204 ::
  T_GeneralizeTel_14511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2204 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2832
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2892
         (coe d_'46'generalizedField'45'tx_14503 (coe v0)))
-- Ledger.Utxo.Haskell._.txwdrls
d_txwdrls_2208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2208 ~v0 ~v1 v2 = du_txwdrls_2208 v2
du_txwdrls_2208 ::
  T_GeneralizeTel_14511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2208 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2836
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2892
         (coe d_'46'generalizedField'45'tx_14503 (coe v0)))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2212 ~v0 ~v1 v2 = du_pparams_2212 v2
du_pparams_2212 ::
  T_GeneralizeTel_14511 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2212 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_1886
      (coe d_'46'generalizedField'45'Γ_14505 (coe v0))
-- Ledger.Utxo.Haskell._.slot
d_slot_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 -> AgdaAny
d_slot_2214 ~v0 ~v1 v2 = du_slot_2214 v2
du_slot_2214 :: T_GeneralizeTel_14511 -> AgdaAny
du_slot_2214 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_1884
      (coe d_'46'generalizedField'45'Γ_14505 (coe v0))
-- Ledger.Utxo.Haskell._.treasury
d_treasury_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 -> Integer
d_treasury_2216 ~v0 ~v1 v2 = du_treasury_2216 v2
du_treasury_2216 :: T_GeneralizeTel_14511 -> Integer
du_treasury_2216 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_1888
      (coe d_'46'generalizedField'45'Γ_14505 (coe v0))
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1672 ->
  T_GeneralizeTel_14511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2226 ~v0 ~v1 v2 = du_utxo_2226 v2
du_utxo_2226 ::
  T_GeneralizeTel_14511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2226 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1900
      (coe d_'46'generalizedField'45's_14507 (coe v0))
-- Ledger.Utxo.Haskell._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2361 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Haskell._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2363 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Haskell..generalizedField-tx
d_'46'generalizedField'45'tx_14503 ::
  T_GeneralizeTel_14511 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2882
d_'46'generalizedField'45'tx_14503 v0
  = case coe v0 of
      C_mkGeneralizeTel_14513 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-Γ
d_'46'generalizedField'45'Γ_14505 ::
  T_GeneralizeTel_14511 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876
d_'46'generalizedField'45'Γ_14505 v0
  = case coe v0 of
      C_mkGeneralizeTel_14513 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-s
d_'46'generalizedField'45's_14507 ::
  T_GeneralizeTel_14511 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890
d_'46'generalizedField'45's_14507 v0
  = case coe v0 of
      C_mkGeneralizeTel_14513 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-s'
d_'46'generalizedField'45's''_14509 ::
  T_GeneralizeTel_14511 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890
d_'46'generalizedField'45's''_14509 v0
  = case coe v0 of
      C_mkGeneralizeTel_14513 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.GeneralizeTel
d_GeneralizeTel_14511 a0 a1 = ()
data T_GeneralizeTel_14511
  = C_mkGeneralizeTel_14513 MAlonzo.Code.Ledger.Transaction.T_Tx_2882
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1876
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1890
