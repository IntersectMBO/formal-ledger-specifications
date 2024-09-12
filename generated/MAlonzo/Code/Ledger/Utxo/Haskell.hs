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
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
-- _.getValueʰ
d_getValue'688'_548 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_548 ~v0 = du_getValue'688'_548
du_getValue'688'_548 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_548
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2872
-- _.inject
d_inject_558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_558 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
-- _.netId
d_netId_600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_600 ~v0 = du_netId_600
du_netId_600 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_600 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_664 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_664 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2862 (coe v0)
-- _.GovProposal.action
d_action_934 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_694
d_action_934 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_768 (coe v0)
-- _.GovProposal.anchor
d_anchor_936 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_936 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_778 (coe v0)
-- _.GovProposal.deposit
d_deposit_938 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 -> Integer
d_deposit_938 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_774 (coe v0)
-- _.GovProposal.policy
d_policy_940 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  Maybe AgdaAny
d_policy_940 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_772 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_942 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 -> AgdaAny
d_prevAction_942 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_770 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_944 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_944 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_776 (coe v0)
-- _.PParams.Emax
d_Emax_1050 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_1050 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_336 (coe v0)
-- _.PParams.a
d_a_1052 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_1052 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_320 (coe v0)
-- _.PParams.a0
d_a0_1054 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1054 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_340 (coe v0)
-- _.PParams.b
d_b_1056 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_1056 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_322 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1058 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_1058 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_352 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_1060 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_350 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1062 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_1062 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_328 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1064 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_1064 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_342 (coe v0)
-- _.PParams.costmdls
d_costmdls_1066 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_1066 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_344 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1068 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_1068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_360 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1070 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_1070 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_358 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1072 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_1072 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1074 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_1074 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1076 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_1076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_354 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1078 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_1078 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_324 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1080 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_1080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_312 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1082 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_1082 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_304 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1084 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_1084 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_316 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1086 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_1086 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_308 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1088 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_1088 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_310 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1090 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_1090 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_306 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1092 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_1092 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_314 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1094 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1094 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_332
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1096 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_1096 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_334 (coe v0)
-- _.PParams.nopt
d_nopt_1098 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_1098 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_338 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1100 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_1100 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_326 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1102 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1102 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_346 (coe v0)
-- _.PParams.prices
d_prices_1104 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_1104 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_330 (coe v0)
-- _.PParams.pv
d_pv_1106 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1106 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_318 (coe v0)
-- _.Tx.body
d_body_1524 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736
d_body_1524 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v0)
-- _.Tx.isValid
d_isValid_1526 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Bool
d_isValid_1526 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2852 (coe v0)
-- _.Tx.txAD
d_txAD_1528 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Maybe AgdaAny
d_txAD_1528 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2854 (coe v0)
-- _.Tx.wits
d_wits_1530 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2818
d_wits_1530 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2850 (coe v0)
-- _.TxBody.collateral
d_collateral_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2812 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Maybe Integer
d_curTreasury_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2806 (coe v0)
-- _.TxBody.mint
d_mint_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> AgdaAny
d_mint_1538 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2786 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2780 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1542 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> [AgdaAny]
d_reqSigHash_1542 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2814 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Maybe AgdaAny
d_scriptIntHash_1544 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2816 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Maybe AgdaAny
d_txADhash_1546 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2802 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1548 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Maybe AgdaAny
d_txNetworkId_1548 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2804 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834]
d_txcerts_1550 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2790 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
d_txdonation_1552 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2798 (coe v0)
-- _.TxBody.txfee
d_txfee_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
d_txfee_1554 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2784 (coe v0)
-- _.TxBody.txid
d_txid_1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> AgdaAny
d_txid_1556 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2810 (coe v0)
-- _.TxBody.txins
d_txins_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1558 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2778 (coe v0)
-- _.TxBody.txouts
d_txouts_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1560 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2782 (coe v0)
-- _.TxBody.txprop
d_txprop_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754]
d_txprop_1562 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2796 (coe v0)
-- _.TxBody.txsize
d_txsize_1564 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
d_txsize_1564 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2808 (coe v0)
-- _.TxBody.txup
d_txup_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1566 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2800 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1568 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2788 (coe v0)
-- _.TxBody.txvote
d_txvote_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
d_txvote_1570 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2794 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1572 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1572 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2792 (coe v0)
-- Ledger.Utxo.Haskell._._*↓_
d__'42''8595'__1642 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1642 ~v0 v1 v2 = du__'42''8595'__1642 v1 v2
du__'42''8595'__1642 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1642 v0 v1
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
d__'61''62''7495'__1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1644 ~v0 ~v1 = du__'61''62''7495'__1644
du__'61''62''7495'__1644 :: Bool -> Bool -> Bool
du__'61''62''7495'__1644
  = coe MAlonzo.Code.Ledger.Utxo.du__'61''62''7495'__2208
