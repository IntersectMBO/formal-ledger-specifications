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

module MAlonzo.Code.Ledger.Utxo.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Definitions.RawMagma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sign.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Unary.All
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _._≈_
d__'8776'__16 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__16 = erased
-- _.DCert
d_DCert_74 a0 = ()
-- _.DecEq-BaseAddr
d_DecEq'45'BaseAddr_112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_112 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))
-- _.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_114 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_120 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_146 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))
-- _.DepositPurpose
d_DepositPurpose_186 a0 = ()
-- _.GovProposal
d_GovProposal_222 a0 = ()
-- _.PParams
d_PParams_298 a0 = ()
-- _.Tx
d_Tx_440 a0 = ()
-- _.UTxO
d_UTxO_454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_454 = erased
-- _.Value
d_Value_472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_472 = erased
-- _.addValue
d_addValue_494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_494 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276 (coe v0))
-- _.coin
d_coin_504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_504 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276 (coe v0))
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
-- _.GovernanceActions.GovProposal
d_GovProposal_992 a0 = ()
-- _.PParams.Emax
d_Emax_1144 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_1144 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_1146 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_1146 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_1148 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1148 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_1150 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_1150 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1152 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_1152 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1154 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_1154 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1156 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_1156 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1158 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_1158 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_1160 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_1160 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1162 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_1162 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1164 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_1164 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1166 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_1166 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1168 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_1168 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1170 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_1170 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1172 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_1172 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1174 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_1174 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1176 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_1176 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1178 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_1178 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1180 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_1180 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1182 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_1182 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1184 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_1184 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1186 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_1186 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1188 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_1188 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1190 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_1190 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1192 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1192 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1194 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_1194 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_1196 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_1196 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1198 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_1198 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1200 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1200 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_1202 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_1202 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_1204 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1204 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1206 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1206 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1208 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_1208 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.Tx.body
d_body_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796
d_body_1634 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v0)
-- _.Tx.isValid
d_isValid_1636 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> Bool
d_isValid_1636 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2912 (coe v0)
-- _.Tx.txAD
d_txAD_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> Maybe AgdaAny
d_txAD_1638 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2914 (coe v0)
-- _.Tx.wits
d_wits_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2878
d_wits_1640 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2910 (coe v0)
-- Ledger.Utxo.Properties._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1754 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Properties._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1756 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Properties._.HasCoin-Map
d_HasCoin'45'Map_1760 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1760 ~v0 ~v1 = du_HasCoin'45'Map_1760
du_HasCoin'45'Map_1760 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1760 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1854 v1
-- Ledger.Utxo.Properties._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1764 v0 ~v1
  = du_HasCoin'45'UTxOState_1764 v0
du_HasCoin'45'UTxOState_1764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1764 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2318 (coe v0)
-- Ledger.Utxo.Properties._.UTxOEnv
d_UTxOEnv_1778 a0 a1 = ()
-- Ledger.Utxo.Properties._.UTxOState
d_UTxOState_1780 a0 a1 = ()
-- Ledger.Utxo.Properties._.balance
d_balance_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1782 v0 ~v1 = du_balance_1782 v0
du_balance_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1782 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_2006 (coe v0)
-- Ledger.Utxo.Properties._.cbalance
d_cbalance_1786 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1786 v0 ~v1 = du_cbalance_1786 v0
du_cbalance_1786 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1786 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_2012 (coe v0)
-- Ledger.Utxo.Properties._.consumed
d_consumed_1794 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> AgdaAny
d_consumed_1794 v0 ~v1 = du_consumed_1794 v0
du_consumed_1794 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> AgdaAny
du_consumed_1794 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2528 (coe v0)
-- Ledger.Utxo.Properties._.depositRefunds
d_depositRefunds_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> Integer
d_depositRefunds_1796 v0 ~v1 = du_depositRefunds_1796 v0
du_depositRefunds_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> Integer
du_depositRefunds_1796 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2512 (coe v0)
-- Ledger.Utxo.Properties._.newDeposits
d_newDeposits_1816 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> Integer
d_newDeposits_1816 v0 ~v1 = du_newDeposits_1816 v0
du_newDeposits_1816 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> Integer
du_newDeposits_1816 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2520 (coe v0)
-- Ledger.Utxo.Properties._.outs
d_outs_1820 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1820 ~v0 ~v1 = du_outs_1820
du_outs_1820 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1820 = coe MAlonzo.Code.Ledger.Utxo.du_outs_2000
-- Ledger.Utxo.Properties._.produced
d_produced_1822 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> AgdaAny
d_produced_1822 v0 ~v1 = du_produced_1822 v0
du_produced_1822 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> AgdaAny
du_produced_1822 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2536 (coe v0)
-- Ledger.Utxo.Properties._.updateCertDeposits
d_updateCertDeposits_1830 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1830 v0 ~v1 = du_updateCertDeposits_1830 v0
du_updateCertDeposits_1830 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1830 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2056 (coe v0)
-- Ledger.Utxo.Properties._.updateDeposits
d_updateDeposits_1832 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1832 v0 ~v1 = du_updateDeposits_1832 v0
du_updateDeposits_1832 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1832 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2080 (coe v0)
-- Ledger.Utxo.Properties._.updateProposalDeposits
d_updateProposalDeposits_1834 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1834 v0 ~v1
  = du_updateProposalDeposits_1834 v0
