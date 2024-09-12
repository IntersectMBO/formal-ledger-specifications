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

module MAlonzo.Code.Ledger.Utxo where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Ext
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.Set.HashMap
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _._≤ᵗ_
d__'8804''7511'__16 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__16 = erased
-- _.Addr
d_Addr_38 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Addr_38 = erased
-- _.DCert
d_DCert_72 a0 = ()
-- _.THash
d_THash_88 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_88 = erased
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
-- _.DecEq-BaseAddr
d_DecEq'45'BaseAddr_110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_110 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
-- _.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_112 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_118 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))
-- _.DepositPurpose
d_DepositPurpose_186 a0 = ()
-- _.Deposits
d_Deposits_188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Deposits_188 = erased
-- _.ExUnits
d_ExUnits_198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_198 = erased
-- _.GovProposal
d_GovProposal_222 a0 = ()
-- _.MemoryEstimate
d_MemoryEstimate_266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_266 = erased
-- _.PParams
d_PParams_300 a0 = ()
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
-- _.TxOut
d_TxOut_450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_450 = erased
-- _.TxOutʰ
d_TxOut'688'_452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut'688'_452 = erased
-- _.UTxO
d_UTxO_456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_456 = erased
-- _.Value
d_Value_474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_474 = erased
-- _.coin
d_coin_506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_506 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
-- _.getValueʰ
d_getValue'688'_550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_550 ~v0 = du_getValue'688'_550
du_getValue'688'_550 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_550
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2904
-- _.inject
d_inject_560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_560 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
-- _.netId
d_netId_602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_602 ~v0 = du_netId_602
du_netId_602 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_602 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_666 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2894 (coe v0)
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
-- Ledger.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1752 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2360
      (coe v0) (coe v1)
-- Ledger.Utxo._.evalScripts
d_evalScripts_1762 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1762 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2378 (coe v0)
      (coe v1)
-- Ledger.Utxo.HasCoin-Map
d_HasCoin'45'Map_1836 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1836 ~v0 ~v1 ~v2 v3 = du_HasCoin'45'Map_1836 v3
du_HasCoin'45'Map_1836 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1836 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160 (coe v0)
              (coe
                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
              (coe
                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                 (coe
                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
              (coe (\ v2 -> v2)) (coe v1)))
-- Ledger.Utxo._*↓_
d__'42''8595'__1842 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1842 ~v0 v1 v2 = du__'42''8595'__1842 v1 v2
du__'42''8595'__1842 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1842 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_346
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v1)
               (coe (1 :: Integer)))))
-- Ledger.Utxo.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1848 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1848 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress_1848 v0 v2 v3 v4
du_isTwoPhaseScriptAddress_1848 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1848 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
         (coe MAlonzo.Code.Ledger.Address.du_payCred_108 (coe v3)))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Interface.ToBool.du_if_then_else__46
              (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45'Maybe_106)
              (coe
                 MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2990 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Address.du_getScriptHash_184 (coe v3) (coe v4))
                 (coe v1) (coe v2))
              (coe
                 MAlonzo.Code.Level.C_lift_20
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              (coe
                 (\ v5 ->
                    coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_3004 (coe v5)))
              (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
-- Ledger.Utxo.getDataHashes
d_getDataHashes_1860 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1860 ~v0 ~v1 v2 = du_getDataHashes_1860 v2
du_getDataHashes_1860 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1860 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30)
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_564
         (MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v1 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
         v0)
-- Ledger.Utxo.getInputHashes
d_getInputHashes_1864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1864 v0 ~v1 v2 v3
  = du_getInputHashes_1864 v0 v2 v3
du_getInputHashes_1864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1864 v0 v1 v2
  = coe
      du_getDataHashes_1860
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1130
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
              (coe
                 du_isTwoPhaseScriptAddress_1848 (coe v0) (coe v1) (coe v2)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
         (coe
            MAlonzo.Code.Interface.IsSet.du_range_542
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
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
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2810
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v1))))))
-- Ledger.Utxo.totExUnits
d_totExUnits_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> AgdaAny
d_totExUnits_1920 v0 ~v1 v2 = du_totExUnits_1920 v0 v2
du_totExUnits_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> AgdaAny
du_totExUnits_1920 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe
               MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
               (coe
                  MAlonzo.Code.Ledger.Script.d_Data'688'_190
                  (coe
                     MAlonzo.Code.Ledger.Script.d_ps_470
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_470
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2866
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2882 (coe v1)))
-- Ledger.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1932 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 -> Integer
d_utxoEntrySizeWithoutVal_1932 ~v0
  = du_utxoEntrySizeWithoutVal_1932