-- Ledger.Utxo.Haskell._._≡?_
d__'8801''63'__1646 a0 a1 a2 a3 a4 = ()
-- Ledger.Utxo.Haskell._._≤ᵇ_
d__'8804''7495'__1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1648 ~v0 ~v1 = du__'8804''7495'__1648
du__'8804''7495'__1648 :: Integer -> Integer -> Bool
du__'8804''7495'__1648
  = coe MAlonzo.Code.Ledger.Utxo.du__'8804''7495'__2214
-- Ledger.Utxo.Haskell._._≥ᵇ_
d__'8805''7495'__1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1650 ~v0 ~v1 = du__'8805''7495'__1650
du__'8805''7495'__1650 :: Integer -> Integer -> Bool
du__'8805''7495'__1650
  = coe MAlonzo.Code.Ledger.Utxo.du__'8805''7495'__2216
-- Ledger.Utxo.Haskell._.Dec-inInterval
d_Dec'45'inInterval_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1652 v0 ~v1 = du_Dec'45'inInterval_1652 v0
du_Dec'45'inInterval_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1652 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2102 (coe v0)
-- Ledger.Utxo.Haskell._.HasCoin-Map
d_HasCoin'45'Map_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1654 ~v0 ~v1 = du_HasCoin'45'Map_1654
du_HasCoin'45'Map_1654 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1654 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1748 v1
-- Ledger.Utxo.Haskell._.HasCoin-UTxO
d_HasCoin'45'UTxO_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1656 v0 ~v1 = du_HasCoin'45'UTxO_1656 v0
du_HasCoin'45'UTxO_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1656 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_1920 (coe v0)
-- Ledger.Utxo.Haskell._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1658 v0 ~v1
  = du_HasCoin'45'UTxOState_1658 v0