du_updateProposalDeposits_1834 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1834 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2068 (coe v0)
-- Ledger.Utxo.Properties._.UTxOEnv.pparams
d_pparams_1870 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1870 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1966 (coe v0)
-- Ledger.Utxo.Properties._.UTxOEnv.slot
d_slot_1872 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 -> AgdaAny
d_slot_1872 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1964 (coe v0)
-- Ledger.Utxo.Properties._.UTxOEnv.treasury
d_treasury_1874 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 -> Integer
d_treasury_1874 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1968 (coe v0)
-- Ledger.Utxo.Properties._.UTxOState.deposits
d_deposits_1878 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1878 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1984 (coe v0)
-- Ledger.Utxo.Properties._.UTxOState.donations
d_donations_1880 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 -> Integer
d_donations_1880 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1986 (coe v0)
-- Ledger.Utxo.Properties._.UTxOState.fees
d_fees_1882 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 -> Integer
d_fees_1882 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1982 (coe v0)
-- Ledger.Utxo.Properties._.UTxOState.utxo
d_utxo_1884 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1884 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1980 (coe v0)
-- Ledger.Utxo.Properties.Computational-UTXOS
d_Computational'45'UTXOS_2014 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOS_2014 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2108 (coe v0) (coe v1))
-- Ledger.Utxo.Properties._.go.computeProof
d_computeProof_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2108 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2706 (coe v0)
                       (coe v1) (coe v2) (coe v3) (coe v4))))
              (MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2708 (coe v0)
                       (coe v1) (coe v2) (coe v3) (coe v4)))) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> case coe v6 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                  -> let v10
                           = coe
                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                               (coe ("isValid check failed" :: Data.Text.Text)) in
                     coe
                       (if coe v8
                          then case coe v9 of
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                   -> case coe v7 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                          -> case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                                                 -> case coe v13 of
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                        -> coe
                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1988
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_unions_184
                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                            erased
                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_txins_2838
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                          (coe
                                                                                                             v4)))))
                                                                                              (\ v15 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                              erased
                                                                                              erased
                                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Utxo.du_outs_2000
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                       (coe
                                                                                                          v4))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                             erased
                                                                                                             erased
                                                                                                             (\ v15 ->
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v15))
                                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                   erased
                                                                                                                   erased
                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                                                         (coe
                                                                                                                            v3)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                      erased
                                                                                                                      erased
                                                                                                                      erased
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                         (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                         erased
                                                                                                                         erased
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                            erased
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                                                                                                  (coe
                                                                                                                                     v0)))
                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_txins_2838
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                  (coe
                                                                                                                                     v4)))))
                                                                                                                      (\ v15 ->
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                           (coe
                                                                                                                              v15)))))))))
                                                                                                 (\ v15 ->
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         v15)))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                      erased)
                                                                   (coe
                                                                      addInt
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_fees_1982
                                                                         (coe v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2056
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                         (coe v2))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_txcerts_2850
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2068
                                                                         (coe v0)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_txprop_2856
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                               (coe v4)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_txid_2870
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                               (coe v4)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                               (coe v2)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                            (coe v3))))
                                                                   (coe
                                                                      addInt
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_donations_1986
                                                                         (coe v3))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Utxo.C_Scripts'45'Yes_2624
                                                                   v11))
                                                      _ -> coe v10
                                               _ -> coe v10
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> coe v10
                          else (case coe v9 of
                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                    -> case coe v7 of
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                           -> case coe v12 of
                                                MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                  -> case coe v13 of
                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                         -> coe
                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1988
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_specification_174
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             erased erased
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                   (coe v3)))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                erased erased erased
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                   (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                   erased erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                            (coe
                                                                                               v0))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                                                            (coe
                                                                                               v0)))
                                                                                      (MAlonzo.Code.Ledger.Transaction.d_collateral_2872
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                            (coe
                                                                                               v4)))))
                                                                                (\ v15 ->
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v15)))))
                                                                       (coe
                                                                          (\ v15 v16 v17 v18 v19 ->
                                                                             coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                               (MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                  (coe v3))
                                                                               v15 v16 v17
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_collateral_2872
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                          (coe
                                                                                                             v4)))))
                                                                                              (\ v20 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v20))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe v15)
                                                                                           (coe
                                                                                              v16)))
                                                                                     v18))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_collateral_2872
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                          (coe
                                                                                                             v4)))))
                                                                                              (\ v20 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v20))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe v15)
                                                                                           (coe
                                                                                              v17)))
                                                                                     v19)))))
                                                                    (coe
                                                                       addInt
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Utxo.du_cbalance_2012
                                                                          (coe v0)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   erased erased
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                         (coe v3)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                      erased erased
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                               (coe
                                                                                                  v0))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                                                               (coe
                                                                                                  v0)))
                                                                                         (MAlonzo.Code.Ledger.Transaction.d_collateral_2872
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                               (coe
                                                                                                  v4))))
                                                                                      (\ v15 ->
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v15)))))
                                                                             (coe
                                                                                (\ v15 v16 v17 v18
                                                                                   v19 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                        (coe v3))
                                                                                     v15 v16 v17
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_collateral_2872
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                             (coe
                                                                                                                v4))))
                                                                                                    (\ v20 ->
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v20))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                 (coe
                                                                                                    v15)
                                                                                                 (coe
                                                                                                    v16)))
                                                                                           v18))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_collateral_2872
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                             (coe
                                                                                                                v4))))
                                                                                                    (\ v20 ->
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v20))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                 (coe
                                                                                                    v15)
                                                                                                 (coe
                                                                                                    v17)))
                                                                                           v19))))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Utxo.d_fees_1982
                                                                          (coe v3)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                       (coe v3))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Utxo.d_donations_1986
                                                                       (coe v3)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Utxo.C_Scripts'45'No_2704
                                                                    v14))
                                                       _ -> coe v10
                                                _ -> coe v10
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> coe v10))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.Properties._.go.completeness
d_completeness_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2544 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2118 = erased
-- Ledger.Utxo.Properties.Computational-UTXO'
d_Computational'45'UTXO''_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXO''_2148 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2304 (coe v0) (coe v1))
-- Ledger.Utxo.Properties._.Go.genErr
d_genErr_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_genErr_2186 v0 v1 v2 v3 v4 ~v5 = du_genErr_2186 v0 v1 v2 v3 v4
du_genErr_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_genErr_2186 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                 (coe
                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                    (coe
                       MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_256
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_txins_2838
                       (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v4)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'8709'_430
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1458
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
              erased in
    coe
      (case coe v5 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
           -> coe
                ("\172 TxBody.txins (Tx.body tx) \8802 \8709" :: Data.Text.Text)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
           -> let v7
                    = coe
                        MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                   erased
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                      (coe
                                         (\ v8 ->
                                            coe
                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                              (coe
                                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                 erased () erased
                                                 (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                    (coe v0))
                                                 (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                    (coe v0)))
                                              (coe v8)
                                              (coe
                                                 MAlonzo.Code.Interface.IsSet.du_dom_540
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                    (coe v3))))))
                                   v7))
                           (coe
                              MAlonzo.Code.Axiom.Set.du__'8746'__668
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txins_2838
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v4)))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_refInputs_2840
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v4)))))
                        erased in
              coe
                (case coe v7 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                     -> coe
                          ("\172 TxBody.txins (Tx.body tx) \8838 dom (UTxOState.utxo s)"
                           ::
                           Data.Text.Text)
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                     -> let v9
                              = coe
                                  MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                  (coe
                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                     (coe
                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_256
                                           (coe
                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                              erased () erased
                                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                 (coe v0))
                                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                 (coe v0)))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du__'8745'__692
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                           erased
                                           (coe
                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                              MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                              MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                 (coe v0))
                                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txins_2838
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v4)))
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_refInputs_2840
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2908
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8709'_430
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                                  erased in
                        coe
                          (case coe v9 of
                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                               -> coe ("\172 refInputs \8838 dom utxo " :: Data.Text.Text)
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                               -> let v11
                                        = coe
                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                            (coe
                                               MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2216
                                               (coe v0)
                                               (coe MAlonzo.Code.Ledger.Utxo.d_slot_1964 (coe v2))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_txvldt_2848
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                     (coe v4))))
                                            erased in
                                  coe
                                    (case coe v11 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                         -> coe
                                              ("\172 inInterval (UTxOEnv.slot \915) (txvldt (Tx.body tx))"
                                               ::
                                               Data.Text.Text)
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                         -> let v13
                                                  = coe
                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Utxo.d_feesOK_2352
                                                            (coe v0) (coe v1)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                               (coe v2))
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                               (coe v3)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                                      erased in
                                            coe
                                              (case coe v13 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                   -> coe
                                                        ("\172 feesOK pp tx utxo \8801 true"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                   -> let v15
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                         (coe v2))
                                                                      (coe v3)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                         (coe v4)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.du_produced_2536
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                         (coe v2))
                                                                      (coe v3)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                         (coe v4))))
                                                                erased in
                                                      coe
                                                        (case coe v15 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                             -> coe
                                                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                  ("\172consumed (UTxOEnv.pparams \915) s (Tx.body tx) \8801 produced (UTxOEnv.pparams \915) s (Tx.body tx)"
                                                                   ::
                                                                   Data.Text.Text)
                                                                  (coe
                                                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                     ("\n  consumed =\t\t"
                                                                      ::
                                                                      Data.Text.Text)
                                                                     (coe
                                                                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                        (coe
                                                                           MAlonzo.Code.Class.Show.Core.d_show_16
                                                                           MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                 (coe v0))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                    (coe v2))
                                                                                 (coe v3)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                    (coe v4)))))
                                                                        (coe
                                                                           MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                           ("\n    ins  =\t\t"
                                                                            ::
                                                                            Data.Text.Text)
                                                                           (coe
                                                                              MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                 MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                       (coe v0))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Utxo.du_balance_2006
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                             erased
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                   (coe
                                                                                                      v0))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214
                                                                                                   (coe
                                                                                                      v0))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                             (coe
                                                                                                v3))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_txins_2838
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                (coe
                                                                                                   v4)))))))
                                                                              (coe
                                                                                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                 ("\n    mint =\t\t"
                                                                                  ::
                                                                                  Data.Text.Text)
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                       MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                             (coe
                                                                                                v0))
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_mint_2846
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                (coe
                                                                                                   v4)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                       ("\n    depositRefunds =\t"
                                                                                        ::
                                                                                        Data.Text.Text)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                             MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                   (coe
                                                                                                      v0))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                      (coe
                                                                                                         v0))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2512
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                         (coe
                                                                                                            v2))
                                                                                                      (coe
                                                                                                         v3)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                         (coe
                                                                                                            v4))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                             ("\n  produced =\t\t"
                                                                                              ::
                                                                                              Data.Text.Text)
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                   MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                         (coe
                                                                                                            v0))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Utxo.du_produced_2536
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                            (coe
                                                                                                               v2))
                                                                                                         (coe
                                                                                                            v3)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                            (coe
                                                                                                               v4)))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                   ("\n    outs =\t\t"
                                                                                                    ::
                                                                                                    Data.Text.Text)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                         MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                               (coe
                                                                                                                  v0))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Utxo.du_balance_2006
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Utxo.du_outs_2000
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                     (coe
                                                                                                                        v4))))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                         ("\n    fee  =\t\t"
                                                                                                          ::
                                                                                                          Data.Text.Text)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                               (MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                     (coe
                                                                                                                        v4))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                               ("\n    newDeposits  =\t"
                                                                                                                ::
                                                                                                                Data.Text.Text)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Utxo.du_newDeposits_2520
                                                                                                                        (coe
                                                                                                                           v0)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                           (coe
                                                                                                                              v2))
                                                                                                                        (coe
                                                                                                                           v3)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                           (coe
                                                                                                                              v4))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                                     ("\n    donation  =\t\t"
                                                                                                                      ::
                                                                                                                      Data.Text.Text)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                                        (MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                              (coe
                                                                                                                                 v4)))))))))))))))))))))
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                             -> let v17
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                             (coe
                                                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                (coe
                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                   (coe v0))
                                                                                (MAlonzo.Code.Ledger.Transaction.d_mint_2846
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                      (coe v4))))
                                                                             (coe (0 :: Integer)))
                                                                          erased in
                                                                coe
                                                                  (case coe v17 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v18
                                                                       -> coe
                                                                            ("\172 coin (TxBody.mint (Tx.body tx)) \8801 0"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v18
                                                                       -> let v19
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_txsize_2868
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                (coe
                                                                                                   v4)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.PParams.d_maxTxSize_314
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                (coe
                                                                                                   v2)))))
                                                                                    erased in
                                                                          coe
                                                                            (case coe v19 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                 -> coe
                                                                                      ("\172(TxBody.txsize (Tx.body tx) Data.Nat.Base.\8804 maxTxSize (UTxOEnv.pparams \915))"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                 -> let v21
                                                                                          = coe
                                                                                              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2016
                                                                                                       (coe
                                                                                                          v0)
                                                                                                       (coe
                                                                                                          v1)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                                          (coe
                                                                                                             v3))
                                                                                                       (coe
                                                                                                          v4))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                          (coe
                                                                                                             v2)))))
                                                                                              erased in
                                                                                    coe
                                                                                      (case coe
                                                                                              v21 of
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v22
                                                                                           -> coe
                                                                                                ("\8704[ (_ , txout) \8712 txouts .proj\8321 ] inject (utxoEntrySize txout * minUTxOValue pp) \8804\7511 getValue txout"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v22
                                                                                           -> let v23
                                                                                                    = coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                                                                           (coe
                                                                                                              (\ v23 ->
                                                                                                                 coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                   erased
                                                                                                                   erased
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                                      (coe
                                                                                                                         (\ v24 ->
                                                                                                                            coe
                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                 (coe
                                                                                                                                    v0))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                    (coe
                                                                                                                                       v0))
                                                                                                                                 (mulInt
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1952
                                                                                                                                       (coe
                                                                                                                                          v0)
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                          (coe
                                                                                                                                             v24)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                          (coe
                                                                                                                                             v2)))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2932
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                    (coe
                                                                                                                                       v24))))))
                                                                                                                   v23))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txOutHash_2922
                                                                                                                    (coe
                                                                                                                       v0))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txouts_2842
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                       (coe
                                                                                                                          v4))))))
                                                                                                        erased in
                                                                                              coe
                                                                                                (case coe
                                                                                                        v23 of
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v24
                                                                                                     -> coe
                                                                                                          ("\8704[ (_ , txout) \8712 txouts .proj\8321 ] serSize (getValue txout) \8804 maxValSize pp"
                                                                                                           ::
                                                                                                           Data.Text.Text)
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v24
                                                                                                     -> let v25
                                                                                                              = coe
                                                                                                                  MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                                                                                     (coe
                                                                                                                        (\ v25 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                             erased
                                                                                                                             erased
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                                                (coe
                                                                                                                                   (\ v26 ->
                                                                                                                                      coe
                                                                                                                                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Abstract.d_serSize_1766
                                                                                                                                           v1
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2932
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                 (coe
                                                                                                                                                    v26))))
                                                                                                                                        (MAlonzo.Code.Ledger.PParams.d_maxValSize_322
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                              (coe
                                                                                                                                                 v2))))))
                                                                                                                             v25))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_txOutHash_2922
                                                                                                                              (coe
                                                                                                                                 v0))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_txouts_2842
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                 (coe
                                                                                                                                    v4))))))
                                                                                                                  erased in
                                                                                                        coe
                                                                                                          (case coe
                                                                                                                  v25 of
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v26
                                                                                                               -> coe
                                                                                                                    ("\8704[ (a , _) \8712 range txouts ] Sum.All (const \8868) (\955 a \8594 a .BootstrapAddr.attrsSize \8804 64) a"
                                                                                                                     ::
                                                                                                                     Data.Text.Text)
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v26
                                                                                                               -> coe
                                                                                                                    ("something else broke"
                                                                                                                     ::
                                                                                                                     Data.Text.Text)
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             _ -> MAlonzo.RTE.mazUnreachableError)
                   _ -> MAlonzo.RTE.mazUnreachableError)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.Properties._.Go.computeProofH
d_computeProofH_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProofH_2266 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
        -> if coe v6
             then case coe v7 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> case coe v12 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                           -> case coe v14 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                  -> case coe v16 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                         -> case coe v18 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                -> case coe v20 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                       -> case coe v22 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                              -> case coe v24 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                     -> case coe
                                                                                               v26 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                            -> case coe
                                                                                                      v28 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                   -> case coe
                                                                                                             v30 of
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                                                          -> case coe
                                                                                                                    v32 of
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                                                                 -> case coe
                                                                                                                           v34 of
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                                                        -> case coe
                                                                                                                                  v36 of
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v37 v38
                                                                                                                               -> coe
                                                                                                                                    MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.du_Functor'45'ComputationResult_138)
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    ()
                                                                                                                                    erased
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                                                                                                       (coe
                                                                                                                                          (\ v39
                                                                                                                                             v40 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Ledger.Utxo.C_UTXO'45'inductive_2852
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                  (coe
                                                                                                                                                     v9)
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                     (coe
                                                                                                                                                        v11)
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                        (coe
                                                                                                                                                           v13)
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                           (coe
                                                                                                                                                              v15)
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                              (coe
                                                                                                                                                                 v17)
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                 (coe
                                                                                                                                                                    v19)
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                    (coe
                                                                                                                                                                       v21)
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                       (coe
                                                                                                                                                                          v23)
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                          (coe
                                                                                                                                                                             v25)
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                             (coe
                                                                                                                                                                                v27)
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                (coe
                                                                                                                                                                                   v29)
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v31)
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v33)
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v35)
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v37)
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v38)
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v40))))))))))))))))))))
                                                                                                                                    (d_computeProof_2108
                                                                                                                                       (coe
                                                                                                                                          v0)
                                                                                                                                       (coe
                                                                                                                                          v1)
                                                                                                                                       (coe
                                                                                                                                          v2)
                                                                                                                                       (coe
                                                                                                                                          v3)
                                                                                                                                       (coe
                                                                                                                                          v4))
                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v7)
                    (coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                       (coe du_genErr_2186 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._.Go.computeProof
d_computeProof_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2304 v0 v1 v2 v3 v4
  = coe
      d_computeProofH_2266 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_2896 (coe v0) (coe v1)
               (coe v4) (coe v2) (coe v3))))
-- Ledger.Utxo.Properties._.Go.completeness
d_completeness_2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2308 = erased
-- Ledger.Utxo.Properties.Computational-UTXO
d_Computational'45'UTXO_2484 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXO_2484 v0 v1
  = coe d_Computational'45'UTXO''_2148 (coe v0) (coe v1)
-- Ledger.Utxo.Properties.∙-homo-Coin
d_'8729''45'homo'45'Coin_2510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'homo'45'Coin_2510 = erased
-- Ledger.Utxo.Properties.balance-cong
d_balance'45'cong_2512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance'45'cong_2512 v0 ~v1 v2 v3 v4
  = du_balance'45'cong_2512 v0 v2 v3 v4
du_balance'45'cong_2512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance'45'cong_2512 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'cong_982
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276 (coe v0)))
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
                                 MAlonzo.Code.Ledger.Script.d_ps_454
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_454
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1828
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))))))
      (\ v4 ->
         coe
           MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2932
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_1116
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2922 (coe v0))
            (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_1116
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2922 (coe v0))
            (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_416
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
         (coe
            MAlonzo.Code.Data.Product.Base.du_map'8322'_150
            (coe
               (\ v4 ->
                  MAlonzo.Code.Ledger.Transaction.d_txOutHash_2922 (coe v0))))
         (coe v3))