du_utxoEntrySizeWithoutVal_1932 :: Integer
du_utxoEntrySizeWithoutVal_1932 = coe (8 :: Integer)
-- Ledger.Utxo.utxoEntrySize
d_utxoEntrySize_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1934 v0 ~v1 v2 = du_utxoEntrySize_1934 v0 v2
du_utxoEntrySize_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1934 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_210
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2904 (coe v1)))
-- Ledger.Utxo.UTxOEnv
d_UTxOEnv_1938 a0 a1 = ()
data T_UTxOEnv_1938
  = C_UTxOEnv'46'constructor_8915 AgdaAny
                                  MAlonzo.Code.Ledger.PParams.T_PParams_242 Integer
-- Ledger.Utxo.UTxOEnv.slot
d_slot_1946 :: T_UTxOEnv_1938 -> AgdaAny
d_slot_1946 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8915 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.pparams
d_pparams_1948 ::
  T_UTxOEnv_1938 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1948 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8915 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.treasury
d_treasury_1950 :: T_UTxOEnv_1938 -> Integer
d_treasury_1950 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8915 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState
d_UTxOState_1952 a0 a1 = ()
data T_UTxOState_1952
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_1970 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Utxo.UTxOState.utxo
d_utxo_1962 ::
  T_UTxOState_1952 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1962 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1970 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.fees
d_fees_1964 :: T_UTxOState_1952 -> Integer
d_fees_1964 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1970 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.deposits
d_deposits_1966 ::
  T_UTxOState_1952 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1966 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1970 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.donations
d_donations_1968 :: T_UTxOState_1952 -> Integer
d_donations_1968 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1970 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1972 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__1972
  = C_UTXO'45'inductive_2818 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._._.outs
d_outs_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1982 ~v0 ~v1 v2 = du_outs_1982 v2
du_outs_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1982 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_854
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2842 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2814 (coe v0))
-- Ledger.Utxo._._.balance
d_balance_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1988 v0 ~v1 v2 = du_balance_1988 v0 v2
du_balance_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1988 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
            (coe
               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_470
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_470
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2904)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2894 (coe v0))
         (coe v1))
-- Ledger.Utxo._._.cbalance
d_cbalance_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1994 v0 ~v1 v2 = du_cbalance_1994 v0 v2
du_cbalance_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1994 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
      (coe du_balance_1988 (coe v0) (coe v1))
-- Ledger.Utxo._._.minfee
d_minfee_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Integer
d_minfee_1998 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1750 v1
               (MAlonzo.Code.Ledger.PParams.d_prices_328 (coe v2))
               (coe du_totExUnits_1920 (coe v0) (coe v4)))
            (coe MAlonzo.Code.Ledger.PParams.d_b_320 (coe v2)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
            (coe
               MAlonzo.Code.Data.Rational.Base.d_floor_346
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276
                  (coe
                     MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_330
                     (coe v2))
                  (coe
                     MAlonzo.Code.Data.Rational.Base.du__'47'__156
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                        (coe (\ v5 -> v5))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1758 (coe v1))
                           (coe
                              MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_454
                                 (MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))
                                 erased erased erased
                                 (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                                    (coe
                                       MAlonzo.Code.Ledger.Script.du_p1s_456
                                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_470
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824
                                          (coe v0)))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_refScripts_2928 (coe v0) (coe v4)
                                 (coe v3)))))
                     (coe (1 :: Integer)))))))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_318 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_2840
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v4))))
-- Ledger.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2008 v0 ~v1 = du_HasCoin'45'UTxO_2008 v0
du_HasCoin'45'UTxO_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2008 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_1994 (coe v0))
-- Ledger.Utxo.certDeposit
d_certDeposit_2010 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2010 ~v0 ~v1 v2 v3 = du_certDeposit_2010 v2 v3
du_certDeposit_2010 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2010 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_834 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Certs.C_regpool_838 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_816 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_324 (coe v1)))
         MAlonzo.Code.Ledger.Certs.C_regdrep_842 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818 (coe v3))
                   (coe v4))
         _ -> coe v2)