du_HasCoin'45'UTxOState_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1658 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2204 (coe v0)
-- Ledger.Utxo.Haskell._.Scripts-No-premises
d_Scripts'45'No'45'premises_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1662 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2586 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1666 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2584 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._.UTXO-premises
d_UTXO'45'premises_1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1670 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_2772 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.UTxOEnv
d_UTxOEnv_1672 a0 a1 = ()
-- Ledger.Utxo.Haskell._.UTxOState
d_UTxOState_1674 a0 a1 = ()
-- Ledger.Utxo.Haskell._.balance
d_balance_1676 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1676 v0 ~v1 = du_balance_1676 v0
du_balance_1676 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1676 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1900 (coe v0)
-- Ledger.Utxo.Haskell._.cbalance
d_cbalance_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1680 v0 ~v1 = du_cbalance_1680 v0
du_cbalance_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1680 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1906 (coe v0)
-- Ledger.Utxo.Haskell._.certRefund
d_certRefund_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814]
d_certRefund_1682 ~v0 ~v1 = du_certRefund_1682
du_certRefund_1682 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814]
du_certRefund_1682
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_1936
-- Ledger.Utxo.Haskell._.coinPolicies
d_coinPolicies_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 -> [AgdaAny]
d_coinPolicies_1684 v0 ~v1 = du_coinPolicies_1684 v0
du_coinPolicies_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1684 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2232 (coe v0)
-- Ledger.Utxo.Haskell._.consumed
d_consumed_1686 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> AgdaAny
d_consumed_1686 v0 ~v1 = du_consumed_1686 v0
du_consumed_1686 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> AgdaAny
du_consumed_1686 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2406 (coe v0)
-- Ledger.Utxo.Haskell._.depositRefunds
d_depositRefunds_1688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
d_depositRefunds_1688 v0 ~v1 = du_depositRefunds_1688 v0
du_depositRefunds_1688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
du_depositRefunds_1688 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2390 (coe v0)
-- Ledger.Utxo.Haskell._.depositsChange
d_depositsChange_1690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1690 v0 ~v1 = du_depositsChange_1690 v0
du_depositsChange_1690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1690 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2072 (coe v0)
-- Ledger.Utxo.Haskell._.feesOK
d_feesOK_1692 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1692 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_feesOK_2238 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.getDataHashes
d_getDataHashes_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1694 ~v0 ~v1 = du_getDataHashes_1694
du_getDataHashes_1694 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1694
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1772
-- Ledger.Utxo.Haskell._.getInputHashes
d_getInputHashes_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1696 v0 ~v1 = du_getInputHashes_1696 v0
du_getInputHashes_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1696 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1776 (coe v0)
-- Ledger.Utxo.Haskell._.inInterval
d_inInterval_1698 a0 a1 a2 a3 = ()
-- Ledger.Utxo.Haskell._.isAdaOnlyᵇ
d_isAdaOnly'7495'_1700 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1700 v0 ~v1 = du_isAdaOnly'7495'_1700 v0
du_isAdaOnly'7495'_1700 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1700 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_isAdaOnly'7495'_2234 (coe v0)
-- Ledger.Utxo.Haskell._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1702 v0 ~v1
  = du_isTwoPhaseScriptAddress_1702 v0
du_isTwoPhaseScriptAddress_1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1702 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress_1760 (coe v0)
-- Ledger.Utxo.Haskell._.minfee
d_minfee_1706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Integer
d_minfee_1706 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_1910 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.newDeposits
d_newDeposits_1708 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
d_newDeposits_1708 v0 ~v1 = du_newDeposits_1708 v0
du_newDeposits_1708 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
du_newDeposits_1708 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2398 (coe v0)
-- Ledger.Utxo.Haskell._.outs
d_outs_1712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1712 ~v0 ~v1 = du_outs_1712
du_outs_1712 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1712 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1894
-- Ledger.Utxo.Haskell._.produced
d_produced_1714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> AgdaAny
d_produced_1714 v0 ~v1 = du_produced_1714 v0
du_produced_1714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> AgdaAny
du_produced_1714 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2414 (coe v0)
-- Ledger.Utxo.Haskell._.proposalDepositsΔ
d_proposalDepositsΔ_1716 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1716 v0 ~v1 = du_proposalDepositsΔ_1716 v0
du_proposalDepositsΔ_1716 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1716 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_2018 (coe v0)
-- Ledger.Utxo.Haskell._.totExUnits
d_totExUnits_1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> AgdaAny
d_totExUnits_1718 v0 ~v1 = du_totExUnits_1718 v0
du_totExUnits_1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> AgdaAny
du_totExUnits_1718 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1832 (coe v0)
-- Ledger.Utxo.Haskell._.utxoEntrySize
d_utxoEntrySize_1722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1722 v0 ~v1 = du_utxoEntrySize_1722 v0
du_utxoEntrySize_1722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1722 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1846 (coe v0)
-- Ledger.Utxo.Haskell._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1724 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 -> Integer
d_utxoEntrySizeWithoutVal_1724 ~v0
  = du_utxoEntrySizeWithoutVal_1724