-- Ledger.Utxo.Properties.balance-cong-coin
d_balance'45'cong'45'coin_2520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_balance'45'cong'45'coin_2520 = erased
-- Ledger.Utxo.Properties.balance-∪
d_balance'45''8746'_2532 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_balance'45''8746'_2532 = erased
-- Ledger.Utxo.Properties._._.newTxid⇒disj
d_newTxid'8658'disj_2656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_newTxid'8658'disj_2656 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_newTxid'8658'disj_2656
du_newTxid'8658'disj_2656 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_newTxid'8658'disj_2656
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_910
-- Ledger.Utxo.Properties._._.consumedCoinEquality
d_consumedCoinEquality_2672 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_consumedCoinEquality_2672 = erased
-- Ledger.Utxo.Properties._._.producedCoinEquality
d_producedCoinEquality_2700 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_producedCoinEquality_2700 = erased
-- Ledger.Utxo.Properties._._.balValueToCoin
d_balValueToCoin_2714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_balValueToCoin_2714 = erased
-- Ledger.Utxo.Properties.posPart-negPart≡x
d_posPart'45'negPart'8801'x_2726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_posPart'45'negPart'8801'x_2726 = erased
-- Ledger.Utxo.Properties.φ
d_φ_2732 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_φ_2732 ~v0 ~v1 v2 = du_φ_2732 v2
du_φ_2732 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_φ_2732 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> if coe v2 then coe v1 else coe (0 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._._.collateral
d_collateral_2774 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2774 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_collateral_2774 v9
du_collateral_2774 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2774 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2872
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v0))
-- Ledger.Utxo.Properties._._.mint
d_mint_2778 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> AgdaAny
d_mint_2778 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_mint_2778 v9
du_mint_2778 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> AgdaAny
du_mint_2778 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2846
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v0))
-- Ledger.Utxo.Properties._._.txdonation
d_txdonation_2792 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> Integer
d_txdonation_2792 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txdonation_2792 v9
du_txdonation_2792 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> Integer
du_txdonation_2792 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v0))
-- Ledger.Utxo.Properties._._.txfee
d_txfee_2794 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> Integer
d_txfee_2794 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txfee_2794 v9
du_txfee_2794 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> Integer
du_txfee_2794 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2844
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v0))
-- Ledger.Utxo.Properties._._.txid
d_txid_2796 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> AgdaAny
d_txid_2796 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txid_2796 v9
du_txid_2796 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> AgdaAny
du_txid_2796 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2870
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v0))
-- Ledger.Utxo.Properties._._.txins
d_txins_2798 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txins_2798 v9
du_txins_2798 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2798 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2838
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v0))
-- Ledger.Utxo.Properties._.DepositHelpers.pp
d_pp_2854 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_2854 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 ~v11 ~v12
  = du_pp_2854 v10
du_pp_2854 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pp_2854 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1966 (coe v0)
-- Ledger.Utxo.Properties._.DepositHelpers.dep
d_dep_2856 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_dep_2856 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
           ~v13
  = du_dep_2856 v0 v6
du_dep_2856 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_dep_2856 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v2 -> v2)) (coe v1)
-- Ledger.Utxo.Properties._.DepositHelpers.uDep
d_uDep_2858 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_uDep_2858 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 v10 v11 ~v12 ~v13
  = du_uDep_2858 v0 v6 v10 v11
du_uDep_2858 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 -> Integer
du_uDep_2858 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v4 -> v4))
      (coe
         MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2080 (coe v0)
         (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1966 (coe v3))
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v2))
         (coe v1))
-- Ledger.Utxo.Properties._.DepositHelpers.Δdep
d_Δdep_2860 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_Δdep_2860 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 v10 v11 ~v12 ~v13
  = du_Δdep_2860 v0 v6 v10 v11
du_Δdep_2860 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 -> Integer
du_Δdep_2860 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.du_depositsChange_2186 (coe v0)
      (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1966 (coe v3))
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v2)) (coe v1)
-- Ledger.Utxo.Properties._.DepositHelpers.utxoSt
d_utxoSt_2862 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
d_utxoSt_2862 ~v0 v1 ~v2 v3 ~v4 v5 ~v6 v7 ~v8 ~v9 ~v10 ~v11 ~v12
  = du_utxoSt_2862 v1 v3 v5 v7
du_utxoSt_2862 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
du_utxoSt_2862 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1988
      (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Utxo.Properties._.DepositHelpers.ref
d_ref_2864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_ref_2864 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12 ~v13
  = du_ref_2864 v0 v2 v4 v6 v8 v10 v11
du_ref_2864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 -> Integer
du_ref_2864 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2512 (coe v0)
      (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1966 (coe v6))
      (coe
         MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1988
         (coe v1) (coe v2) (coe v3) (coe v4))
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v5))
-- Ledger.Utxo.Properties._.DepositHelpers.tot
d_tot_2866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_tot_2866 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12 ~v13
  = du_tot_2866 v0 v2 v4 v6 v8 v10 v11
du_tot_2866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 -> Integer
du_tot_2866 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Ledger.Utxo.du_newDeposits_2520 (coe v0)
      (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1966 (coe v6))
      (coe
         MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1988
         (coe v1) (coe v2) (coe v3) (coe v4))
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v5))
-- Ledger.Utxo.Properties._.DepositHelpers.wdls
d_wdls_2868 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_wdls_2868 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 ~v11 ~v12
            ~v13
  = du_wdls_2868 v0 v10
du_wdls_2868 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> Integer
du_wdls_2868 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v2 -> v2))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2852
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v1)))
-- Ledger.Utxo.Properties._.DepositHelpers.h
d_h_2870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_h_2870 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.newBal'
d_newBal''_2876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_newBal''_2876 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.newBal
d_newBal_2880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_newBal_2880 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.noMintAda'
d_noMintAda''_2882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_noMintAda''_2882 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.noMintAda
d_noMintAda_2886 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_noMintAda_2886 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.remDepTot
d_remDepTot_2888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_remDepTot_2888 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12
                 ~v13
  = du_remDepTot_2888 v0 v2 v4 v6 v8 v10 v11
du_remDepTot_2888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 -> Integer
du_remDepTot_2888 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v7 -> v7)) (coe v3))
      (coe
         du_ref_2864 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
         (coe v6))
-- Ledger.Utxo.Properties._.DepositHelpers.deposits-change'
d_deposits'45'change''_2890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_deposits'45'change''_2890 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.dep-ref
d_dep'45'ref_2892 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dep'45'ref_2892 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.ref-tot-0
d_ref'45'tot'45'0_2908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ref'45'tot'45'0_2908 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.ref≤dep
d_ref'8804'dep_2924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_ref'8804'dep_2924 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12
                    ~v13
  = du_ref'8804'dep_2924 v0 v2 v4 v6 v8 v10 v11
du_ref'8804'dep_2924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_ref'8804'dep_2924 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
              erased
              (\ v7 ->
                 coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                   (coe
                      du_ref_2864 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6)))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
                 (coe
                    eqInt
                    (coe
                       du_ref_2864 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                       (coe v6))
                    (coe (0 :: Integer)))) in
    coe
      (case coe v7 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
           -> if coe v8
                then coe
                       seq (coe v9) (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
                else coe
                       seq (coe v9)
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'8804''8243''8658''8804'_6224
                          (let v10
                                 = MAlonzo.Code.Data.Integer.Base.d_sign_24
                                     (let v10
                                            = coe
                                                MAlonzo.Code.Data.List.Base.du_foldr_216
                                                (coe
                                                   (\ v10 ->
                                                      addInt
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v10))))
                                                (coe (0 :: Integer))
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                               (coe v0))))
                                                      (coe
                                                         (\ v10 v11 v12 ->
                                                            coe
                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                              erased
                                                              (\ v13 ->
                                                                 coe
                                                                   MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                   (coe v11))
                                                              (coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                 (coe eqInt (coe v11) (coe v12))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                    (coe
                                                                       eqInt (coe v11)
                                                                       (coe v12)))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2056
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_txcerts_2850
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                     (coe v5)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2068
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_txprop_2856
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                        (coe v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_txid_2870
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                        (coe v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                        (coe v6)))
                                                                  (coe v3))))))) in
                                      coe
                                        (let v11
                                               = coe
                                                   MAlonzo.Code.Data.List.Base.du_foldr_216
                                                   (coe
                                                      (\ v11 ->
                                                         addInt
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v11))))
                                                   (coe (0 :: Integer))
                                                   (coe
                                                      MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                  (coe v0))))
                                                         (coe
                                                            (\ v11 v12 v13 ->
                                                               coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                 erased
                                                                 (\ v14 ->
                                                                    coe
                                                                      MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                      (coe v12))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                    (coe eqInt (coe v12) (coe v13))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                       (coe
                                                                          eqInt (coe v12)
                                                                          (coe v13)))))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v3))))) in
                                         coe
                                           (let v12
                                                  = ltInt
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_foldr_216
                                                         (coe
                                                            (\ v12 ->
                                                               addInt
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v12))))
                                                         (coe (0 :: Integer))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                            (coe
                                                               MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                        (coe v0))))
                                                               (coe
                                                                  (\ v12 v13 v14 ->
                                                                     coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                       erased
                                                                       (\ v15 ->
                                                                          coe
                                                                            MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                            (coe v13))
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                          (coe
                                                                             eqInt (coe v13)
                                                                             (coe v14))
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                             (coe
                                                                                eqInt (coe v13)
                                                                                (coe v14)))))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2056
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                           (coe v6))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_txcerts_2850
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                              (coe v5)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2068
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_txprop_2856
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                 (coe v5)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_txid_2870
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                 (coe v5)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                 (coe v6)))
                                                                           (coe v3))))))))
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_foldr_216
                                                         (coe
                                                            (\ v12 ->
                                                               addInt
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v12))))
                                                         (coe (0 :: Integer))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                            (coe
                                                               MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                        (coe v0))))
                                                               (coe
                                                                  (\ v12 v13 v14 ->
                                                                     coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                       erased
                                                                       (\ v15 ->
                                                                          coe
                                                                            MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                            (coe v13))
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                          (coe
                                                                             eqInt (coe v13)
                                                                             (coe v14))
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                             (coe
                                                                                eqInt (coe v13)
                                                                                (coe v14)))))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v3)))))) in
                                            coe
                                              (if coe v12
                                                 then coe
                                                        MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                        (coe subInt (coe v11) (coe v10))
                                                 else coe subInt (coe v10) (coe v11))))) in
                           coe
                             (let v11
                                    = MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                        (let v11
                                               = coe
                                                   MAlonzo.Code.Data.List.Base.du_foldr_216
                                                   (coe
                                                      (\ v11 ->
                                                         addInt
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v11))))
                                                   (coe (0 :: Integer))
                                                   (coe
                                                      MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                  (coe v0))))
                                                         (coe
                                                            (\ v11 v12 v13 ->
                                                               coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                 erased
                                                                 (\ v14 ->
                                                                    coe
                                                                      MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                      (coe v12))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                    (coe eqInt (coe v12) (coe v13))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                       (coe
                                                                          eqInt (coe v12)
                                                                          (coe v13)))))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2056
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                     (coe v6))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_txcerts_2850
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                        (coe v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2068
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_txprop_2856
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                           (coe v5)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_txid_2870
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                           (coe v5)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                           (coe v6)))
                                                                     (coe v3))))))) in
                                         coe
                                           (let v12
                                                  = coe
                                                      MAlonzo.Code.Data.List.Base.du_foldr_216
                                                      (coe
                                                         (\ v12 ->
                                                            addInt
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v12))))
                                                      (coe (0 :: Integer))
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                     (coe v0))))
                                                            (coe
                                                               (\ v12 v13 v14 ->
                                                                  coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                    erased
                                                                    (\ v15 ->
                                                                       coe
                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                         (coe v13))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                       (coe
                                                                          eqInt (coe v13) (coe v14))
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                          (coe
                                                                             eqInt (coe v13)
                                                                             (coe v14)))))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v3))))) in
                                            coe
                                              (let v13
                                                     = ltInt
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_foldr_216
                                                            (coe
                                                               (\ v13 ->
                                                                  addInt
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v13))))
                                                            (coe (0 :: Integer))
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                           (coe v0))))
                                                                  (coe
                                                                     (\ v13 v14 v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                          erased
                                                                          (\ v16 ->
                                                                             coe
                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                               (coe v14))
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                             (coe
                                                                                eqInt (coe v14)
                                                                                (coe v15))
                                                                             (coe
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                (coe
                                                                                   eqInt (coe v14)
                                                                                   (coe v15)))))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2056
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                              (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_txcerts_2850
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                 (coe v5)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2068
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_txprop_2856
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                    (coe v5)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_txid_2870
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                    (coe v5)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                    (coe v6)))
                                                                              (coe v3))))))))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_foldr_216
                                                            (coe
                                                               (\ v13 ->
                                                                  addInt
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v13))))
                                                            (coe (0 :: Integer))
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                           (coe v0))))
                                                                  (coe
                                                                     (\ v13 v14 v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                          erased
                                                                          (\ v16 ->
                                                                             coe
                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                               (coe v14))
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                             (coe
                                                                                eqInt (coe v14)
                                                                                (coe v15))
                                                                             (coe
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                (coe
                                                                                   eqInt (coe v14)
                                                                                   (coe v15)))))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v3)))))) in
                                               coe
                                                 (if coe v13
                                                    then coe
                                                           MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                           (coe subInt (coe v12) (coe v11))
                                                    else coe subInt (coe v11) (coe v12))))) in
                              coe
                                (case coe v10 of
                                   MAlonzo.Code.Data.Sign.Base.C_'45'_8 -> coe v11
                                   _ -> coe (0 :: Integer))))
                          (coe
                             MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__40
                             (coe du_uDep_2858 (coe v0) (coe v3) (coe v5) (coe v6))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                (\ v10 v11 v12 -> v12)
                                (addInt
                                   (coe
                                      du_ref_2864 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6))
                                   (coe du_uDep_2858 (coe v0) (coe v3) (coe v5) (coe v6)))
                                (coe du_dep_2856 (coe v0) (coe v3))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                   erased
                                   (addInt
                                      (coe
                                         du_ref_2864 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6))
                                      (coe du_uDep_2858 (coe v0) (coe v3) (coe v5) (coe v6)))
                                   (addInt
                                      (coe
                                         du_ref_2864 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6))
                                      (coe du_uDep_2858 (coe v0) (coe v3) (coe v5) (coe v6)))
                                   (coe du_dep_2856 (coe v0) (coe v3))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                      erased
                                      (addInt
                                         (coe
                                            du_ref_2864 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                            (coe v5) (coe v6))
                                         (coe du_uDep_2858 (coe v0) (coe v3) (coe v5) (coe v6)))
                                      (coe du_dep_2856 (coe v0) (coe v3))
                                      (coe du_dep_2856 (coe v0) (coe v3))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                         erased (coe du_dep_2856 (coe v0) (coe v3)))
                                      erased)
                                   erased))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.Properties._.DepositHelpers.deposits-change