-- Ledger.Utxo.certRefund
d_certRefund_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
d_certRefund_2024 ~v0 ~v1 v2 = du_certRefund_2024 v2
du_certRefund_2024 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
du_certRefund_2024 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_430
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_836 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                (MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_844 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                (MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818 (coe v2))
         _ -> coe v1)
-- Ledger.Utxo.updateCertDeposits
d_updateCertDeposits_2030 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2030 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_2030 v0 v2 v3 v4
du_updateCertDeposits_2030 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2030 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1458
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             (coe
                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                   (coe
                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))))
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
                (coe
                   du_updateCertDeposits_2030 (coe v0) (coe v1) (coe v5) (coe v3))
                (coe du_certDeposit_2010 (coe v4) (coe v1)))
             (coe du_certRefund_2024 (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateProposalDeposits
d_updateProposalDeposits_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2042 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_2042 v0 v2 v3 v4 v5
du_updateProposalDeposits_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2042 v0 v1 v2 v3 v4
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
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
             (coe
                du_updateProposalDeposits_2042 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_820
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_284 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateDeposits
d_updateDeposits_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2054 v0 ~v1 v2 v3 v4
  = du_updateDeposits_2054 v0 v2 v3 v4
du_updateDeposits_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2054 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_2030 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2822 (coe v2))
      (coe
         du_updateProposalDeposits_2042 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2828 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2842 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354 (coe v1))
         (coe v3))
-- Ledger.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2106 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_2106 v0 v2 v3 v4
du_proposalDepositsΔ_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2106 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_2042 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txid_2842 (coe v3))
      (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
-- Ledger.Utxo.depositsChange
d_depositsChange_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2160 v0 ~v1 v2 v3 v4
  = du_depositsChange_2160 v0 v2 v3 v4
du_depositsChange_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2160 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_2054 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Utxo.inInterval
d_inInterval_2170 a0 a1 a2 a3 = ()
data T_inInterval_2170
  = C_both_2178 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2182 AgdaAny | C_upper_2186 AgdaAny | C_none_2188
-- Ledger.Utxo.Dec-inInterval
d_Dec'45'inInterval_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2190 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2190 v0 v2 v3
du_Dec'45'inInterval_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2190 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v2 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
           -> case coe v3 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                  -> case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                         -> let v7
                                  = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_230
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_230
                                            (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528
                                                  (coe v0)))
                                            v1 v6) in
                               coe
                                 (case coe v7 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                      -> if coe v9
                                           then case coe v10 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                    -> case coe v8 of
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                                           -> if coe v12
                                                                then case coe v13 of
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                                         -> coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                              (coe v12)
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                 (coe
                                                                                    C_both_2178
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe v11)
                                                                                       (coe v14))))
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                else coe
                                                                       seq (coe v13)
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                          (coe v12)
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else coe
                                                  seq (coe v10)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                     (coe v9)
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                         -> let v6
                                  = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_230
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (case coe v6 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                   -> if coe v7
                                        then case coe v8 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                                 -> coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                      (coe v7)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                         (coe C_lower_2182 v9))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else coe
                                               seq (coe v8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                         -> let v6
                                  = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_230
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528
                                               (coe v0)))
                                         v1 v5) in
                            coe
                              (case coe v6 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                   -> if coe v7
                                        then case coe v8 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                                 -> coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                      (coe v7)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                         (coe C_upper_2186 v9))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else coe
                                               seq (coe v8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                         -> coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_none_2188))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2292 v0 ~v1
  = du_HasCoin'45'UTxOState_2292 v0
du_HasCoin'45'UTxOState_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2292 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_1994 (coe v0) (coe d_utxo_1962 (coe v1)))
                    (coe d_donations_1968 (coe v1)))
                 (coe d_fees_1964 (coe v1)))
              (coe
                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                 (coe
                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                    (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                 (coe
                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                 (coe (\ v2 -> v2)) (coe d_deposits_1966 (coe v1)))))
-- Ledger.Utxo._=>ᵇ_
d__'61''62''7495'__2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__2296 ~v0 ~v1 v2 v3
  = du__'61''62''7495'__2296 v2 v3
du__'61''62''7495'__2296 :: Bool -> Bool -> Bool
du__'61''62''7495'__2296 v0 v1
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94) (coe v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe (\ v2 -> v1))
      (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
-- Ledger.Utxo._≤ᵇ_
d__'8804''7495'__2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  Integer -> Integer -> Bool
d__'8804''7495'__2302 ~v0 ~v1 v2 v3 = du__'8804''7495'__2302 v2 v3
du__'8804''7495'__2302 :: Integer -> Integer -> Bool
du__'8804''7495'__2302 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
         (coe
            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802 (coe v0)
            (coe v1)))