du_utxoEntrySizeWithoutVal_1724 :: Integer
du_utxoEntrySizeWithoutVal_1724 = coe (8 :: Integer)
-- Ledger.Utxo.Haskell._.≟-∅ᵇ
d_'8799''45''8709''7495'_1726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1726 ~v0 ~v1
  = du_'8799''45''8709''7495'_1726
du_'8799''45''8709''7495'_1726 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1726 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''45''8709''7495'_2228 v1 v2
-- Ledger.Utxo.Haskell._.≟?
d_'8799''63'_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1728 ~v0 ~v1 = du_'8799''63'_1728
du_'8799''63'_1728 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1728 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_2616 v1 v2 v3
-- Ledger.Utxo.Haskell._.UTxOEnv.pparams
d_pparams_1744 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1744 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1860 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOEnv.slot
d_slot_1746 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 -> AgdaAny
d_slot_1746 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1858 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOEnv.treasury
d_treasury_1748 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 -> Integer
d_treasury_1748 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1862 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.deposits
d_deposits_1752 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1752 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1878 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.donations
d_donations_1754 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 -> Integer
d_donations_1754 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1880 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.fees
d_fees_1756 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 -> Integer
d_fees_1756 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1876 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.utxo
d_utxo_1758 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1758 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1874 (coe v0)
-- Ledger.Utxo.Haskell.certDepositUtxo
d_certDepositUtxo_1770 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDepositUtxo_1770 ~v0 ~v1 v2 v3
  = du_certDepositUtxo_1770 v2 v3
du_certDepositUtxo_1770 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDepositUtxo_1770 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_regpool_840 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_818 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_326 (coe v1)))
         _ -> coe v2)
-- Ledger.Utxo.Haskell.updateCertDepositsUtxo
d_updateCertDepositsUtxo_1776 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDepositsUtxo_1776 v0 ~v1 v2 v3 v4
  = du_updateCertDepositsUtxo_1776 v0 v2 v3 v4
du_updateCertDepositsUtxo_1776 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDepositsUtxo_1776 v0 v1 v2 v3
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
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
             (coe
                du_updateCertDepositsUtxo_1776 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe du_certDepositUtxo_1770 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.updateProposalDeposits
d_updateProposalDeposits_1788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1788 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1788 v0 v2 v3 v4 v5
du_updateProposalDeposits_1788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1788 v0 v1 v2 v3 v4
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
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
             (coe
                du_updateProposalDeposits_1788 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_822
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_284 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.updateDeposits
d_updateDeposits_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1800 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1800 v0 v2 v3 v4
du_updateDeposits_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1800 v0 v1 v2 v3
  = coe
      du_updateCertDepositsUtxo_1776 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2790 (coe v2))
      (coe
         du_updateProposalDeposits_1788 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2796 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2810 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356 (coe v1))
         (coe v3))