d_deposits'45'change_2940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_deposits'45'change_2940 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.split-balance
d_split'45'balance_2944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_split'45'balance_2944 = erased
-- Ledger.Utxo.Properties._.DepositHelpers._.utxo-ref-prop-worker
d_utxo'45'ref'45'prop'45'worker_2994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_utxo'45'ref'45'prop'45'worker_2994 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.utxo-ref-prop
d_utxo'45'ref'45'prop_3004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_utxo'45'ref'45'prop_3004 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.rearrange0
d_rearrange0_3008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rearrange0_3008 = erased
-- Ledger.Utxo.Properties._.DepositHelpers._.pov-scripts-worker
d_pov'45'scripts'45'worker_3034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pov'45'scripts'45'worker_3034 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.pov-scripts
d_pov'45'scripts_3060 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pov'45'scripts_3060 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.pov-no-scripts
d_pov'45'no'45'scripts_3066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pov'45'no'45'scripts_3066 = erased
-- Ledger.Utxo.Properties.UTXO-step
d_UTXO'45'step_3078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_UTXO'45'step_3078 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
      (coe d_Computational'45'UTXO_2484 (coe v0) (coe v1))
-- Ledger.Utxo.Properties.UTXO-step-computes-UTXO
d_UTXO'45'step'45'computes'45'UTXO_3080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_UTXO'45'step'45'computes'45'UTXO_3080 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_'8801''45'success'8660'STS_300
      (coe d_Computational'45'UTXO_2484 (coe v0) (coe v1)) (coe v2)
      (coe v3) (coe v4) (coe v5)
-- Ledger.Utxo.Properties._.body
d_body_3084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_735587 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796
d_body_3084 ~v0 ~v1 v2 = du_body_3084 v2
du_body_3084 ::
  T_GeneralizeTel_735587 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796
du_body_3084 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2908
      (coe d_'46'generalizedField'45'tx_735567 (coe v0))
-- Ledger.Utxo.Properties._.isValid
d_isValid_3086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_735587 -> Bool
d_isValid_3086 ~v0 ~v1 v2 = du_isValid_3086 v2
du_isValid_3086 :: T_GeneralizeTel_735587 -> Bool
du_isValid_3086 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_isValid_2912
      (coe d_'46'generalizedField'45'tx_735567 (coe v0))
-- Ledger.Utxo.Properties._.txid
d_txid_3116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_735587 -> AgdaAny
d_txid_3116 ~v0 ~v1 v2 = du_txid_3116 v2
du_txid_3116 :: T_GeneralizeTel_735587 -> AgdaAny
du_txid_3116 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2870
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2908
         (coe d_'46'generalizedField'45'tx_735567 (coe v0)))
-- Ledger.Utxo.Properties._.txwdrls
d_txwdrls_3132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_735587 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3132 ~v0 ~v1 v2 = du_txwdrls_3132 v2
du_txwdrls_3132 ::
  T_GeneralizeTel_735587 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3132 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2852
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2908
         (coe d_'46'generalizedField'45'tx_735567 (coe v0)))
-- Ledger.Utxo.Properties.pov
d_pov_3134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pov_3134 = erased
-- Ledger.Utxo.Properties.isRefundCert
d_isRefundCert_3156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 -> Bool
d_isRefundCert_3156 ~v0 ~v1 v2 = du_isRefundCert_3156 v2
du_isRefundCert_3156 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 -> Bool
du_isRefundCert_3156 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_860 v2 v3
           -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         MAlonzo.Code.Ledger.Certs.C_deregdrep_868 v2 v3
           -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         _ -> coe v1)