-- Ledger.Utxo._≥ᵇ_
d__'8805''7495'__2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  Integer -> Integer -> Bool
d__'8805''7495'__2304 ~v0 ~v1 v2 v3 = du__'8805''7495'__2304 v2 v3
du__'8805''7495'__2304 :: Integer -> Integer -> Bool
du__'8805''7495'__2304 v0 v1
  = coe du__'8804''7495'__2302 (coe v1) (coe v0)
-- Ledger.Utxo.≟-∅ᵇ
d_'8799''45''8709''7495'_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_2316 ~v0 ~v1 ~v2 v3 v4
  = du_'8799''45''8709''7495'_2316 v3 v4
du_'8799''45''8709''7495'_2316 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_2316 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_256 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8709'_430
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
-- Ledger.Utxo.coinPolicies
d_coinPolicies_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 -> [AgdaAny]
d_coinPolicies_2320 v0 ~v1 = du_coinPolicies_2320 v0
du_coinPolicies_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_2320 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
         (1 :: Integer))
-- Ledger.Utxo.isAdaOnlyᵇ
d_isAdaOnly'7495'_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_2322 v0 ~v1 v2 = du_isAdaOnly'7495'_2322 v0 v2
du_isAdaOnly'7495'_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_2322 v0 v1
  = coe
      MAlonzo.Code.Interface.ToBool.du_toBool_64
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
                    (coe v2) (coe du_coinPolicies_2320 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)) v1))
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
                    (coe v2)
                    (coe
                       MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
                       v1)))
            (coe du_coinPolicies_2320 (coe v0))))
-- Ledger.Utxo.feesOK
d_feesOK_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_2326 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         du__'8804''7495'__2302
         (coe d_minfee_1998 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txfee_2816
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v3))))
      (coe
         du__'61''62''7495'__2296
         (coe
            MAlonzo.Code.Data.Bool.Base.d_not_22
            (coe
               du_'8799''45''8709''7495'_2316
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200 (coe v0)))
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_470
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824
                                    (coe v0))))))
                     (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                        (coe
                           MAlonzo.Code.Ledger.Script.d_ps_470
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824
                              (coe v0))))))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2866
                     (coe MAlonzo.Code.Ledger.Transaction.d_wits_2882 (coe v3))))))
         (coe
            MAlonzo.Code.Data.Bool.Base.d__'8743'__24
            (coe
               MAlonzo.Code.Axiom.Set.du_all'7495'_1636
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                       (coe
                          MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
                          (coe
                             MAlonzo.Code.Ledger.Address.du_payCred_108
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))))
               (coe du_collateralRange_2462 (coe v0) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
               (coe
                  du_isAdaOnly'7495'_2322 (coe v0)
                  (coe du_bal_2464 (coe v0) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                  (coe
                     du__'8805''7495'__2304
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
                           (coe du_bal_2464 (coe v0) (coe v3) (coe v4)))
                        (coe (100 :: Integer)))
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_txfee_2816
                           (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_collateralPercentage_340 (coe v2))))
                  (coe
                     MAlonzo.Code.Data.Bool.Base.d_not_22
                     (coe
                        du_'8799''45''8709''7495'_2316
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200 (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_collateral_2844
                           (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v3)))))))))
-- Ledger.Utxo._.collateralRange
d_collateralRange_2462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_2462 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_2462 v0 v3 v4
du_collateralRange_2462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_2462 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.IsSet.du_range_542
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
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
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2894 (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2844
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v1))))
-- Ledger.Utxo._.bal
d_bal_2464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_2464 v0 ~v1 ~v2 v3 v4 = du_bal_2464 v0 v3 v4
du_bal_2464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_2464 v0 v1 v2
  = coe
      du_balance_1988 (coe v0)
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
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2844
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v1))))
-- Ledger.Utxo._._.depositRefunds
d_depositRefunds_2478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
d_depositRefunds_2478 v0 ~v1 v2 v3 v4
  = du_depositRefunds_2478 v0 v2 v3 v4