-- Ledger.Utxo.Haskell._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1878 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1878 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2272
      (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.evalScripts
d_evalScripts_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1888 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2290 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1966 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__1966
  = C_Scripts'45'Yes_2046 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2126 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo.Haskell._.txdonation
d_txdonation_2004 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Integer
d_txdonation_2004 ~v0 ~v1 ~v2 v3 = du_txdonation_2004 v3
du_txdonation_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Integer
du_txdonation_2004 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v0))
-- Ledger.Utxo.Haskell._.txfee
d_txfee_2006 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Integer
d_txfee_2006 ~v0 ~v1 ~v2 v3 = du_txfee_2006 v3
du_txfee_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Integer
du_txfee_2006 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2784
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v0))
-- Ledger.Utxo.Haskell._.txins
d_txins_2010 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2010 ~v0 ~v1 ~v2 v3 = du_txins_2010 v3
du_txins_2010 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2010 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2778
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2028 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2028 ~v0 v1 ~v2 ~v3 = du_pparams_2028 v1
du_pparams_2028 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2028 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1860 (coe v0)
-- Ledger.Utxo.Haskell._.deposits
d_deposits_2036 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2036 ~v0 ~v1 v2 ~v3 = du_deposits_2036 v2
du_deposits_2036 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2036 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1878 (coe v0)
-- Ledger.Utxo.Haskell._.donations
d_donations_2038 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Integer
d_donations_2038 ~v0 ~v1 v2 ~v3 = du_donations_2038 v2
du_donations_2038 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 -> Integer
du_donations_2038 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1880 (coe v0)
-- Ledger.Utxo.Haskell._.fees
d_fees_2040 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Integer
d_fees_2040 ~v0 ~v1 v2 ~v3 = du_fees_2040 v2
du_fees_2040 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 -> Integer
du_fees_2040 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1876 (coe v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2042 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2042 ~v0 ~v1 v2 ~v3 = du_utxo_2042 v2
du_utxo_2042 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2042 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1874 (coe v0)
-- Ledger.Utxo.Haskell._.collateral
d_collateral_2066 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2066 ~v0 ~v1 ~v2 v3 = du_collateral_2066 v3
du_collateral_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2066 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2812
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2108 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2108 ~v0 v1 ~v2 ~v3 = du_pparams_2108 v1
du_pparams_2108 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2108 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1860 (coe v0)
-- Ledger.Utxo.Haskell._.deposits
d_deposits_2116 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2116 ~v0 ~v1 v2 ~v3 = du_deposits_2116 v2
du_deposits_2116 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2116 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1878 (coe v0)
-- Ledger.Utxo.Haskell._.donations
d_donations_2118 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Integer
d_donations_2118 ~v0 ~v1 v2 ~v3 = du_donations_2118 v2
du_donations_2118 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 -> Integer
du_donations_2118 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1880 (coe v0)
-- Ledger.Utxo.Haskell._.fees
d_fees_2120 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Integer
d_fees_2120 ~v0 ~v1 v2 ~v3 = du_fees_2120 v2
du_fees_2120 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 -> Integer
du_fees_2120 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1876 (coe v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2122 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2122 ~v0 ~v1 v2 ~v3 = du_utxo_2122 v2
du_utxo_2122 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2122 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1874 (coe v0)
-- Ledger.Utxo.Haskell._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2128 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2128
  = C_UTXO'45'inductive_2222 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo.Haskell._.body
d_body_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736
d_body_2136 ~v0 ~v1 v2 = du_body_2136 v2
du_body_2136 ::
  T_GeneralizeTel_14375 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736
du_body_2136 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2848
      (coe d_'46'generalizedField'45'tx_14367 (coe v0))
-- Ledger.Utxo.Haskell._.curTreasury
d_curTreasury_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 -> Maybe Integer
d_curTreasury_2144 ~v0 ~v1 v2 = du_curTreasury_2144 v2
du_curTreasury_2144 :: T_GeneralizeTel_14375 -> Maybe Integer
du_curTreasury_2144 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2806
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_14367 (coe v0)))
-- Ledger.Utxo.Haskell._.mint
d_mint_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 -> AgdaAny
d_mint_2146 ~v0 ~v1 v2 = du_mint_2146 v2
du_mint_2146 :: T_GeneralizeTel_14375 -> AgdaAny
du_mint_2146 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2786
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_14367 (coe v0)))
-- Ledger.Utxo.Haskell._.refInputs
d_refInputs_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2148 ~v0 ~v1 v2 = du_refInputs_2148 v2
du_refInputs_2148 ::
  T_GeneralizeTel_14375 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2148 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2780
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_14367 (coe v0)))
-- Ledger.Utxo.Haskell._.txNetworkId
d_txNetworkId_2156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 -> Maybe AgdaAny
d_txNetworkId_2156 ~v0 ~v1 v2 = du_txNetworkId_2156 v2
du_txNetworkId_2156 :: T_GeneralizeTel_14375 -> Maybe AgdaAny
du_txNetworkId_2156 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2804
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_14367 (coe v0)))
-- Ledger.Utxo.Haskell._.txins
d_txins_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2166 ~v0 ~v1 v2 = du_txins_2166 v2
du_txins_2166 ::
  T_GeneralizeTel_14375 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2166 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2778
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_14367 (coe v0)))
-- Ledger.Utxo.Haskell._.txouts
d_txouts_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2168 ~v0 ~v1 v2 = du_txouts_2168 v2
du_txouts_2168 ::
  T_GeneralizeTel_14375 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2168 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2782
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_14367 (coe v0)))
-- Ledger.Utxo.Haskell._.txsize
d_txsize_2172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 -> Integer
d_txsize_2172 ~v0 ~v1 v2 = du_txsize_2172 v2
du_txsize_2172 :: T_GeneralizeTel_14375 -> Integer
du_txsize_2172 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2808
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_14367 (coe v0)))
-- Ledger.Utxo.Haskell._.txvldt
d_txvldt_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2176 ~v0 ~v1 v2 = du_txvldt_2176 v2
du_txvldt_2176 ::
  T_GeneralizeTel_14375 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2176 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2788
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_14367 (coe v0)))
-- Ledger.Utxo.Haskell._.txwdrls
d_txwdrls_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2180 ~v0 ~v1 v2 = du_txwdrls_2180 v2
du_txwdrls_2180 ::
  T_GeneralizeTel_14375 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2180 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2792
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_14367 (coe v0)))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2184 ~v0 ~v1 v2 = du_pparams_2184 v2
du_pparams_2184 ::
  T_GeneralizeTel_14375 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2184 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_1860
      (coe d_'46'generalizedField'45'Γ_14369 (coe v0))