-- Ledger.Utxo.Properties.noRefundCert
d_noRefundCert_3162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] -> ()
d_noRefundCert_3162 = erased
-- Ledger.Utxo.Properties.fin∘list[]
d_fin'8728'list'91''93'_3170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fin'8728'list'91''93'_3170 = erased
-- Ledger.Utxo.Properties.fin∘list∷[]
d_fin'8728'list'8759''91''93'_3176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fin'8728'list'8759''91''93'_3176 = erased
-- Ledger.Utxo.Properties.coin∅
d_coin'8709'_3178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8709'_3178 = erased
-- Ledger.Utxo.Properties.getCoin-singleton
d_getCoin'45'singleton_3214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'45'singleton_3214 = erased
-- Ledger.Utxo.Properties._.getCoin∪⁺∅≡id
d_getCoin'8746''8314''8709''8801'id_3234 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'8746''8314''8709''8801'id_3234 = erased
-- Ledger.Utxo.Properties._.getCoin∣∅≡id
d_getCoin'8739''8709''8801'id_3246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'8739''8709''8801'id_3246 = erased
-- Ledger.Utxo.Properties._.getCoin∪⁺∅∣∅id
d_getCoin'8746''8314''8709''8739''8709'id_3252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'8746''8314''8709''8739''8709'id_3252 = erased
-- Ledger.Utxo.Properties._.∪⁺singleton≡
d_'8746''8314'singleton'8801'_3264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314'singleton'8801'_3264 = erased
-- Ledger.Utxo.Properties._._.≤updatePropDeps
d_'8804'updatePropDeps_3290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804'updatePropDeps_3290 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8804'updatePropDeps_3290 v0 v4 v5 v6 v7
du_'8804'updatePropDeps_3290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804'updatePropDeps_3290 v0 v1 v2 v3 v4
  = case coe v4 of
      []
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2772
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                (coe
                   MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                (coe
                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                (coe (\ v5 -> v5)) (coe v1))
      (:) v5 v6
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
             (coe
                du_'8804'updatePropDeps_3290 (coe v0) (coe v1) (coe v2) (coe v3)
                (coe v6))
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3482
                   (coe
                      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                      (coe
                         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                      (coe
                         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                      (coe
                         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                      (coe (\ v7 -> v7))
                      (coe
                         MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2068 (coe v0)
                         (coe v6) (coe v2) (coe v3) (coe v1))))
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2772
                   (coe
                      addInt
                      (coe
                         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                         (coe
                            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                         (coe
                            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                         (coe
                            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                         (coe (\ v7 -> v7))
                         (coe
                            MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2068 (coe v0)
                            (coe v6) (coe v2) (coe v3) (coe v1)))
                      (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._._.updatePropDeps≡
d_updatePropDeps'8801'_3298 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_updatePropDeps'8801'_3298 = erased
-- Ledger.Utxo.Properties._.≤certDeps
d_'8804'certDeps_3322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804'certDeps_3322 v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_'8804'certDeps_3322 v0 v5 v6
du_'8804'certDeps_3322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804'certDeps_3322 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
         (\ v3 v4 v5 ->
            coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2854 v5))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v3 -> v3)) (coe v1))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v3 -> v3))
         (let v3
                = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v3)
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                  (coe
                     MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                     (coe
                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                  (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                     (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                  v1
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_430
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
      (let v3
             = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810 in
       coe
         (let v4
                = \ v4 v5 v6 v7 v8 ->
                    coe
                      MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2986 v7
                      v8 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe v3) (coe v4))
               (coe
                  MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                     (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                  (coe
                     MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                     (coe
                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                  (coe (\ v5 -> v5)) (coe v1))
               (addInt
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                     (coe
                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                     (coe (\ v5 -> v5)) (coe v1))
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
               (coe
                  MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                     (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                  (coe
                     MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                     (coe
                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                  (coe (\ v5 -> v5))
                  (let v5
                         = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v5)
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                           (coe
                              MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                              (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                           v1
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_'8709'_430
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                  (\ v5 v6 v7 v8 v9 -> v9)
                  (addInt
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                           (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                        (coe (\ v5 -> v5)) (coe v1))
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                     (coe
                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                     (coe (\ v5 -> v5))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                        (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                           (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                        v1
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))))
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                     (coe
                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                     (coe (\ v5 -> v5))
                     (let v5
                            = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v5)
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                              (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                 (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                              v1
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe v2)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'8709'_430
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v5 v6 v7 v8 v9 -> v9)
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                           (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                        (coe (\ v5 -> v5))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                           (coe
                              MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                              (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                           v1
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))))
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                           (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                        (coe (\ v5 -> v5))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                              (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                 (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                              v1
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'8709'_430
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                           (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                        (coe (\ v5 -> v5))
                        (let v5
                               = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v5)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                 (coe
                                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                 (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                       (coe v0)))
                                 v1
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_'8709'_430
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe
                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
                     (let v5
                            = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810 in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe v5))
                           (coe
                              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                 (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                              (coe (\ v6 -> v6))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                    (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                    (coe
                                       MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                    (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                          (coe v0)))
                                    v1
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'8709'_430
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))))
                     erased)
                  erased)
               (coe
                  MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3482
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                     (coe
                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                     (coe (\ v5 -> v5)) (coe v1))))))
-- Ledger.Utxo.Properties._.≤updateCertDeps
d_'8804'updateCertDeps_3338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804'updateCertDeps_3338 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8804'updateCertDeps_3338 v0 v4 v5 v6 v7
du_'8804'updateCertDeps_3338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804'updateCertDeps_3338 v0 v1 v2 v3 v4
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2772
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                (coe
                   MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
                (coe
                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                (coe (\ v5 -> v5)) (coe v3))
      (:) v5 v6
        -> case coe v4 of
             MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v9 v10
               -> case coe v5 of
                    MAlonzo.Code.Ledger.Certs.C_delegate_858 v11 v12 v13 v14
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
                           (coe
                              du_'8804'updateCertDeps_3338 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              du_'8804'certDeps_3322 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2056 (coe v0)
                                 (coe v2) (coe v6) (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_838 (coe v11))
                                 (coe v14)))
                    MAlonzo.Code.Ledger.Certs.C_regpool_862 v11 v12
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
                           (coe
                              du_'8804'updateCertDeps_3338 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              du_'8804'certDeps_3322 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2056 (coe v0)
                                 (coe v2) (coe v6) (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_840 (coe v11))
                                 (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v2))))
                    MAlonzo.Code.Ledger.Certs.C_retirepool_864 v11 v12
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
                           (coe
                              du_'8804'updateCertDeps_3338 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2772
                              (coe
                                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                 (coe
                                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                 (coe (\ v13 -> v13))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2056 (coe v0)
                                    (coe v2) (coe v6) (coe v3))))
                    MAlonzo.Code.Ledger.Certs.C_regdrep_866 v11 v12 v13
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
                           (coe
                              du_'8804'updateCertDeps_3338 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              du_'8804'certDeps_3322 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2056 (coe v0)
                                 (coe v2) (coe v6) (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_842 (coe v11))
                                 (coe v12)))
                    MAlonzo.Code.Ledger.Certs.C_ccreghot_870 v11 v12
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
                           (coe
                              du_'8804'updateCertDeps_3338 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2772
                              (coe
                                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                 (coe
                                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                 (coe (\ v13 -> v13))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2056 (coe v0)
                                    (coe v2) (coe v6) (coe v3))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._._.body
d_body_3368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_952003 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796
d_body_3368 ~v0 ~v1 ~v2 ~v3 v4 = du_body_3368 v4
du_body_3368 ::
  T_GeneralizeTel_952003 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796
du_body_3368 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2908
      (coe d_'46'generalizedField'45'tx_951989 (coe v0))
-- Ledger.Utxo.Properties._._.txcerts
d_txcerts_3390 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_952003 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_3390 ~v0 ~v1 ~v2 ~v3 v4 = du_txcerts_3390 v4
du_txcerts_3390 ::
  T_GeneralizeTel_952003 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
du_txcerts_3390 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2850
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2908
         (coe d_'46'generalizedField'45'tx_951989 (coe v0)))
-- Ledger.Utxo.Properties._._.txprop
d_txprop_3402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_952003 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776]
d_txprop_3402 ~v0 ~v1 ~v2 ~v3 v4 = du_txprop_3402 v4
du_txprop_3402 ::
  T_GeneralizeTel_952003 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776]
du_txprop_3402 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txprop_2856
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2908
         (coe d_'46'generalizedField'45'tx_951989 (coe v0)))
-- Ledger.Utxo.Properties._._.govActionDeposit
d_govActionDeposit_3442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_952003 -> Integer
d_govActionDeposit_3442 ~v0 ~v1 ~v2 ~v3 v4
  = du_govActionDeposit_3442 v4
du_govActionDeposit_3442 :: T_GeneralizeTel_952003 -> Integer
du_govActionDeposit_3442 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
      (coe
         MAlonzo.Code.Ledger.Utxo.d_pparams_1966
         (coe d_'46'generalizedField'45'Γ_951991 (coe v0)))
-- Ledger.Utxo.Properties._._.deposits
d_deposits_3486 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_952003 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3486 ~v0 ~v1 ~v2 ~v3 v4 = du_deposits_3486 v4
du_deposits_3486 ::
  T_GeneralizeTel_952003 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_3486 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_deposits_1984
      (coe d_'46'generalizedField'45'utxoState_951993 (coe v0))
-- Ledger.Utxo.Properties._._.donations
d_donations_3488 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_952003 -> Integer
d_donations_3488 ~v0 ~v1 ~v2 ~v3 v4 = du_donations_3488 v4
du_donations_3488 :: T_GeneralizeTel_952003 -> Integer
du_donations_3488 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_donations_1986
      (coe d_'46'generalizedField'45'utxoState_951993 (coe v0))
-- Ledger.Utxo.Properties._._.fees
d_fees_3490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_952003 -> Integer
d_fees_3490 ~v0 ~v1 ~v2 ~v3 v4 = du_fees_3490 v4
du_fees_3490 :: T_GeneralizeTel_952003 -> Integer
du_fees_3490 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1982
      (coe d_'46'generalizedField'45'utxoState_951993 (coe v0))
-- Ledger.Utxo.Properties._._.utxo
d_utxo_3492 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_952003 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3492 ~v0 ~v1 ~v2 ~v3 v4 = du_utxo_3492 v4
du_utxo_3492 ::
  T_GeneralizeTel_952003 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_3492 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1980
      (coe d_'46'generalizedField'45'utxoState_951993 (coe v0))
-- Ledger.Utxo.Properties._.gmsc
d_gmsc_3494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_gmsc_3494 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du_gmsc_3494 v0 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_gmsc_3494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1990 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_gmsc_3494 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      MAlonzo.Code.Ledger.Utxo.C_UTXO'45'inductive_2852 v14
        -> case coe v14 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
               -> case coe v16 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                      -> case coe v18 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                             -> case coe v20 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                    -> case coe v22 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                           -> case coe v24 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                  -> case coe v26 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                         -> case coe v28 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                -> case coe v30 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                       -> case coe v32 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                              -> case coe v34 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                     -> case coe
                                                                                               v36 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v37 v38
                                                                                            -> case coe
                                                                                                      v38 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v39 v40
                                                                                                   -> case coe
                                                                                                             v40 of
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v41 v42
                                                                                                          -> case coe
                                                                                                                    v42 of
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v43 v44
                                                                                                                 -> coe
                                                                                                                      seq
                                                                                                                      (coe
                                                                                                                         v44)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
                                                                                                                            (\ v45
                                                                                                                               v46
                                                                                                                               v47 ->
                                                                                                                               coe
                                                                                                                                 MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2854
                                                                                                                                 v47))
                                                                                                                         (mulInt
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Data.List.Base.du_length_284
                                                                                                                               (let v45
                                                                                                                                      = coe
                                                                                                                                          C_mkGeneralizeTel_952005
                                                                                                                                          (coe
                                                                                                                                             v1)
                                                                                                                                          (coe
                                                                                                                                             v2)
                                                                                                                                          (coe
                                                                                                                                             v3)
                                                                                                                                          (coe
                                                                                                                                             v4)
                                                                                                                                          (coe
                                                                                                                                             v5)
                                                                                                                                          (coe
                                                                                                                                             v6)
                                                                                                                                          (coe
                                                                                                                                             v7) in
                                                                                                                                coe
                                                                                                                                  (MAlonzo.Code.Ledger.Transaction.d_txprop_2856
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                        (coe
                                                                                                                                           d_'46'generalizedField'45'tx_951989
                                                                                                                                           (coe
                                                                                                                                              v45))))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                  (coe
                                                                                                                                     d_'46'generalizedField'45'Γ_951991
                                                                                                                                     (coe
                                                                                                                                        C_mkGeneralizeTel_952005
                                                                                                                                        (coe
                                                                                                                                           v1)
                                                                                                                                        (coe
                                                                                                                                           v2)
                                                                                                                                        (coe
                                                                                                                                           v3)
                                                                                                                                        (coe
                                                                                                                                           v4)
                                                                                                                                        (coe
                                                                                                                                           v5)
                                                                                                                                        (coe
                                                                                                                                           v6)
                                                                                                                                        (coe
                                                                                                                                           v7))))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                               (coe
                                                                                                                                  v0))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                                                                               (coe
                                                                                                                                  v0)
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                  (coe
                                                                                                                                     v2))
                                                                                                                               (coe
                                                                                                                                  v3)
                                                                                                                               (let v45
                                                                                                                                      = coe
                                                                                                                                          C_mkGeneralizeTel_952005
                                                                                                                                          (coe
                                                                                                                                             v1)
                                                                                                                                          (coe
                                                                                                                                             v2)
                                                                                                                                          (coe
                                                                                                                                             v3)
                                                                                                                                          (coe
                                                                                                                                             v4)
                                                                                                                                          (coe
                                                                                                                                             v5)
                                                                                                                                          (coe
                                                                                                                                             v6)
                                                                                                                                          (coe
                                                                                                                                             v7) in
                                                                                                                                coe
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                     (coe
                                                                                                                                        d_'46'generalizedField'45'tx_951989
                                                                                                                                        (coe
                                                                                                                                           v45))))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                            (\ v45
                                                                                                                               v46
                                                                                                                               v47
                                                                                                                               v48
                                                                                                                               v49 ->
                                                                                                                               v49)
                                                                                                                            (mulInt
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Data.List.Base.du_length_284
                                                                                                                                  (MAlonzo.Code.Ledger.Transaction.d_txprop_2856
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                                                                                  (coe
                                                                                                                                     du_pp_3514
                                                                                                                                     (coe
                                                                                                                                        v2))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                        (coe
                                                                                                                                           v0)))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                  (coe
                                                                                                                                     (\ v45 ->
                                                                                                                                        v45))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2068
                                                                                                                                     (coe
                                                                                                                                        v0)
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_txprop_2856
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                           (coe
                                                                                                                                              v1)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_txid_2870
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                           (coe
                                                                                                                                              v1)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                                                                                        (coe
                                                                                                                                           du_pp_3514
                                                                                                                                           (coe
                                                                                                                                              v2)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                                                        (coe
                                                                                                                                           v3))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                        (coe
                                                                                                                                           v0)))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                  (coe
                                                                                                                                     (\ v45 ->
                                                                                                                                        v45))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                                                     (coe
                                                                                                                                        v3))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                                                                                  (coe
                                                                                                                                     v0)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                     (coe
                                                                                                                                        v2))
                                                                                                                                  (coe
                                                                                                                                     v3)
                                                                                                                                  (let v45
                                                                                                                                         = coe
                                                                                                                                             C_mkGeneralizeTel_952005
                                                                                                                                             (coe
                                                                                                                                                v1)
                                                                                                                                             (coe
                                                                                                                                                v2)
                                                                                                                                             (coe
                                                                                                                                                v3)
                                                                                                                                             (coe
                                                                                                                                                v4)
                                                                                                                                             (coe
                                                                                                                                                v5)
                                                                                                                                             (coe
                                                                                                                                                v6)
                                                                                                                                             (coe
                                                                                                                                                v7) in
                                                                                                                                   coe
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                        (coe
                                                                                                                                           d_'46'generalizedField'45'tx_951989
                                                                                                                                           (coe
                                                                                                                                              v45))))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
                                                                                                                                  (\ v45
                                                                                                                                     v46
                                                                                                                                     v47
                                                                                                                                     v48
                                                                                                                                     v49 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2986
                                                                                                                                       v48
                                                                                                                                       v49))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                     (coe
                                                                                                                                        (\ v45 ->
                                                                                                                                           v45))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2068
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_txprop_2856
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                              (coe
                                                                                                                                                 v1)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_txid_2870
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                              (coe
                                                                                                                                                 v1)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                                                                                           (coe
                                                                                                                                              du_pp_3514
                                                                                                                                              (coe
                                                                                                                                                 v2)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                                                           (coe
                                                                                                                                              v3))))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                     (coe
                                                                                                                                        (\ v45 ->
                                                                                                                                           v45))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                                                        (coe
                                                                                                                                           v3))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                     (coe
                                                                                                                                        (\ v45 ->
                                                                                                                                           v45))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2080
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           du_pp_3514
                                                                                                                                           (coe
                                                                                                                                              v2))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                           (coe
                                                                                                                                              v1))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                                                           (coe
                                                                                                                                              v3))))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                     (coe
                                                                                                                                        (\ v45 ->
                                                                                                                                           v45))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                                                        (coe
                                                                                                                                           v3))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                     (coe
                                                                                                                                        v0))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                                                                                     (coe
                                                                                                                                        v0)
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                        (coe
                                                                                                                                           v2))
                                                                                                                                     (coe
                                                                                                                                        v3)
                                                                                                                                     (let v45
                                                                                                                                            = coe
                                                                                                                                                C_mkGeneralizeTel_952005
                                                                                                                                                (coe
                                                                                                                                                   v1)
                                                                                                                                                (coe
                                                                                                                                                   v2)
                                                                                                                                                (coe
                                                                                                                                                   v3)
                                                                                                                                                (coe
                                                                                                                                                   v4)
                                                                                                                                                (coe
                                                                                                                                                   v5)
                                                                                                                                                (coe
                                                                                                                                                   v6)
                                                                                                                                                (coe
                                                                                                                                                   v7) in
                                                                                                                                      coe
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                           (coe
                                                                                                                                              d_'46'generalizedField'45'tx_951989
                                                                                                                                              (coe
                                                                                                                                                 v45))))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                                                                                                  (\ v45
                                                                                                                                     v46
                                                                                                                                     v47
                                                                                                                                     v48
                                                                                                                                     v49 ->
                                                                                                                                     v49)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                              (coe
                                                                                                                                                 v0)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                        (coe
                                                                                                                                           (\ v45 ->
                                                                                                                                              v45))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2080
                                                                                                                                           (coe
                                                                                                                                              v0)
                                                                                                                                           (coe
                                                                                                                                              du_pp_3514
                                                                                                                                              (coe
                                                                                                                                                 v2))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                              (coe
                                                                                                                                                 v1))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                                                              (coe
                                                                                                                                                 v3))))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                              (coe
                                                                                                                                                 v0)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                        (coe
                                                                                                                                           (\ v45 ->
                                                                                                                                              v45))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                                                           (coe
                                                                                                                                              v3))))
                                                                                                                                  (coe
                                                                                                                                     du_newDeps_3646
                                                                                                                                     (coe
                                                                                                                                        v0)
                                                                                                                                     (coe
                                                                                                                                        v1)
                                                                                                                                     (coe
                                                                                                                                        v2)
                                                                                                                                     (coe
                                                                                                                                        v3))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                        (coe
                                                                                                                                           v0))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                           (coe
                                                                                                                                              v2))
                                                                                                                                        (coe
                                                                                                                                           v3)
                                                                                                                                        (let v45
                                                                                                                                               = coe
                                                                                                                                                   C_mkGeneralizeTel_952005
                                                                                                                                                   (coe
                                                                                                                                                      v1)
                                                                                                                                                   (coe
                                                                                                                                                      v2)
                                                                                                                                                   (coe
                                                                                                                                                      v3)
                                                                                                                                                   (coe
                                                                                                                                                      v4)
                                                                                                                                                   (coe
                                                                                                                                                      v5)
                                                                                                                                                   (coe
                                                                                                                                                      v6)
                                                                                                                                                   (coe
                                                                                                                                                      v7) in
                                                                                                                                         coe
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                              (coe
                                                                                                                                                 d_'46'generalizedField'45'tx_951989
                                                                                                                                                 (coe
                                                                                                                                                    v45))))))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
                                                                                                                                        (\ v45
                                                                                                                                           v46
                                                                                                                                           v47
                                                                                                                                           v48
                                                                                                                                           v49 ->
                                                                                                                                           coe
                                                                                                                                             MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2986
                                                                                                                                             v48
                                                                                                                                             v49))
                                                                                                                                     (coe
                                                                                                                                        du_newDeps_3646
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           v1)
                                                                                                                                        (coe
                                                                                                                                           v2)
                                                                                                                                        (coe
                                                                                                                                           v3))
                                                                                                                                     (addInt
                                                                                                                                        (coe
                                                                                                                                           addInt
                                                                                                                                           (coe
                                                                                                                                              addInt
                                                                                                                                              (coe
                                                                                                                                                 du_newDeps_3646
                                                                                                                                                 (coe
                                                                                                                                                    v0)
                                                                                                                                                 (coe
                                                                                                                                                    v1)
                                                                                                                                                 (coe
                                                                                                                                                    v2)
                                                                                                                                                 (coe
                                                                                                                                                    v3))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                    (coe
                                                                                                                                                       v1))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                 (coe
                                                                                                                                                    v1))))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                              (coe
                                                                                                                                                 v0))
                                                                                                                                           (coe
                                                                                                                                              du_balOut_3654
                                                                                                                                              (coe
                                                                                                                                                 v0)
                                                                                                                                              (coe
                                                                                                                                                 v1))))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                        (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                           (coe
                                                                                                                                              v0))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                                                                                           (coe
                                                                                                                                              v0)
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                              (coe
                                                                                                                                                 v2))
                                                                                                                                           (coe
                                                                                                                                              v3)
                                                                                                                                           (let v45
                                                                                                                                                  = coe
                                                                                                                                                      C_mkGeneralizeTel_952005
                                                                                                                                                      (coe
                                                                                                                                                         v1)
                                                                                                                                                      (coe
                                                                                                                                                         v2)
                                                                                                                                                      (coe
                                                                                                                                                         v3)
                                                                                                                                                      (coe
                                                                                                                                                         v4)
                                                                                                                                                      (coe
                                                                                                                                                         v5)
                                                                                                                                                      (coe
                                                                                                                                                         v6)
                                                                                                                                                      (coe
                                                                                                                                                         v7) in
                                                                                                                                            coe
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                 (coe
                                                                                                                                                    d_'46'generalizedField'45'tx_951989
                                                                                                                                                    (coe
                                                                                                                                                       v45))))))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                                                                                                        (\ v45
                                                                                                                                           v46
                                                                                                                                           v47
                                                                                                                                           v48
                                                                                                                                           v49 ->
                                                                                                                                           v49)
                                                                                                                                        (addInt
                                                                                                                                           (coe
                                                                                                                                              addInt
                                                                                                                                              (coe
                                                                                                                                                 addInt
                                                                                                                                                 (coe
                                                                                                                                                    du_newDeps_3646
                                                                                                                                                    (coe
                                                                                                                                                       v0)
                                                                                                                                                    (coe
                                                                                                                                                       v1)
                                                                                                                                                    (coe
                                                                                                                                                       v2)
                                                                                                                                                    (coe
                                                                                                                                                       v3))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                       (coe
                                                                                                                                                          v1))))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                    (coe
                                                                                                                                                       v1))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                 (coe
                                                                                                                                                    v0))
                                                                                                                                              (coe
                                                                                                                                                 du_balOut_3654
                                                                                                                                                 (coe
                                                                                                                                                    v0)
                                                                                                                                                 (coe
                                                                                                                                                    v1))))
                                                                                                                                        (addInt
                                                                                                                                           (coe
                                                                                                                                              addInt
                                                                                                                                              (coe
                                                                                                                                                 addInt
                                                                                                                                                 (coe
                                                                                                                                                    du_newDeps_3646
                                                                                                                                                    (coe
                                                                                                                                                       v0)
                                                                                                                                                    (coe
                                                                                                                                                       v1)
                                                                                                                                                    (coe
                                                                                                                                                       v2)
                                                                                                                                                    (coe
                                                                                                                                                       v3))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                       (coe
                                                                                                                                                          v1))))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                    (coe
                                                                                                                                                       v1))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                 (coe
                                                                                                                                                    v0))
                                                                                                                                              (coe
                                                                                                                                                 du_balOut_3654
                                                                                                                                                 (coe
                                                                                                                                                    v0)
                                                                                                                                                 (coe
                                                                                                                                                    v1))))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                              (coe
                                                                                                                                                 v0))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                                                                                              (coe
                                                                                                                                                 v0)
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                                 (coe
                                                                                                                                                    v2))
                                                                                                                                              (coe
                                                                                                                                                 v3)
                                                                                                                                              (let v45
                                                                                                                                                     = coe
                                                                                                                                                         C_mkGeneralizeTel_952005
                                                                                                                                                         (coe
                                                                                                                                                            v1)
                                                                                                                                                         (coe
                                                                                                                                                            v2)
                                                                                                                                                         (coe
                                                                                                                                                            v3)
                                                                                                                                                         (coe
                                                                                                                                                            v4)
                                                                                                                                                         (coe
                                                                                                                                                            v5)
                                                                                                                                                         (coe
                                                                                                                                                            v6)
                                                                                                                                                         (coe
                                                                                                                                                            v7) in
                                                                                                                                               coe
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                    (coe
                                                                                                                                                       d_'46'generalizedField'45'tx_951989
                                                                                                                                                       (coe
                                                                                                                                                          v45))))))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                                                                                                           (\ v45
                                                                                                                                              v46
                                                                                                                                              v47
                                                                                                                                              v48
                                                                                                                                              v49 ->
                                                                                                                                              v49)
                                                                                                                                           (addInt
                                                                                                                                              (coe
                                                                                                                                                 addInt
                                                                                                                                                 (coe
                                                                                                                                                    addInt
                                                                                                                                                    (coe
                                                                                                                                                       du_newDeps_3646
                                                                                                                                                       (coe
                                                                                                                                                          v0)
                                                                                                                                                       (coe
                                                                                                                                                          v1)
                                                                                                                                                       (coe
                                                                                                                                                          v2)
                                                                                                                                                       (coe
                                                                                                                                                          v3))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                          (coe
                                                                                                                                                             v1))))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                       (coe
                                                                                                                                                          v1))))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                    (coe
                                                                                                                                                       v0))
                                                                                                                                                 (coe
                                                                                                                                                    du_balOut_3654
                                                                                                                                                    (coe
                                                                                                                                                       v0)
                                                                                                                                                    (coe
                                                                                                                                                       v1))))
                                                                                                                                           (addInt
                                                                                                                                              (coe
                                                                                                                                                 addInt
                                                                                                                                                 (coe
                                                                                                                                                    addInt
                                                                                                                                                    (coe
                                                                                                                                                       du_newDeps_3646
                                                                                                                                                       (coe
                                                                                                                                                          v0)
                                                                                                                                                       (coe
                                                                                                                                                          v1)
                                                                                                                                                       (coe
                                                                                                                                                          v2)
                                                                                                                                                       (coe
                                                                                                                                                          v3))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                          (coe
                                                                                                                                                             v1))))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                       (coe
                                                                                                                                                          v1))))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                    (coe
                                                                                                                                                       v0))
                                                                                                                                                 (coe
                                                                                                                                                    du_balOut_3654
                                                                                                                                                    (coe
                                                                                                                                                       v0)
                                                                                                                                                    (coe
                                                                                                                                                       v1))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                 (coe
                                                                                                                                                    v0))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                                                                                                 (coe
                                                                                                                                                    v0)
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                                    (coe
                                                                                                                                                       v2))
                                                                                                                                                 (coe
                                                                                                                                                    v3)
                                                                                                                                                 (let v45
                                                                                                                                                        = coe
                                                                                                                                                            C_mkGeneralizeTel_952005
                                                                                                                                                            (coe
                                                                                                                                                               v1)
                                                                                                                                                            (coe
                                                                                                                                                               v2)
                                                                                                                                                            (coe
                                                                                                                                                               v3)
                                                                                                                                                            (coe
                                                                                                                                                               v4)
                                                                                                                                                            (coe
                                                                                                                                                               v5)
                                                                                                                                                            (coe
                                                                                                                                                               v6)
                                                                                                                                                            (coe
                                                                                                                                                               v7) in
                                                                                                                                                  coe
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                       (coe
                                                                                                                                                          d_'46'generalizedField'45'tx_951989
                                                                                                                                                          (coe
                                                                                                                                                             v45))))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                                              (\ v45
                                                                                                                                                 v46
                                                                                                                                                 v47
                                                                                                                                                 v48
                                                                                                                                                 v49 ->
                                                                                                                                                 v49)
                                                                                                                                              (addInt
                                                                                                                                                 (coe
                                                                                                                                                    addInt
                                                                                                                                                    (coe
                                                                                                                                                       addInt
                                                                                                                                                       (coe
                                                                                                                                                          du_newDeps_3646
                                                                                                                                                          (coe
                                                                                                                                                             v0)
                                                                                                                                                          (coe
                                                                                                                                                             v1)
                                                                                                                                                          (coe
                                                                                                                                                             v2)
                                                                                                                                                          (coe
                                                                                                                                                             v3))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                             (coe
                                                                                                                                                                v1))))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                          (coe
                                                                                                                                                             v1))))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                       (coe
                                                                                                                                                          v0))
                                                                                                                                                    (coe
                                                                                                                                                       du_balOut_3654
                                                                                                                                                       (coe
                                                                                                                                                          v0)
                                                                                                                                                       (coe
                                                                                                                                                          v1))))
                                                                                                                                              (addInt
                                                                                                                                                 (coe
                                                                                                                                                    addInt
                                                                                                                                                    (coe
                                                                                                                                                       addInt
                                                                                                                                                       (coe
                                                                                                                                                          du_newDeps_3646
                                                                                                                                                          (coe
                                                                                                                                                             v0)
                                                                                                                                                          (coe
                                                                                                                                                             v1)
                                                                                                                                                          (coe
                                                                                                                                                             v2)
                                                                                                                                                          (coe
                                                                                                                                                             v3))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                             (coe
                                                                                                                                                                v1))))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                          (coe
                                                                                                                                                             v1))))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                       (coe
                                                                                                                                                          v0))
                                                                                                                                                    (coe
                                                                                                                                                       du_balOut_3654
                                                                                                                                                       (coe
                                                                                                                                                          v0)
                                                                                                                                                       (coe
                                                                                                                                                          v1))))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                    (coe
                                                                                                                                                       v0))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                                                                                                    (coe
                                                                                                                                                       v0)
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                                       (coe
                                                                                                                                                          v2))
                                                                                                                                                    (coe
                                                                                                                                                       v3)
                                                                                                                                                    (let v45
                                                                                                                                                           = coe
                                                                                                                                                               C_mkGeneralizeTel_952005
                                                                                                                                                               (coe
                                                                                                                                                                  v1)
                                                                                                                                                               (coe
                                                                                                                                                                  v2)
                                                                                                                                                               (coe
                                                                                                                                                                  v3)
                                                                                                                                                               (coe
                                                                                                                                                                  v4)
                                                                                                                                                               (coe
                                                                                                                                                                  v5)
                                                                                                                                                               (coe
                                                                                                                                                                  v6)
                                                                                                                                                               (coe
                                                                                                                                                                  v7) in
                                                                                                                                                     coe
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                          (coe
                                                                                                                                                             d_'46'generalizedField'45'tx_951989
                                                                                                                                                             (coe
                                                                                                                                                                v45))))))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                                                 (\ v45
                                                                                                                                                    v46
                                                                                                                                                    v47
                                                                                                                                                    v48
                                                                                                                                                    v49 ->
                                                                                                                                                    v49)
                                                                                                                                                 (addInt
                                                                                                                                                    (coe
                                                                                                                                                       addInt
                                                                                                                                                       (coe
                                                                                                                                                          addInt
                                                                                                                                                          (coe
                                                                                                                                                             du_newDeps_3646
                                                                                                                                                             (coe
                                                                                                                                                                v0)
                                                                                                                                                             (coe
                                                                                                                                                                v1)
                                                                                                                                                             (coe
                                                                                                                                                                v2)
                                                                                                                                                             (coe
                                                                                                                                                                v3))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                (coe
                                                                                                                                                                   v1))))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                             (coe
                                                                                                                                                                v1))))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                          (coe
                                                                                                                                                             v0))
                                                                                                                                                       (coe
                                                                                                                                                          du_balOut_3654
                                                                                                                                                          (coe
                                                                                                                                                             v0)
                                                                                                                                                          (coe
                                                                                                                                                             v1))))
                                                                                                                                                 (addInt
                                                                                                                                                    (coe
                                                                                                                                                       addInt
                                                                                                                                                       (coe
                                                                                                                                                          du_newDeps_3646
                                                                                                                                                          (coe
                                                                                                                                                             v0)
                                                                                                                                                          (coe
                                                                                                                                                             v1)
                                                                                                                                                          (coe
                                                                                                                                                             v2)
                                                                                                                                                          (coe
                                                                                                                                                             v3))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                             (coe
                                                                                                                                                                v1))))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                          (coe
                                                                                                                                                             v0))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                (coe
                                                                                                                                                                   v0)))
                                                                                                                                                          (coe
                                                                                                                                                             du_balOut_3654
                                                                                                                                                             (coe
                                                                                                                                                                v0)
                                                                                                                                                             (coe
                                                                                                                                                                v1))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                (coe
                                                                                                                                                                   v0))
                                                                                                                                                             (MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                   (coe
                                                                                                                                                                      v1)))))))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                       (coe
                                                                                                                                                          v0))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                                                                                                       (coe
                                                                                                                                                          v0)
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                                          (coe
                                                                                                                                                             v2))
                                                                                                                                                       (coe
                                                                                                                                                          v3)
                                                                                                                                                       (let v45
                                                                                                                                                              = coe
                                                                                                                                                                  C_mkGeneralizeTel_952005
                                                                                                                                                                  (coe
                                                                                                                                                                     v1)
                                                                                                                                                                  (coe
                                                                                                                                                                     v2)
                                                                                                                                                                  (coe
                                                                                                                                                                     v3)
                                                                                                                                                                  (coe
                                                                                                                                                                     v4)
                                                                                                                                                                  (coe
                                                                                                                                                                     v5)
                                                                                                                                                                  (coe
                                                                                                                                                                     v6)
                                                                                                                                                                  (coe
                                                                                                                                                                     v7) in
                                                                                                                                                        coe
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                             (coe
                                                                                                                                                                d_'46'generalizedField'45'tx_951989
                                                                                                                                                                (coe
                                                                                                                                                                   v45))))))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                                                    (\ v45
                                                                                                                                                       v46
                                                                                                                                                       v47
                                                                                                                                                       v48
                                                                                                                                                       v49 ->
                                                                                                                                                       v49)
                                                                                                                                                    (addInt
                                                                                                                                                       (coe
                                                                                                                                                          addInt
                                                                                                                                                          (coe
                                                                                                                                                             du_newDeps_3646
                                                                                                                                                             (coe
                                                                                                                                                                v0)
                                                                                                                                                             (coe
                                                                                                                                                                v1)
                                                                                                                                                             (coe
                                                                                                                                                                v2)
                                                                                                                                                             (coe
                                                                                                                                                                v3))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                (coe
                                                                                                                                                                   v1))))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                             (coe
                                                                                                                                                                v0))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                   (coe
                                                                                                                                                                      v0)))
                                                                                                                                                             (coe
                                                                                                                                                                du_balOut_3654
                                                                                                                                                                (coe
                                                                                                                                                                   v0)
                                                                                                                                                                (coe
                                                                                                                                                                   v1))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                   (coe
                                                                                                                                                                      v0))
                                                                                                                                                                (MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                      (coe
                                                                                                                                                                         v1)))))))
                                                                                                                                                    (addInt
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                             (coe
                                                                                                                                                                v1)))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                             (coe
                                                                                                                                                                v0))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                   (coe
                                                                                                                                                                      v0)))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                      (coe
                                                                                                                                                                         v0)))
                                                                                                                                                                (coe
                                                                                                                                                                   du_balOut_3654
                                                                                                                                                                   (coe
                                                                                                                                                                      v0)
                                                                                                                                                                   (coe
                                                                                                                                                                      v1))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                      (coe
                                                                                                                                                                         v0))
                                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                         (coe
                                                                                                                                                                            v1)))))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                   (coe
                                                                                                                                                                      v0))
                                                                                                                                                                (coe
                                                                                                                                                                   du_newDeps_3646
                                                                                                                                                                   (coe
                                                                                                                                                                      v0)
                                                                                                                                                                   (coe
                                                                                                                                                                      v1)
                                                                                                                                                                   (coe
                                                                                                                                                                      v2)
                                                                                                                                                                   (coe
                                                                                                                                                                      v3))))))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                          (coe
                                                                                                                                                             v0))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                                                                                                          (coe
                                                                                                                                                             v0)
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                                             (coe
                                                                                                                                                                v2))
                                                                                                                                                          (coe
                                                                                                                                                             v3)
                                                                                                                                                          (let v45
                                                                                                                                                                 = coe
                                                                                                                                                                     C_mkGeneralizeTel_952005
                                                                                                                                                                     (coe
                                                                                                                                                                        v1)
                                                                                                                                                                     (coe
                                                                                                                                                                        v2)
                                                                                                                                                                     (coe
                                                                                                                                                                        v3)
                                                                                                                                                                     (coe
                                                                                                                                                                        v4)
                                                                                                                                                                     (coe
                                                                                                                                                                        v5)
                                                                                                                                                                     (coe
                                                                                                                                                                        v6)
                                                                                                                                                                     (coe
                                                                                                                                                                        v7) in
                                                                                                                                                           coe
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                (coe
                                                                                                                                                                   d_'46'generalizedField'45'tx_951989
                                                                                                                                                                   (coe
                                                                                                                                                                      v45))))))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                                                       (\ v45
                                                                                                                                                          v46
                                                                                                                                                          v47
                                                                                                                                                          v48
                                                                                                                                                          v49 ->
                                                                                                                                                          v49)
                                                                                                                                                       (addInt
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                (coe
                                                                                                                                                                   v1)))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                (coe
                                                                                                                                                                   v0))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                      (coe
                                                                                                                                                                         v0)))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                         (coe
                                                                                                                                                                            v0)))
                                                                                                                                                                   (coe
                                                                                                                                                                      du_balOut_3654
                                                                                                                                                                      (coe
                                                                                                                                                                         v0)
                                                                                                                                                                      (coe
                                                                                                                                                                         v1))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                         (coe
                                                                                                                                                                            v0))
                                                                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                            (coe
                                                                                                                                                                               v1)))))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                      (coe
                                                                                                                                                                         v0))
                                                                                                                                                                   (coe
                                                                                                                                                                      du_newDeps_3646
                                                                                                                                                                      (coe
                                                                                                                                                                         v0)
                                                                                                                                                                      (coe
                                                                                                                                                                         v1)
                                                                                                                                                                      (coe
                                                                                                                                                                         v2)
                                                                                                                                                                      (coe
                                                                                                                                                                         v3))))))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                             (coe
                                                                                                                                                                v0))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                   (coe
                                                                                                                                                                      v0)))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                      (coe
                                                                                                                                                                         v0)))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                         (coe
                                                                                                                                                                            v0)))
                                                                                                                                                                   (coe
                                                                                                                                                                      du_balOut_3654
                                                                                                                                                                      (coe
                                                                                                                                                                         v0)
                                                                                                                                                                      (coe
                                                                                                                                                                         v1))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                         (coe
                                                                                                                                                                            v0))
                                                                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                            (coe
                                                                                                                                                                               v1)))))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                      (coe
                                                                                                                                                                         v0))
                                                                                                                                                                   (coe
                                                                                                                                                                      du_newDeps_3646
                                                                                                                                                                      (coe
                                                                                                                                                                         v0)
                                                                                                                                                                      (coe
                                                                                                                                                                         v1)
                                                                                                                                                                      (coe
                                                                                                                                                                         v2)
                                                                                                                                                                      (coe
                                                                                                                                                                         v3))))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                   (coe
                                                                                                                                                                      v0))
                                                                                                                                                                (MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                      (coe
                                                                                                                                                                         v1))))))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                             (coe
                                                                                                                                                                v0))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                                                                                                             (coe
                                                                                                                                                                v0)
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                                                (coe
                                                                                                                                                                   v2))
                                                                                                                                                             (coe
                                                                                                                                                                v3)
                                                                                                                                                             (let v45
                                                                                                                                                                    = coe
                                                                                                                                                                        C_mkGeneralizeTel_952005
                                                                                                                                                                        (coe
                                                                                                                                                                           v1)
                                                                                                                                                                        (coe
                                                                                                                                                                           v2)
                                                                                                                                                                        (coe
                                                                                                                                                                           v3)
                                                                                                                                                                        (coe
                                                                                                                                                                           v4)
                                                                                                                                                                        (coe
                                                                                                                                                                           v5)
                                                                                                                                                                        (coe
                                                                                                                                                                           v6)
                                                                                                                                                                        (coe
                                                                                                                                                                           v7) in
                                                                                                                                                              coe
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                   (coe
                                                                                                                                                                      d_'46'generalizedField'45'tx_951989
                                                                                                                                                                      (coe
                                                                                                                                                                         v45))))))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                                                          (\ v45
                                                                                                                                                             v46
                                                                                                                                                             v47
                                                                                                                                                             v48
                                                                                                                                                             v49 ->
                                                                                                                                                             v49)
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                (coe
                                                                                                                                                                   v0))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                      (coe
                                                                                                                                                                         v0)))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                         (coe
                                                                                                                                                                            v0)))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                            (coe
                                                                                                                                                                               v0)))
                                                                                                                                                                      (coe
                                                                                                                                                                         du_balOut_3654
                                                                                                                                                                         (coe
                                                                                                                                                                            v0)
                                                                                                                                                                         (coe
                                                                                                                                                                            v1))
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                            (coe
                                                                                                                                                                               v0))
                                                                                                                                                                         (MAlonzo.Code.Ledger.Transaction.d_txfee_2844
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                               (coe
                                                                                                                                                                                  v1)))))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                         (coe
                                                                                                                                                                            v0))
                                                                                                                                                                      (coe
                                                                                                                                                                         du_newDeps_3646
                                                                                                                                                                         (coe
                                                                                                                                                                            v0)
                                                                                                                                                                         (coe
                                                                                                                                                                            v1)
                                                                                                                                                                         (coe
                                                                                                                                                                            v2)
                                                                                                                                                                         (coe
                                                                                                                                                                            v3))))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                      (coe
                                                                                                                                                                         v0))
                                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_txdonation_2858
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                         (coe
                                                                                                                                                                            v1))))))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                (coe
                                                                                                                                                                   v0))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                      (coe
                                                                                                                                                                         v0)))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                         (coe
                                                                                                                                                                            v0)))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                            (coe
                                                                                                                                                                               v0)))
                                                                                                                                                                      (coe
                                                                                                                                                                         du_balIn_3652
                                                                                                                                                                         (coe
                                                                                                                                                                            v0)
                                                                                                                                                                         (coe
                                                                                                                                                                            v1)
                                                                                                                                                                         (coe
                                                                                                                                                                            v3))
                                                                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_mint_2846
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                            (coe
                                                                                                                                                                               v1))))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                         (coe
                                                                                                                                                                            v0))
                                                                                                                                                                      (coe
                                                                                                                                                                         du_refunds_3648
                                                                                                                                                                         (coe
                                                                                                                                                                            v0)
                                                                                                                                                                         (coe
                                                                                                                                                                            v1)
                                                                                                                                                                         (coe
                                                                                                                                                                            v2)
                                                                                                                                                                         (coe
                                                                                                                                                                            v3))))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                      (coe
                                                                                                                                                                         v0))
                                                                                                                                                                   (coe
                                                                                                                                                                      du_wdrls_3650
                                                                                                                                                                      (coe
                                                                                                                                                                         v0)
                                                                                                                                                                      (coe
                                                                                                                                                                         v1)))))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                (coe
                                                                                                                                                                   v0))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Utxo.du_consumed_2528
                                                                                                                                                                (coe
                                                                                                                                                                   v0)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Utxo.d_pparams_1966
                                                                                                                                                                   (coe
                                                                                                                                                                      v2))
                                                                                                                                                                (coe
                                                                                                                                                                   v3)
                                                                                                                                                                (let v45
                                                                                                                                                                       = coe
                                                                                                                                                                           C_mkGeneralizeTel_952005
                                                                                                                                                                           (coe
                                                                                                                                                                              v1)
                                                                                                                                                                           (coe
                                                                                                                                                                              v2)
                                                                                                                                                                           (coe
                                                                                                                                                                              v3)
                                                                                                                                                                           (coe
                                                                                                                                                                              v4)
                                                                                                                                                                           (coe
                                                                                                                                                                              v5)
                                                                                                                                                                           (coe
                                                                                                                                                                              v6)
                                                                                                                                                                           (coe
                                                                                                                                                                              v7) in
                                                                                                                                                                 coe
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                      (coe
                                                                                                                                                                         d_'46'generalizedField'45'tx_951989
                                                                                                                                                                         (coe
                                                                                                                                                                            v45))))))
                                                                                                                                                          (let v45
                                                                                                                                                                 = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810 in
                                                                                                                                                           coe
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                                                                                                                                   (coe
                                                                                                                                                                      v45))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                      (coe
                                                                                                                                                                         v0))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                            (coe
                                                                                                                                                                               v0)))
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                               (coe
                                                                                                                                                                                  v0)))
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Algebra.Bundles.d__'8729'__982
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v0)))
                                                                                                                                                                            (coe
                                                                                                                                                                               du_balIn_3652
                                                                                                                                                                               (coe
                                                                                                                                                                                  v0)
                                                                                                                                                                               (coe
                                                                                                                                                                                  v1)
                                                                                                                                                                               (coe
                                                                                                                                                                                  v3))
                                                                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_mint_2846
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v1))))
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                               (coe
                                                                                                                                                                                  v0))
                                                                                                                                                                            (coe
                                                                                                                                                                               du_refunds_3648
                                                                                                                                                                               (coe
                                                                                                                                                                                  v0)
                                                                                                                                                                               (coe
                                                                                                                                                                                  v1)
                                                                                                                                                                               (coe
                                                                                                                                                                                  v2)
                                                                                                                                                                               (coe
                                                                                                                                                                                  v3))))
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                                                            (coe
                                                                                                                                                                               v0))
                                                                                                                                                                         (coe
                                                                                                                                                                            du_wdrls_3650
                                                                                                                                                                            (coe
                                                                                                                                                                               v0)
                                                                                                                                                                            (coe
                                                                                                                                                                               v1)))))))
                                                                                                                                                          erased)
                                                                                                                                                       erased)
                                                                                                                                                    erased)
                                                                                                                                                 erased)
                                                                                                                                              erased)
                                                                                                                                           erased)
                                                                                                                                        erased)
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Data.Nat.Properties.du_m'8804'n'43'm_3494
                                                                                                                                        (coe
                                                                                                                                           du_newDeps_3646
                                                                                                                                           (coe
                                                                                                                                              v0)
                                                                                                                                           (coe
                                                                                                                                              v1)
                                                                                                                                           (coe
                                                                                                                                              v2)
                                                                                                                                           (coe
                                                                                                                                              v3))))
                                                                                                                                  erased)
                                                                                                                               (MAlonzo.Code.Data.Nat.Properties.d_'8760''45'mono'737''45''8804'_5090
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                     (coe
                                                                                                                                        (\ v45 ->
                                                                                                                                           v45))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2068
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_txprop_2856
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                              (coe
                                                                                                                                                 v1)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_txid_2870
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                              (coe
                                                                                                                                                 v1)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                                                                                           (coe
                                                                                                                                              du_pp_3514
                                                                                                                                              (coe
                                                                                                                                                 v2)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                                                           (coe
                                                                                                                                              v3))))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                     (coe
                                                                                                                                        (\ v45 ->
                                                                                                                                           v45))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2056
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           du_pp_3514
                                                                                                                                           (coe
                                                                                                                                              v2))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_txcerts_2850
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                              (coe
                                                                                                                                                 v1)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2068
                                                                                                                                           (coe
                                                                                                                                              v0)
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_txprop_2856
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                 (coe
                                                                                                                                                    v1)))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_txid_2870
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                                 (coe
                                                                                                                                                    v1)))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                                                                                              (coe
                                                                                                                                                 du_pp_3514
                                                                                                                                                 (coe
                                                                                                                                                    v2)))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                                                              (coe
                                                                                                                                                 v3)))))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                     (coe
                                                                                                                                        (\ v45 ->
                                                                                                                                           v45))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                                                        (coe
                                                                                                                                           v3)))
                                                                                                                                  (coe
                                                                                                                                     du_'8804'updateCertDeps_3338
                                                                                                                                     (coe
                                                                                                                                        v0)
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_txcerts_2850
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                           (coe
                                                                                                                                              v1)))
                                                                                                                                     (coe
                                                                                                                                        du_pp_3514
                                                                                                                                        (coe
                                                                                                                                           v2))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2068
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_txprop_2856
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                              (coe
                                                                                                                                                 v1)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_txid_2870
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2908
                                                                                                                                              (coe
                                                                                                                                                 v1)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                                                                                           (coe
                                                                                                                                              du_pp_3514
                                                                                                                                              (coe
                                                                                                                                                 v2)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                                                           (coe
                                                                                                                                              v3)))
                                                                                                                                     (coe
                                                                                                                                        v9))))
                                                                                                                            erased))
                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._._.pp