du_depositRefunds_2478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
du_depositRefunds_2478 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_2160 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1966 (coe v2)))
-- Ledger.Utxo._._.newDeposits
d_newDeposits_2486 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
d_newDeposits_2486 v0 ~v1 v2 v3 v4
  = du_newDeposits_2486 v0 v2 v3 v4
du_newDeposits_2486 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
du_newDeposits_2486 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_2160 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1966 (coe v2)))
-- Ledger.Utxo._._.consumed
d_consumed_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> AgdaAny
d_consumed_2494 v0 ~v1 v2 v3 v4 = du_consumed_2494 v0 v2 v3 v4
du_consumed_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> AgdaAny
du_consumed_2494 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__982
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__982
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
         (coe
            du_balance_1988 (coe v0)
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
               (coe d_utxo_1962 (coe v2))
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2810 (coe v3))))
         (MAlonzo.Code.Ledger.Transaction.d_mint_2818 (coe v3)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
         (coe du_depositRefunds_2478 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Utxo._._.produced
d_produced_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> AgdaAny
d_produced_2502 v0 ~v1 v2 v3 v4 = du_produced_2502 v0 v2 v3 v4
du_produced_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> AgdaAny
du_produced_2502 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__982
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__982
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__982
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
            (coe du_balance_1988 (coe v0) (coe du_outs_1982 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_2816 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
            (coe du_newDeposits_2486 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2830 (coe v3)))
-- Ledger.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2510 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2510
  = C_Scripts'45'Yes_2590 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2670 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._.txdonation
d_txdonation_2548 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Integer
d_txdonation_2548 ~v0 ~v1 ~v2 v3 = du_txdonation_2548 v3
du_txdonation_2548 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Integer
du_txdonation_2548 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2830
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v0))
-- Ledger.Utxo._.txfee
d_txfee_2550 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Integer
d_txfee_2550 ~v0 ~v1 ~v2 v3 = du_txfee_2550 v3
du_txfee_2550 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Integer
du_txfee_2550 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2816
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v0))
-- Ledger.Utxo._.txins
d_txins_2554 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2554 ~v0 ~v1 ~v2 v3 = du_txins_2554 v3
du_txins_2554 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2554 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2810
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v0))
-- Ledger.Utxo._.pparams
d_pparams_2572 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2572 ~v0 v1 ~v2 ~v3 = du_pparams_2572 v1
du_pparams_2572 ::
  T_UTxOEnv_1938 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2572 v0 = coe d_pparams_1948 (coe v0)
-- Ledger.Utxo._.slot
d_slot_2574 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> AgdaAny
d_slot_2574 ~v0 v1 ~v2 ~v3 = du_slot_2574 v1
du_slot_2574 :: T_UTxOEnv_1938 -> AgdaAny
du_slot_2574 v0 = coe d_slot_1946 (coe v0)
-- Ledger.Utxo._.treasury
d_treasury_2576 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Integer
d_treasury_2576 ~v0 v1 ~v2 ~v3 = du_treasury_2576 v1
du_treasury_2576 :: T_UTxOEnv_1938 -> Integer
du_treasury_2576 v0 = coe d_treasury_1950 (coe v0)
-- Ledger.Utxo._.deposits
d_deposits_2580 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2580 ~v0 ~v1 v2 ~v3 = du_deposits_2580 v2
du_deposits_2580 ::
  T_UTxOState_1952 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2580 v0 = coe d_deposits_1966 (coe v0)
-- Ledger.Utxo._.donations
d_donations_2582 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Integer
d_donations_2582 ~v0 ~v1 v2 ~v3 = du_donations_2582 v2
du_donations_2582 :: T_UTxOState_1952 -> Integer
du_donations_2582 v0 = coe d_donations_1968 (coe v0)
-- Ledger.Utxo._.fees
d_fees_2584 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Integer
d_fees_2584 ~v0 ~v1 v2 ~v3 = du_fees_2584 v2
du_fees_2584 :: T_UTxOState_1952 -> Integer
du_fees_2584 v0 = coe d_fees_1964 (coe v0)
-- Ledger.Utxo._.utxo
d_utxo_2586 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2586 ~v0 ~v1 v2 ~v3 = du_utxo_2586 v2
du_utxo_2586 ::
  T_UTxOState_1952 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2586 v0 = coe d_utxo_1962 (coe v0)