-- Ledger.Utxo.Haskell._.slot
d_slot_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 -> AgdaAny
d_slot_2186 ~v0 ~v1 v2 = du_slot_2186 v2
du_slot_2186 :: T_GeneralizeTel_14375 -> AgdaAny
du_slot_2186 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_1858
      (coe d_'46'generalizedField'45'Γ_14369 (coe v0))
-- Ledger.Utxo.Haskell._.treasury
d_treasury_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 -> Integer
d_treasury_2188 ~v0 ~v1 v2 = du_treasury_2188 v2
du_treasury_2188 :: T_GeneralizeTel_14375 -> Integer
du_treasury_2188 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_1862
      (coe d_'46'generalizedField'45'Γ_14369 (coe v0))
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_14375 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2198 ~v0 ~v1 v2 = du_utxo_2198 v2
du_utxo_2198 ::
  T_GeneralizeTel_14375 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2198 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1874
      (coe d_'46'generalizedField'45's_14371 (coe v0))
-- Ledger.Utxo.Haskell._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2333 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Haskell._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2335 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Haskell..generalizedField-tx
d_'46'generalizedField'45'tx_14367 ::
  T_GeneralizeTel_14375 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2838
d_'46'generalizedField'45'tx_14367 v0
  = case coe v0 of
      C_mkGeneralizeTel_14377 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-Γ
d_'46'generalizedField'45'Γ_14369 ::
  T_GeneralizeTel_14375 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850
d_'46'generalizedField'45'Γ_14369 v0
  = case coe v0 of
      C_mkGeneralizeTel_14377 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-s
d_'46'generalizedField'45's_14371 ::
  T_GeneralizeTel_14375 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_'46'generalizedField'45's_14371 v0
  = case coe v0 of
      C_mkGeneralizeTel_14377 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-s'
d_'46'generalizedField'45's''_14373 ::
  T_GeneralizeTel_14375 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_'46'generalizedField'45's''_14373 v0
  = case coe v0 of
      C_mkGeneralizeTel_14377 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.GeneralizeTel
d_GeneralizeTel_14375 a0 a1 = ()
data T_GeneralizeTel_14375
  = C_mkGeneralizeTel_14377 MAlonzo.Code.Ledger.Transaction.T_Tx_2838
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