d_pp_3514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_2196 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2720 ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2720 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2544 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_3514 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
          ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
          ~v26 ~v27 ~v28
  = du_pp_3514 v5
du_pp_3514 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pp_3514 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1966 (coe v0)
-- Ledger.Utxo.Properties._._∣ˡ_
d__'8739''737'__3525 a0 a1 a2 a3 = ()
-- Ledger.Utxo.Properties._._.newDeps
d_newDeps_3646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_2196 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2720 ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2720 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2544 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> Integer
d_newDeps_3646 v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
               ~v26 ~v27 ~v28
  = du_newDeps_3646 v0 v4 v5 v6
du_newDeps_3646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 -> Integer
du_newDeps_3646 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.du_newDeposits_2520 (coe v0)
      (coe du_pp_3514 (coe v2)) (coe v3)
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v1))
-- Ledger.Utxo.Properties._._.refunds
d_refunds_3648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_2196 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2720 ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2720 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2544 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> Integer
d_refunds_3648 v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
               ~v26 ~v27 ~v28
  = du_refunds_3648 v0 v4 v5 v6
du_refunds_3648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 -> Integer
du_refunds_3648 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2512 (coe v0)
      (coe du_pp_3514 (coe v2)) (coe v3)
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v1))
-- Ledger.Utxo.Properties._._.wdrls
d_wdrls_3650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_2196 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2720 ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2720 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2544 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> Integer
d_wdrls_3650 v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
             ~v26 ~v27 ~v28
  = du_wdrls_3650 v0 v4