-- Ledger.Utxo._.collateral
d_collateral_2610 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2610 ~v0 ~v1 ~v2 v3 = du_collateral_2610 v3
du_collateral_2610 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2610 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2844
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v0))
-- Ledger.Utxo._.pparams
d_pparams_2652 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2652 ~v0 v1 ~v2 ~v3 = du_pparams_2652 v1
du_pparams_2652 ::
  T_UTxOEnv_1938 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2652 v0 = coe d_pparams_1948 (coe v0)
-- Ledger.Utxo._.slot
d_slot_2654 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> AgdaAny
d_slot_2654 ~v0 v1 ~v2 ~v3 = du_slot_2654 v1
du_slot_2654 :: T_UTxOEnv_1938 -> AgdaAny
du_slot_2654 v0 = coe d_slot_1946 (coe v0)
-- Ledger.Utxo._.treasury
d_treasury_2656 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Integer
d_treasury_2656 ~v0 v1 ~v2 ~v3 = du_treasury_2656 v1
du_treasury_2656 :: T_UTxOEnv_1938 -> Integer
du_treasury_2656 v0 = coe d_treasury_1950 (coe v0)
-- Ledger.Utxo._.deposits
d_deposits_2660 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2660 ~v0 ~v1 v2 ~v3 = du_deposits_2660 v2
du_deposits_2660 ::
  T_UTxOState_1952 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2660 v0 = coe d_deposits_1966 (coe v0)
-- Ledger.Utxo._.donations
d_donations_2662 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Integer
d_donations_2662 ~v0 ~v1 v2 ~v3 = du_donations_2662 v2
du_donations_2662 :: T_UTxOState_1952 -> Integer
du_donations_2662 v0 = coe d_donations_1968 (coe v0)
-- Ledger.Utxo._.fees
d_fees_2664 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Integer
d_fees_2664 ~v0 ~v1 v2 ~v3 = du_fees_2664 v2
du_fees_2664 :: T_UTxOState_1952 -> Integer
du_fees_2664 v0 = coe d_fees_1964 (coe v0)
-- Ledger.Utxo._.utxo
d_utxo_2666 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2666 ~v0 ~v1 v2 ~v3 = du_utxo_2666 v2
du_utxo_2666 ::
  T_UTxOState_1952 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2666 v0 = coe d_utxo_1962 (coe v0)
-- Ledger.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2672 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2672 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2378 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2360
                  (coe v0) (coe v1) (coe d_pparams_1948 (coe v2)) (coe v4)
                  (coe d_utxo_1962 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2884 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2884 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2674 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2378 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2360
                  (coe v0) (coe v1) (coe d_pparams_1948 (coe v2)) (coe v4)
                  (coe d_utxo_1962 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2884 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2884 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Utxo._≡?_
d__'8801''63'__2686 a0 a1 a2 a3 a4 = ()
data T__'8801''63'__2686
  = C_'8801''63''45'nothing_2692 | C_'8801''63''45'just_2696
-- Ledger.Utxo.≟?
d_'8799''63'_2704 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_2704 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8799''63'_2704 v3 v4 v5
du_'8799''63'_2704 ::
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_2704 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> let v4
                 = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v2 v3 v1 in
           coe
             (case coe v4 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                  -> if coe v5
                       then coe
                              seq (coe v6)
                              (coe
                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe v5)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe C_'8801''63''45'just_2696))))
                       else coe
                              seq (coe v6)
                              (coe
                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe v5)
                                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_'8801''63''45'nothing_2692)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._.body
d_body_2732 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768
d_body_2732 ~v0 ~v1 v2 = du_body_2732 v2
du_body_2732 ::
  T_GeneralizeTel_68583 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768
du_body_2732 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2880
      (coe d_'46'generalizedField'45'tx_68575 (coe v0))
-- Ledger.Utxo._.curTreasury
d_curTreasury_2740 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> Maybe Integer
d_curTreasury_2740 ~v0 ~v1 v2 = du_curTreasury_2740 v2
du_curTreasury_2740 :: T_GeneralizeTel_68583 -> Maybe Integer
du_curTreasury_2740 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2838
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2880
         (coe d_'46'generalizedField'45'tx_68575 (coe v0)))
-- Ledger.Utxo._.mint
d_mint_2742 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> AgdaAny
d_mint_2742 ~v0 ~v1 v2 = du_mint_2742 v2
du_mint_2742 :: T_GeneralizeTel_68583 -> AgdaAny
du_mint_2742 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2818
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2880
         (coe d_'46'generalizedField'45'tx_68575 (coe v0)))
-- Ledger.Utxo._.refInputs
d_refInputs_2744 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2744 ~v0 ~v1 v2 = du_refInputs_2744 v2
du_refInputs_2744 ::
  T_GeneralizeTel_68583 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2744 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2812
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2880
         (coe d_'46'generalizedField'45'tx_68575 (coe v0)))
-- Ledger.Utxo._.txNetworkId
d_txNetworkId_2752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> Maybe AgdaAny
d_txNetworkId_2752 ~v0 ~v1 v2 = du_txNetworkId_2752 v2
du_txNetworkId_2752 :: T_GeneralizeTel_68583 -> Maybe AgdaAny
du_txNetworkId_2752 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2836
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2880
         (coe d_'46'generalizedField'45'tx_68575 (coe v0)))
-- Ledger.Utxo._.txins
d_txins_2762 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2762 ~v0 ~v1 v2 = du_txins_2762 v2
du_txins_2762 ::
  T_GeneralizeTel_68583 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2762 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2810
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2880
         (coe d_'46'generalizedField'45'tx_68575 (coe v0)))
-- Ledger.Utxo._.txouts
d_txouts_2764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2764 ~v0 ~v1 v2 = du_txouts_2764 v2
du_txouts_2764 ::
  T_GeneralizeTel_68583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2764 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2814
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2880
         (coe d_'46'generalizedField'45'tx_68575 (coe v0)))
-- Ledger.Utxo._.txsize
d_txsize_2768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> Integer
d_txsize_2768 ~v0 ~v1 v2 = du_txsize_2768 v2
du_txsize_2768 :: T_GeneralizeTel_68583 -> Integer
du_txsize_2768 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2840
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2880
         (coe d_'46'generalizedField'45'tx_68575 (coe v0)))
-- Ledger.Utxo._.txvldt
d_txvldt_2772 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2772 ~v0 ~v1 v2 = du_txvldt_2772 v2
du_txvldt_2772 ::
  T_GeneralizeTel_68583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2772 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2820
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2880
         (coe d_'46'generalizedField'45'tx_68575 (coe v0)))
-- Ledger.Utxo._.txwdrls
d_txwdrls_2776 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2776 ~v0 ~v1 v2 = du_txwdrls_2776 v2
du_txwdrls_2776 ::
  T_GeneralizeTel_68583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2776 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2824
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2880
         (coe d_'46'generalizedField'45'tx_68575 (coe v0)))
-- Ledger.Utxo._.pparams
d_pparams_2780 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2780 ~v0 ~v1 v2 = du_pparams_2780 v2
du_pparams_2780 ::
  T_GeneralizeTel_68583 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2780 v0
  = coe
      d_pparams_1948 (coe d_'46'generalizedField'45'Γ_68577 (coe v0))
-- Ledger.Utxo._.slot
d_slot_2782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> AgdaAny
d_slot_2782 ~v0 ~v1 v2 = du_slot_2782 v2
du_slot_2782 :: T_GeneralizeTel_68583 -> AgdaAny
du_slot_2782 v0
  = coe d_slot_1946 (coe d_'46'generalizedField'45'Γ_68577 (coe v0))
-- Ledger.Utxo._.treasury
d_treasury_2784 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> Integer
d_treasury_2784 ~v0 ~v1 v2 = du_treasury_2784 v2
du_treasury_2784 :: T_GeneralizeTel_68583 -> Integer
du_treasury_2784 v0
  = coe
      d_treasury_1950 (coe d_'46'generalizedField'45'Γ_68577 (coe v0))
-- Ledger.Utxo._.deposits
d_deposits_2788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2788 ~v0 ~v1 v2 = du_deposits_2788 v2
du_deposits_2788 ::
  T_GeneralizeTel_68583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2788 v0
  = coe
      d_deposits_1966 (coe d_'46'generalizedField'45's_68579 (coe v0))
-- Ledger.Utxo._.donations
d_donations_2790 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> Integer
d_donations_2790 ~v0 ~v1 v2 = du_donations_2790 v2
du_donations_2790 :: T_GeneralizeTel_68583 -> Integer
du_donations_2790 v0
  = coe
      d_donations_1968 (coe d_'46'generalizedField'45's_68579 (coe v0))
-- Ledger.Utxo._.fees
d_fees_2792 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> Integer
d_fees_2792 ~v0 ~v1 v2 = du_fees_2792 v2
du_fees_2792 :: T_GeneralizeTel_68583 -> Integer
du_fees_2792 v0
  = coe d_fees_1964 (coe d_'46'generalizedField'45's_68579 (coe v0))