du_wdrls_3650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> Integer
du_wdrls_3650 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v2 -> v2))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2852
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v1)))
-- Ledger.Utxo.Properties._._.balIn
d_balIn_3652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_2196 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2720 ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2720 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2544 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> AgdaAny
d_balIn_3652 v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
             ~v26 ~v27 ~v28
  = du_balIn_3652 v0 v4 v6
du_balIn_3652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 -> AgdaAny
du_balIn_3652 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Utxo.du_balance_2006 (coe v0)
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1214 (coe v0))))
         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1980 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txins_2838
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v1))))
-- Ledger.Utxo.Properties._._.balOut
d_balOut_3654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_2196 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2720 ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2720 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2544 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> AgdaAny
d_balOut_3654 v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
              ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
              ~v26 ~v27 ~v28
  = du_balOut_3654 v0 v4
du_balOut_3654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> AgdaAny
du_balOut_3654 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.du_balance_2006 (coe v0)
      (coe
         MAlonzo.Code.Ledger.Utxo.du_outs_2000
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v1)))
-- Ledger.Utxo.Properties..generalizedField-tx
d_'46'generalizedField'45'tx_735567 ::
  T_GeneralizeTel_735587 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2898
d_'46'generalizedField'45'tx_735567 v0
  = case coe v0 of
      C_mkGeneralizeTel_735589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties..generalizedField-utxo