-- Ledger.Utxo._.utxo
d_utxo_2794 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_68583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2794 ~v0 ~v1 v2 = du_utxo_2794 v2
du_utxo_2794 ::
  T_GeneralizeTel_68583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2794 v0
  = coe d_utxo_1962 (coe d_'46'generalizedField'45's_68579 (coe v0))
-- Ledger.Utxo.UTXO-premises
d_UTXO'45'premises_2860 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  T_UTxOEnv_1938 ->
  T_UTxOState_1952 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2860 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_256
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2810
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_430
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Interface.IsSet.du_dom_540
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1458
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                          (coe d_utxo_1962 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__668
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2810
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2812
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_256
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200 (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__692
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2810
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2812
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_430
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_2190 (coe v0) (coe d_slot_1946 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2820
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe
                           d_feesOK_2326 (coe v0) (coe v1) (coe d_pparams_1948 (coe v3))
                           (coe v2) (coe d_utxo_1962 (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
                           (coe
                              du_consumed_2494 (coe v0) (coe d_pparams_1948 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2)))
                           (coe
                              du_produced_2502 (coe v0) (coe d_pparams_1948 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2818
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2840
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_304
                                    (coe d_pparams_1948 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248
                                                  (coe v0))
                                               (mulInt
                                                  (coe
                                                     du_utxoEntrySize_1934 (coe v0)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v5)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_minUTxOValue_332
                                                     (coe d_pparams_1948 (coe v3)))))
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2904
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v5)))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txOutHash_2894
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2814
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2880
                                                (coe v2))))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                               (coe
                                                  MAlonzo.Code.Ledger.Abstract.d_serSize_1752 v1
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2904
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v5))))
                                               (MAlonzo.Code.Ledger.PParams.d_maxValSize_312
                                                  (coe d_pparams_1948 (coe v3)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2894
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2814
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2880
                                                   (coe v2))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'All_28
                                                  (coe
                                                     (\ v6 ->
                                                        MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                                                  (coe
                                                     (\ v6 ->
                                                        coe
                                                          MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                          (MAlonzo.Code.Ledger.Address.d_attrsSize_74
                                                             (coe v6))
                                                          (64 :: Integer)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v5))))
                                          (coe
                                             MAlonzo.Code.Interface.IsSet.du_range_542
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2894
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2814
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2880
                                                      (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                     (coe
                                                        MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_netId_112
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v5)))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_networkId_2364
                                                        (coe v0))))
                                             (coe
                                                MAlonzo.Code.Interface.IsSet.du_range_542
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2894
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2814
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2880
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                (coe
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.d_net_82
                                                           (coe v5))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_networkId_2364
                                                           (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Interface.IsSet.du_dom_540
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                   (coe
                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2824
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2880
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                (coe
                                                   du_'8799''63'_2704
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2836
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2880
                                                         (coe v2)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_networkId_2364
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218
                                                         (coe v0))))
                                                (coe
                                                   du_'8799''63'_2704
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2838
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2880
                                                         (coe v2)))
                                                   (coe d_treasury_1950 (coe v3))
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_68575 ::
  T_GeneralizeTel_68583 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2870
d_'46'generalizedField'45'tx_68575 v0
  = case coe v0 of
      C_mkGeneralizeTel_68585 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_68577 ::
  T_GeneralizeTel_68583 -> T_UTxOEnv_1938
d_'46'generalizedField'45'Γ_68577 v0
  = case coe v0 of
      C_mkGeneralizeTel_68585 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s
d_'46'generalizedField'45's_68579 ::
  T_GeneralizeTel_68583 -> T_UTxOState_1952
d_'46'generalizedField'45's_68579 v0
  = case coe v0 of
      C_mkGeneralizeTel_68585 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_68581 ::
  T_GeneralizeTel_68583 -> T_UTxOState_1952
d_'46'generalizedField'45's''_68581 v0
  = case coe v0 of
      C_mkGeneralizeTel_68585 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_68583 a0 a1 = ()
data T_GeneralizeTel_68583
  = C_mkGeneralizeTel_68585 MAlonzo.Code.Ledger.Transaction.T_Tx_2870
                            T_UTxOEnv_1938 T_UTxOState_1952 T_UTxOState_1952