d_'46'generalizedField'45'utxo_735569 ::
  T_GeneralizeTel_735587 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_735569 v0
  = case coe v0 of
      C_mkGeneralizeTel_735589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties..generalizedField-Γ
d_'46'generalizedField'45'Γ_735571 ::
  T_GeneralizeTel_735587 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956
d_'46'generalizedField'45'Γ_735571 v0
  = case coe v0 of
      C_mkGeneralizeTel_735589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties..generalizedField-fees
d_'46'generalizedField'45'fees_735573 ::
  T_GeneralizeTel_735587 -> Integer
d_'46'generalizedField'45'fees_735573 v0
  = case coe v0 of
      C_mkGeneralizeTel_735589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties..generalizedField-deposits
d_'46'generalizedField'45'deposits_735575 ::
  T_GeneralizeTel_735587 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_735575 v0
  = case coe v0 of
      C_mkGeneralizeTel_735589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties..generalizedField-donations
d_'46'generalizedField'45'donations_735577 ::
  T_GeneralizeTel_735587 -> Integer
d_'46'generalizedField'45'donations_735577 v0
  = case coe v0 of
      C_mkGeneralizeTel_735589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties..generalizedField-utxo'
d_'46'generalizedField'45'utxo''_735579 ::
  T_GeneralizeTel_735587 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo''_735579 v0
  = case coe v0 of
      C_mkGeneralizeTel_735589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties..generalizedField-fees'
d_'46'generalizedField'45'fees''_735581 ::
  T_GeneralizeTel_735587 -> Integer
d_'46'generalizedField'45'fees''_735581 v0
  = case coe v0 of
      C_mkGeneralizeTel_735589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties..generalizedField-deposits'
d_'46'generalizedField'45'deposits''_735583 ::
  T_GeneralizeTel_735587 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits''_735583 v0
  = case coe v0 of
      C_mkGeneralizeTel_735589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties..generalizedField-donations'
d_'46'generalizedField'45'donations''_735585 ::
  T_GeneralizeTel_735587 -> Integer
d_'46'generalizedField'45'donations''_735585 v0
  = case coe v0 of
      C_mkGeneralizeTel_735589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties.GeneralizeTel
d_GeneralizeTel_735587 a0 a1 = ()
data T_GeneralizeTel_735587
  = C_mkGeneralizeTel_735589 MAlonzo.Code.Ledger.Transaction.T_Tx_2898
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Utxo.Properties._..generalizedField-tx
d_'46'generalizedField'45'tx_951989 ::
  T_GeneralizeTel_952003 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2898
d_'46'generalizedField'45'tx_951989 v0
  = case coe v0 of
      C_mkGeneralizeTel_952005 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-Γ
d_'46'generalizedField'45'Γ_951991 ::
  T_GeneralizeTel_952003 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956
d_'46'generalizedField'45'Γ_951991 v0
  = case coe v0 of
      C_mkGeneralizeTel_952005 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-utxoState
d_'46'generalizedField'45'utxoState_951993 ::
  T_GeneralizeTel_952003 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
d_'46'generalizedField'45'utxoState_951993 v0
  = case coe v0 of
      C_mkGeneralizeTel_952005 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-utxo'
d_'46'generalizedField'45'utxo''_951995 ::
  T_GeneralizeTel_952003 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo''_951995 v0
  = case coe v0 of
      C_mkGeneralizeTel_952005 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-fees'
d_'46'generalizedField'45'fees''_951997 ::
  T_GeneralizeTel_952003 -> Integer
d_'46'generalizedField'45'fees''_951997 v0
  = case coe v0 of
      C_mkGeneralizeTel_952005 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-deposits'
d_'46'generalizedField'45'deposits''_951999 ::
  T_GeneralizeTel_952003 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits''_951999 v0
  = case coe v0 of
      C_mkGeneralizeTel_952005 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-donations'
d_'46'generalizedField'45'donations''_952001 ::
  T_GeneralizeTel_952003 -> Integer
d_'46'generalizedField'45'donations''_952001 v0
  = case coe v0 of
      C_mkGeneralizeTel_952005 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._.GeneralizeTel
d_GeneralizeTel_952003 a0 a1 a2 a3 = ()
data T_GeneralizeTel_952003
  = C_mkGeneralizeTel_952005 MAlonzo.Code.Ledger.Transaction.T_Tx_2898
                             MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1956
                             MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
