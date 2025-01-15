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
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Ext
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Fees
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _._≤ᵗ_
d__'8804''7511'__16 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__16 = erased
-- _.Addr
d_Addr_26 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Addr_26 = erased
-- _.THash
d_THash_50 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_50 = erased
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
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- _.DecEq-BaseAddr
d_DecEq'45'BaseAddr_72 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_72 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))
-- _.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_74 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_74 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_104 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))
-- _.ExUnits
d_ExUnits_146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_146 = erased
-- _.GovProposal
d_GovProposal_156 a0 = ()
-- _.MemoryEstimate
d_MemoryEstimate_196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_196 = erased
-- _.NetworkId
d_NetworkId_204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_204 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196 (coe v0))
-- _.PParams
d_PParams_222 a0 = ()
-- _.ScriptHash
d_ScriptHash_278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_278 = erased
-- _.Slot
d_Slot_324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_324 = erased
-- _.Tx
d_Tx_352 a0 = ()
-- _.TxBody
d_TxBody_354 a0 = ()
-- _.TxOut
d_TxOut_360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_360 = erased
-- _.TxOutʰ
d_TxOut'688'_362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut'688'_362 = erased
-- _.UTxO
d_UTxO_366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_366 = erased
-- _.Value
d_Value_384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_384 = erased
-- _.coin
d_coin_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_412 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
-- _.getValueʰ
d_getValue'688'_448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_448 ~v0 = du_getValue'688'_448
du_getValue'688'_448 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_448
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2652
-- _.inject
d_inject_458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_458 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
-- _.netId
d_netId_500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_500 ~v0 = du_netId_500
du_netId_500 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_500 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_562 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_562 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2642 (coe v0)
-- _.GovProposal.action
d_action_690 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_690 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_764 (coe v0)
-- _.GovProposal.anchor
d_anchor_692 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_692 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- _.GovProposal.deposit
d_deposit_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> Integer
d_deposit_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_770 (coe v0)
-- _.GovProposal.policy
d_policy_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  Maybe AgdaAny
d_policy_696 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_768 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> AgdaAny
d_prevAction_698 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_766 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_700 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_772 (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_742 a0 = ()
-- _.PParams.Emax
d_Emax_896 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_896 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- _.PParams.a
d_a_898 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_898 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- _.PParams.a0
d_a0_900 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_900 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- _.PParams.b
d_b_902 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_902 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_904 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_906 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_910 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- _.PParams.costmdls
d_costmdls_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_930 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_934 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_936 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_944 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- _.PParams.nopt
d_nopt_948 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_948 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- _.PParams.prices
d_prices_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- _.PParams.pv
d_pv_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_956 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_958 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_960 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- _.Tx.body
d_body_1372 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
d_body_1372 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0)
-- _.Tx.isValid
d_isValid_1374 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Bool
d_isValid_1374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v0)
-- _.Tx.txAD
d_txAD_1376 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Maybe AgdaAny
d_txAD_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2634 (coe v0)
-- _.Tx.wits
d_wits_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598
d_wits_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v0)
-- _.TxBody.collateral
d_collateral_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2592 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe Integer
d_curTreasury_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2586 (coe v0)
-- _.TxBody.mint
d_mint_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
d_mint_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2566 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2560 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1390 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> [AgdaAny]
d_reqSigHash_1390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2594 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1392 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe AgdaAny
d_scriptIntHash_1392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2596 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe AgdaAny
d_txADhash_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2582 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe AgdaAny
d_txNetworkId_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2584 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2570 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txdonation_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2578 (coe v0)
-- _.TxBody.txfee
d_txfee_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txfee_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2564 (coe v0)
-- _.TxBody.txid
d_txid_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
d_txid_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2590 (coe v0)
-- _.TxBody.txins
d_txins_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2558 (coe v0)
-- _.TxBody.txouts
d_txouts_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2562 (coe v0)
-- _.TxBody.txprop
d_txprop_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750]
d_txprop_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2576 (coe v0)
-- _.TxBody.txsize
d_txsize_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txsize_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2588 (coe v0)
-- _.TxBody.txup
d_txup_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2580 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2568 (coe v0)
-- _.TxBody.txvote
d_txvote_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_txvote_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2574 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572 (coe v0)
-- Ledger.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1506 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2354
      (coe v0) (coe v1)
-- Ledger.Utxo._.evalScripts
d_evalScripts_1516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1516 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2372 (coe v0)
      (coe v1)
-- Ledger.Utxo._.DCert
d_DCert_1622 a0 a1 = ()
-- Ledger.Utxo._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1634 v0 ~v1
  = du_DecEq'45'DepositPurpose_1634 v0
du_DecEq'45'DepositPurpose_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1634 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0))
-- Ledger.Utxo._.DepositPurpose
d_DepositPurpose_1638 a0 a1 = ()
-- Ledger.Utxo._.Deposits
d_Deposits_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 -> ()
d_Deposits_1640 = erased
-- Ledger.Utxo._*↓_
d__'42''8595'__1816 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1816 ~v0 v1 v2 = du__'42''8595'__1816 v1 v2
du__'42''8595'__1816 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1816 v0 v1
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
d_isTwoPhaseScriptAddress_1822 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1822 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress_1822 v0 v2 v3 v4
du_isTwoPhaseScriptAddress_1822 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1822 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
         (coe MAlonzo.Code.Ledger.Address.du_payCred_108 (coe v3)))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.ToBool.du_if_then_else__46
              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_106)
              (coe
                 MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2738 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Address.du_getScriptHash_184 (coe v3) (coe v4))
                 (coe v1) (coe v2))
              (coe
                 MAlonzo.Code.Level.C_lift_20
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              (coe
                 (\ v5 ->
                    coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2752 (coe v5)))
              (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
-- Ledger.Utxo.getDataHashes
d_getDataHashes_1834 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1834 ~v0 ~v1 v2 = du_getDataHashes_1834 v2
du_getDataHashes_1834 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1834 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30)
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_576
         (MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v1 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
         v0)
-- Ledger.Utxo.getInputHashes
d_getInputHashes_1838 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1838 v0 ~v1 v2 v3
  = du_getInputHashes_1838 v0 v2 v3
du_getInputHashes_1838 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1838 v0 v1 v2
  = coe
      du_getDataHashes_1834
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
              (coe
                 du_isTwoPhaseScriptAddress_1822 (coe v0) (coe v1) (coe v2)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
         (coe
            MAlonzo.Code.Class.IsSet.du_range_550
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
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
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2558
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v1))))))
-- Ledger.Utxo.totExUnits
d_totExUnits_1894 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> AgdaAny
d_totExUnits_1894 v0 ~v1 v2 = du_totExUnits_1894 v0 v2
du_totExUnits_1894 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> AgdaAny
du_totExUnits_1894 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe
               MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
               (coe
                  MAlonzo.Code.Ledger.Script.d_Data'688'_190
                  (coe
                     MAlonzo.Code.Ledger.Script.d_ps_448
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_448
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786 (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2614
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v1)))
-- Ledger.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1906 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 -> Integer
d_utxoEntrySizeWithoutVal_1906 ~v0
  = du_utxoEntrySizeWithoutVal_1906
du_utxoEntrySizeWithoutVal_1906 :: Integer
du_utxoEntrySizeWithoutVal_1906 = coe (8 :: Integer)
-- Ledger.Utxo.utxoEntrySize
d_utxoEntrySize_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1908 v0 ~v1 v2 = du_utxoEntrySize_1908 v0 v2
du_utxoEntrySize_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1908 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2652 (coe v1)))
-- Ledger.Utxo.UTxOEnv
d_UTxOEnv_1912 a0 a1 = ()
data T_UTxOEnv_1912
  = C_UTxOEnv'46'constructor_8659 AgdaAny
                                  MAlonzo.Code.Ledger.PParams.T_PParams_242 Integer
-- Ledger.Utxo.UTxOEnv.slot
d_slot_1920 :: T_UTxOEnv_1912 -> AgdaAny
d_slot_1920 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8659 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.pparams
d_pparams_1922 ::
  T_UTxOEnv_1912 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1922 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8659 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.treasury
d_treasury_1924 :: T_UTxOEnv_1912 -> Integer
d_treasury_1924 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8659 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState
d_UTxOState_1926 a0 a1 = ()
data T_UTxOState_1926
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_1944 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Utxo.UTxOState.utxo
d_utxo_1936 ::
  T_UTxOState_1926 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1936 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1944 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.fees
d_fees_1938 :: T_UTxOState_1926 -> Integer
d_fees_1938 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1944 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.deposits
d_deposits_1940 ::
  T_UTxOState_1926 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1940 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1944 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.donations
d_donations_1942 :: T_UTxOState_1926 -> Integer
d_donations_1942 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1944 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1946 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__1946
  = C_UTXO'45'inductive_3140 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._._.outs
d_outs_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1956 ~v0 ~v1 v2 = du_outs_1956 v2
du_outs_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1956 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2590 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2562 (coe v0))
-- Ledger.Utxo._._.balance
d_balance_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1962 v0 ~v1 v2 = du_balance_1962 v0 v2
du_balance_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1962 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0)))
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
                                 MAlonzo.Code.Ledger.Script.d_ps_448
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_448
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0)))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2652)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2642 (coe v0))
         (coe v1))
-- Ledger.Utxo._._.cbalance
d_cbalance_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1968 v0 ~v1 v2 = du_cbalance_1968 v0 v2
du_cbalance_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1968 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
      (coe du_balance_1962 (coe v0) (coe v1))
-- Ledger.Utxo._._.refScriptsSize
d_refScriptsSize_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_refScriptsSize_1972 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Base.d_sum_280
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (MAlonzo.Code.Ledger.Abstract.d_scriptSize_1732 (coe v1))
         (MAlonzo.Code.Ledger.Transaction.d_refScripts_2676
            (coe v0) (coe v3) (coe v2)))
-- Ledger.Utxo._._.minfee
d_minfee_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_minfee_1978 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1724 v1
               (MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v2))
               (coe du_totExUnits_1894 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Fees.du_scriptsCost_1472 (coe v2)
               (coe d_refScriptsSize_1972 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v2)))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_2588
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v4))))
-- Ledger.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1986 v0 ~v1 = du_HasCoin'45'UTxO_1986 v0
du_HasCoin'45'UTxO_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1986 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_1968 (coe v0))
-- Ledger.Utxo.certDeposit
d_certDeposit_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1988 ~v0 ~v1 v2 v3 = du_certDeposit_1988 v2 v3
du_certDeposit_1988 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1988 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_834 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Certs.C_regpool_838 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_816 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v1)))
         MAlonzo.Code.Ledger.Certs.C_regdrep_842 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818 (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Certs.C_reg_848 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v1)))
         _ -> coe v2)
-- Ledger.Utxo.certRefund
d_certRefund_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
d_certRefund_2006 ~v0 ~v1 v2 = du_certRefund_2006 v2
du_certRefund_2006 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
du_certRefund_2006 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_442
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_836 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_844 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818 (coe v2))
         _ -> coe v1)
-- Ledger.Utxo.ValidCertDeposits
d_ValidCertDeposits_2016 a0 a1 a2 a3 a4 = ()
data T_ValidCertDeposits_2016
  = C_'91''93'_2022 | C_delegate_2034 T_ValidCertDeposits_2016 |
    C_regpool_2042 T_ValidCertDeposits_2016 |
    C_regdrep_2052 T_ValidCertDeposits_2016 |
    C_reg_2060 T_ValidCertDeposits_2016 |
    C_dereg_2070 Integer
                 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_ValidCertDeposits_2016 |
    C_deregdrep_2078 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                     T_ValidCertDeposits_2016 |
    C_ccreghot_2086 T_ValidCertDeposits_2016 |
    C_retirepool_2094 T_ValidCertDeposits_2016
-- Ledger.Utxo.validCertDeposits?
d_validCertDeposits'63'_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCertDeposits'63'_2102 v0 ~v1 v2 v3 v4
  = du_validCertDeposits'63'_2102 v0 v2 v3 v4
du_validCertDeposits'63'_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCertDeposits'63'_2102 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe C_'91''93'_2022))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Certs.C_delegate_834 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_delegate_2034)
                    (coe
                       (\ v10 ->
                          case coe v10 of
                            C_delegate_2034 v16 -> coe v16
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2102 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
                          v2
                          (coe
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_324
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v6))
                                (coe v9))))
                       (coe v5))
             MAlonzo.Code.Ledger.Certs.C_dereg_836 v6 v7
               -> case coe v7 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> let v9
                               = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                         erased
                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                               (coe v0)))
                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814
                                            (coe v6))
                                         (coe v8))
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2))) in
                         coe
                           (case coe v9 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                -> if coe v10
                                     then case coe v11 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                              -> coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                   (coe
                                                      C_dereg_2070 v8 v12
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                         erased))
                                                   (coe
                                                      (\ v13 ->
                                                         case coe v13 of
                                                           C_dereg_2070 v16 v18 v19 v20 -> coe v20
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2102 (coe v0)
                                                      (coe v1)
                                                      (let v13
                                                             = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                    (coe v0)) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v13)
                                                            (coe v2)
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814
                                                                  (coe v6)))))
                                                      (coe v5))
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     else coe
                                            seq (coe v11)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe v10)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> let v8
                               = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v6))
                                      (coe
                                         MAlonzo.Code.Class.IsSet.du_dom_548
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                         (coe v2))) in
                         coe
                           (case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                -> if coe v9
                                     then case coe v10 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                              -> coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                   (coe
                                                      C_dereg_2070
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Function.Bundles.d_from_1726
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814
                                                                  (coe v6)))
                                                            v11))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                         (coe
                                                            MAlonzo.Code.Function.Bundles.d_from_1726
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814
                                                                  (coe v6)))
                                                            v11))
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                         erased))
                                                   (coe
                                                      (\ v12 ->
                                                         case coe v12 of
                                                           C_dereg_2070 v15 v17 v18 v19 -> coe v19
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2102 (coe v0)
                                                      (coe v1)
                                                      (let v12
                                                             = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                    (coe v0)) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v12)
                                                            (coe v2)
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814
                                                                  (coe v6)))))
                                                      (coe v5))
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     else coe
                                            seq (coe v10)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe v9)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Certs.C_regpool_838 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regpool_2042)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_regpool_2042 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2102 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
                          v2
                          (coe
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_324
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_816 (coe v6))
                                (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v1)))))
                       (coe v5))
             MAlonzo.Code.Ledger.Certs.C_retirepool_840 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_retirepool_2094)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_retirepool_2094 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2102 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Certs.C_regdrep_842 v6 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regdrep_2052)
                    (coe
                       (\ v9 ->
                          case coe v9 of
                            C_regdrep_2052 v14 -> coe v14
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2102 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
                          v2
                          (coe
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_324
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818 (coe v6))
                                (coe v7))))
                       (coe v5))
             MAlonzo.Code.Ledger.Certs.C_deregdrep_844 v6 v7
               -> let v8
                        = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                            (coe
                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe
                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                  (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                        (coe v0)))
                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818 (coe v6))
                                  (coe v7))
                               (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2))) in
                  coe
                    (case coe v8 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                         -> if coe v9
                              then case coe v10 of
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                       -> coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                            (coe C_deregdrep_2078 v11)
                                            (coe
                                               (\ v12 ->
                                                  case coe v12 of
                                                    C_deregdrep_2078 v16 v17 -> coe v17
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               du_validCertDeposits'63'_2102 (coe v0) (coe v1)
                                               (let v12
                                                      = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                             (coe v0)) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                        erased v12)
                                                     (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Certs.C_DRepDeposit_818
                                                           (coe v6)))))
                                               (coe v5))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              else coe
                                     seq (coe v10)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe v9)
                                        (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             MAlonzo.Code.Ledger.Certs.C_ccreghot_846 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_ccreghot_2086)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_ccreghot_2086 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2102 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Certs.C_reg_848 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_reg_2060)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_reg_2060 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2102 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
                          v2
                          (coe
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_324
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_814 (coe v6))
                                (coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v1)))))
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_2274 v0 ~v1 v2 v3 v4
  = du_Dec'45'ValidCertDeposits_2274 v0 v2 v3 v4
du_Dec'45'ValidCertDeposits_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_2274 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         du_validCertDeposits'63'_2102 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Utxo.updateCertDeposits
d_updateCertDeposits_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2276 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_2276 v0 v2 v3 v4
du_updateCertDeposits_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2276 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> let v6
                 = coe
                     du_updateCertDeposits_2276 (coe v0) (coe v1) (coe v5) (coe v3) in
           coe
             (case coe v4 of
                MAlonzo.Code.Ledger.Certs.C_delegate_834 v7 v8 v9 v10
                  -> coe
                       du_updateCertDeposits_2276 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
                          v3 (coe du_certDeposit_1988 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Certs.C_dereg_836 v7 v8
                  -> coe
                       du_updateCertDeposits_2276 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased
                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0))))
                          (coe v3) (coe du_certRefund_2006 (coe v4)))
                MAlonzo.Code.Ledger.Certs.C_regpool_838 v7 v8
                  -> coe
                       du_updateCertDeposits_2276 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
                          v3 (coe du_certDeposit_1988 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Certs.C_regdrep_842 v7 v8 v9
                  -> coe
                       du_updateCertDeposits_2276 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
                          v3 (coe du_certDeposit_1988 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Certs.C_deregdrep_844 v7 v8
                  -> coe
                       du_updateCertDeposits_2276 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased
                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0))))
                          (coe v3) (coe du_certRefund_2006 (coe v4)))
                MAlonzo.Code.Ledger.Certs.C_reg_848 v7 v8
                  -> coe
                       du_updateCertDeposits_2276 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
                          v3 (coe du_certDeposit_1988 (coe v4) (coe v1)))
                _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateProposalDeposits
d_updateProposalDeposits_2354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2354 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_2354 v0 v2 v3 v4 v5
du_updateProposalDeposits_2354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2354 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
             (coe
                du_updateProposalDeposits_2354 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
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
d_updateDeposits_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2366 v0 ~v1 v2 v3 v4
  = du_updateDeposits_2366 v0 v2 v3 v4
du_updateDeposits_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2366 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_2276 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2570 (coe v2))
      (coe
         du_updateProposalDeposits_2354 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2576 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2590 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v1))
         (coe v3))
-- Ledger.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_2418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2418 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_2418 v0 v2 v3 v4
du_proposalDepositsΔ_2418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2418 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_2354 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txid_2590 (coe v3))
      (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Utxo.depositsChange
d_depositsChange_2472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2472 v0 ~v1 v2 v3 v4
  = du_depositsChange_2472 v0 v2 v3 v4
du_depositsChange_2472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2472 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_2366 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Utxo.inInterval
d_inInterval_2482 a0 a1 a2 a3 = ()
data T_inInterval_2482
  = C_both_2490 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2494 AgdaAny | C_upper_2498 AgdaAny | C_none_2500
-- Ledger.Utxo.Dec-inInterval
d_Dec'45'inInterval_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2502 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2502 v0 v2 v3
du_Dec'45'inInterval_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2502 v0 v1 v2
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
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                            (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504
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
                                                                                    C_both_2490
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
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504
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
                                                         (coe C_lower_2494 v9))
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
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504
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
                                                         (coe C_upper_2498 v9))
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
                                 (coe C_none_2500))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2604 v0 ~v1
  = du_HasCoin'45'UTxOState_2604 v0
du_HasCoin'45'UTxOState_2604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2604 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_1968 (coe v0) (coe d_utxo_1936 (coe v1)))
                    (coe d_donations_1942 (coe v1)))
                 (coe d_fees_1938 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                 (coe
                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                    (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                 (coe (\ v2 -> v2)) (coe d_deposits_1940 (coe v1)))))
-- Ledger.Utxo._=>ᵇ_
d__'61''62''7495'__2608 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__2608 ~v0 ~v1 v2 v3
  = du__'61''62''7495'__2608 v2 v3
du__'61''62''7495'__2608 :: Bool -> Bool -> Bool
du__'61''62''7495'__2608 v0 v1
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_94) (coe v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe (\ v2 -> v1))
      (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
-- Ledger.Utxo._≤ᵇ_
d__'8804''7495'__2614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  Integer -> Integer -> Bool
d__'8804''7495'__2614 ~v0 ~v1 v2 v3 = du__'8804''7495'__2614 v2 v3
du__'8804''7495'__2614 :: Integer -> Integer -> Bool
du__'8804''7495'__2614 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
         (coe
            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802 (coe v0)
            (coe v1)))
-- Ledger.Utxo._≥ᵇ_
d__'8805''7495'__2616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  Integer -> Integer -> Bool
d__'8805''7495'__2616 ~v0 ~v1 v2 v3 = du__'8805''7495'__2616 v2 v3
du__'8805''7495'__2616 :: Integer -> Integer -> Bool
du__'8805''7495'__2616 v0 v1
  = coe du__'8804''7495'__2614 (coe v1) (coe v0)
-- Ledger.Utxo.≟-∅ᵇ
d_'8799''45''8709''7495'_2628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_2628 ~v0 ~v1 ~v2 v3 v4
  = du_'8799''45''8709''7495'_2628 v3 v4
du_'8799''45''8709''7495'_2628 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_2628 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
               (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8709'_442
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
-- Ledger.Utxo.coinPolicies
d_coinPolicies_2632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 -> [AgdaAny]
d_coinPolicies_2632 v0 ~v1 = du_coinPolicies_2632 v0
du_coinPolicies_2632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_2632 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
         (1 :: Integer))
-- Ledger.Utxo.isAdaOnlyᵇ
d_isAdaOnly'7495'_2634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_2634 v0 ~v1 v2 = du_isAdaOnly'7495'_2634 v0 v2
du_isAdaOnly'7495'_2634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_2634 v0 v1
  = coe
      MAlonzo.Code.Class.ToBool.du_toBool_64
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))
                    (coe v2) (coe du_coinPolicies_2632 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0)) v1))
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))
                    (coe v2)
                    (coe
                       MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
                       v1)))
            (coe du_coinPolicies_2632 (coe v0))))
-- Ledger.Utxo.feesOK
d_feesOK_2638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_2638 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         du__'8804''7495'__2614
         (coe d_minfee_1978 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txfee_2564
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v3))))
      (coe
         du__'61''62''7495'__2608
         (coe
            MAlonzo.Code.Data.Bool.Base.d_not_22
            (coe
               du_'8799''45''8709''7495'_2628
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0)))
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_448
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                                    (coe v0))))))
                     (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                        (coe
                           MAlonzo.Code.Ledger.Script.d_ps_448
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1786
                              (coe v0))))))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2614
                     (coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v3))))))
         (coe
            MAlonzo.Code.Data.Bool.Base.d__'8743'__24
            (coe
               MAlonzo.Code.Axiom.Set.du_all'7495'_1648
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                       (coe
                          MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
                          (coe
                             MAlonzo.Code.Ledger.Address.du_payCred_108
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))))
               (coe du_collateralRange_2782 (coe v0) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
               (coe
                  du_isAdaOnly'7495'_2634 (coe v0)
                  (coe du_bal_2784 (coe v0) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                  (coe
                     du__'8805''7495'__2616
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
                           (coe du_bal_2784 (coe v0) (coe v3) (coe v4)))
                        (coe (100 :: Integer)))
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_txfee_2564
                           (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v2))))
                  (coe
                     MAlonzo.Code.Data.Bool.Base.d_not_22
                     (coe
                        du_'8799''45''8709''7495'_2628
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_collateral_2592
                           (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v3)))))))))
-- Ledger.Utxo._.collateralRange
d_collateralRange_2782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_2782 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_2782 v0 v3 v4
du_collateralRange_2782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_2782 v0 v1 v2
  = coe
      MAlonzo.Code.Class.IsSet.du_range_550
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
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
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2642 (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2592
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v1))))
-- Ledger.Utxo._.bal
d_bal_2784 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_2784 v0 ~v1 ~v2 v3 v4 = du_bal_2784 v0 v3 v4
du_bal_2784 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_2784 v0 v1 v2
  = coe
      du_balance_1962 (coe v0)
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
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2592
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v1))))
-- Ledger.Utxo._._.depositRefunds
d_depositRefunds_2798 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_depositRefunds_2798 v0 ~v1 v2 v3 v4
  = du_depositRefunds_2798 v0 v2 v3 v4
du_depositRefunds_2798 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
du_depositRefunds_2798 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_2472 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1940 (coe v2)))
-- Ledger.Utxo._._.newDeposits
d_newDeposits_2806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_newDeposits_2806 v0 ~v1 v2 v3 v4
  = du_newDeposits_2806 v0 v2 v3 v4
du_newDeposits_2806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
du_newDeposits_2806 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_2472 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1940 (coe v2)))
-- Ledger.Utxo._._.consumed
d_consumed_2814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
d_consumed_2814 v0 ~v1 v2 v3 v4 = du_consumed_2814 v0 v2 v3 v4
du_consumed_2814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
du_consumed_2814 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))))
            (coe
               du_balance_1962 (coe v0)
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
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0))))
                  (coe d_utxo_1936 (coe v2))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txins_2558 (coe v3))))
            (MAlonzo.Code.Ledger.Transaction.d_mint_2566 (coe v3)))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
            (coe du_depositRefunds_2798 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
            (coe (\ v4 -> v4))
            (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572 (coe v3))))
-- Ledger.Utxo._._.produced
d_produced_2822 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
d_produced_2822 v0 ~v1 v2 v3 v4 = du_produced_2822 v0 v2 v3 v4
du_produced_2822 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
du_produced_2822 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))))
            (coe du_balance_1962 (coe v0) (coe du_outs_1956 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_2564 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
            (coe du_newDeposits_2806 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2578 (coe v3)))
-- Ledger.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2830 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2830
  = C_Scripts'45'Yes_2910 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2990 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._.txcerts
d_txcerts_2866 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_2866 ~v0 ~v1 ~v2 v3 = du_txcerts_2866 v3
du_txcerts_2866 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
du_txcerts_2866 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2570
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0))
-- Ledger.Utxo._.txdonation
d_txdonation_2868 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_txdonation_2868 ~v0 ~v1 ~v2 v3 = du_txdonation_2868 v3
du_txdonation_2868 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
du_txdonation_2868 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2578
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0))
-- Ledger.Utxo._.txfee
d_txfee_2870 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_txfee_2870 ~v0 ~v1 ~v2 v3 = du_txfee_2870 v3
du_txfee_2870 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
du_txfee_2870 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2564
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0))
-- Ledger.Utxo._.txins
d_txins_2874 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2874 ~v0 ~v1 ~v2 v3 = du_txins_2874 v3
du_txins_2874 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2874 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2558
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0))
-- Ledger.Utxo._.pparams
d_pparams_2892 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2892 ~v0 v1 ~v2 ~v3 = du_pparams_2892 v1
du_pparams_2892 ::
  T_UTxOEnv_1912 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2892 v0 = coe d_pparams_1922 (coe v0)
-- Ledger.Utxo._.slot
d_slot_2894 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> AgdaAny
d_slot_2894 ~v0 v1 ~v2 ~v3 = du_slot_2894 v1
du_slot_2894 :: T_UTxOEnv_1912 -> AgdaAny
du_slot_2894 v0 = coe d_slot_1920 (coe v0)
-- Ledger.Utxo._.treasury
d_treasury_2896 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_treasury_2896 ~v0 v1 ~v2 ~v3 = du_treasury_2896 v1
du_treasury_2896 :: T_UTxOEnv_1912 -> Integer
du_treasury_2896 v0 = coe d_treasury_1924 (coe v0)
-- Ledger.Utxo._.deposits
d_deposits_2900 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2900 ~v0 ~v1 v2 ~v3 = du_deposits_2900 v2
du_deposits_2900 ::
  T_UTxOState_1926 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2900 v0 = coe d_deposits_1940 (coe v0)
-- Ledger.Utxo._.donations
d_donations_2902 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_donations_2902 ~v0 ~v1 v2 ~v3 = du_donations_2902 v2
du_donations_2902 :: T_UTxOState_1926 -> Integer
du_donations_2902 v0 = coe d_donations_1942 (coe v0)
-- Ledger.Utxo._.fees
d_fees_2904 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_fees_2904 ~v0 ~v1 v2 ~v3 = du_fees_2904 v2
du_fees_2904 :: T_UTxOState_1926 -> Integer
du_fees_2904 v0 = coe d_fees_1938 (coe v0)
-- Ledger.Utxo._.utxo
d_utxo_2906 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2906 ~v0 ~v1 v2 ~v3 = du_utxo_2906 v2
du_utxo_2906 ::
  T_UTxOState_1926 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2906 v0 = coe d_utxo_1936 (coe v0)
-- Ledger.Utxo._.collateral
d_collateral_2930 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2930 ~v0 ~v1 ~v2 v3 = du_collateral_2930 v3
du_collateral_2930 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2930 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2592
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0))
-- Ledger.Utxo._.pparams
d_pparams_2972 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2972 ~v0 v1 ~v2 ~v3 = du_pparams_2972 v1
du_pparams_2972 ::
  T_UTxOEnv_1912 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2972 v0 = coe d_pparams_1922 (coe v0)
-- Ledger.Utxo._.slot
d_slot_2974 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> AgdaAny
d_slot_2974 ~v0 v1 ~v2 ~v3 = du_slot_2974 v1
du_slot_2974 :: T_UTxOEnv_1912 -> AgdaAny
du_slot_2974 v0 = coe d_slot_1920 (coe v0)
-- Ledger.Utxo._.treasury
d_treasury_2976 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_treasury_2976 ~v0 v1 ~v2 ~v3 = du_treasury_2976 v1
du_treasury_2976 :: T_UTxOEnv_1912 -> Integer
du_treasury_2976 v0 = coe d_treasury_1924 (coe v0)
-- Ledger.Utxo._.deposits
d_deposits_2980 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2980 ~v0 ~v1 v2 ~v3 = du_deposits_2980 v2
du_deposits_2980 ::
  T_UTxOState_1926 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2980 v0 = coe d_deposits_1940 (coe v0)
-- Ledger.Utxo._.donations
d_donations_2982 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_donations_2982 ~v0 ~v1 v2 ~v3 = du_donations_2982 v2
du_donations_2982 :: T_UTxOState_1926 -> Integer
du_donations_2982 v0 = coe d_donations_1942 (coe v0)
-- Ledger.Utxo._.fees
d_fees_2984 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Integer
d_fees_2984 ~v0 ~v1 v2 ~v3 = du_fees_2984 v2
du_fees_2984 :: T_UTxOState_1926 -> Integer
du_fees_2984 v0 = coe d_fees_1938 (coe v0)
-- Ledger.Utxo._.utxo
d_utxo_2986 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2986 ~v0 ~v1 v2 ~v3 = du_utxo_2986 v2
du_utxo_2986 ::
  T_UTxOState_1926 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2986 v0 = coe d_utxo_1936 (coe v0)
-- Ledger.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2992 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            du_Dec'45'ValidCertDeposits_2274 (coe v0)
            (coe d_pparams_1922 (coe v2)) (coe d_deposits_1940 (coe v3))
            (coe
               MAlonzo.Code.Ledger.Transaction.d_txcerts_2570
               (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v4))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2372 (coe v0)
                  (coe v1) (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2354
                     (coe v0) (coe v1) (coe d_pparams_1922 (coe v2)) (coe v4)
                     (coe d_utxo_1936 (coe v3))))
               (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v4)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v4))
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
-- Ledger.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2994 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2372 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2354
                  (coe v0) (coe v1) (coe d_pparams_1922 (coe v2)) (coe v4)
                  (coe d_utxo_1936 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Utxo._≡?_
d__'8801''63'__3006 a0 a1 a2 a3 a4 = ()
data T__'8801''63'__3006
  = C_'8801''63''45'nothing_3012 | C_'8801''63''45'just_3016
-- Ledger.Utxo.≟?
d_'8799''63'_3024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_3024 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8799''63'_3024 v3 v4 v5
du_'8799''63'_3024 ::
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_3024 v0 v1 v2
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
                                       (coe C_'8801''63''45'just_3016))))
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
                   (coe C_'8801''63''45'nothing_3012)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._.body
d_body_3052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
d_body_3052 ~v0 ~v1 v2 = du_body_3052 v2
du_body_3052 ::
  T_GeneralizeTel_197961 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
du_body_3052 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2628
      (coe d_'46'generalizedField'45'tx_197953 (coe v0))
-- Ledger.Utxo._.curTreasury
d_curTreasury_3060 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> Maybe Integer
d_curTreasury_3060 ~v0 ~v1 v2 = du_curTreasury_3060 v2
du_curTreasury_3060 :: T_GeneralizeTel_197961 -> Maybe Integer
du_curTreasury_3060 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2586
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_197953 (coe v0)))
-- Ledger.Utxo._.mint
d_mint_3062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> AgdaAny
d_mint_3062 ~v0 ~v1 v2 = du_mint_3062 v2
du_mint_3062 :: T_GeneralizeTel_197961 -> AgdaAny
du_mint_3062 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2566
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_197953 (coe v0)))
-- Ledger.Utxo._.refInputs
d_refInputs_3064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3064 ~v0 ~v1 v2 = du_refInputs_3064 v2
du_refInputs_3064 ::
  T_GeneralizeTel_197961 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3064 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2560
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_197953 (coe v0)))
-- Ledger.Utxo._.txNetworkId
d_txNetworkId_3072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> Maybe AgdaAny
d_txNetworkId_3072 ~v0 ~v1 v2 = du_txNetworkId_3072 v2
du_txNetworkId_3072 :: T_GeneralizeTel_197961 -> Maybe AgdaAny
du_txNetworkId_3072 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2584
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_197953 (coe v0)))
-- Ledger.Utxo._.txins
d_txins_3082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3082 ~v0 ~v1 v2 = du_txins_3082 v2
du_txins_3082 ::
  T_GeneralizeTel_197961 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3082 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2558
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_197953 (coe v0)))
-- Ledger.Utxo._.txouts
d_txouts_3084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3084 ~v0 ~v1 v2 = du_txouts_3084 v2
du_txouts_3084 ::
  T_GeneralizeTel_197961 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3084 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2562
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_197953 (coe v0)))
-- Ledger.Utxo._.txsize
d_txsize_3088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> Integer
d_txsize_3088 ~v0 ~v1 v2 = du_txsize_3088 v2
du_txsize_3088 :: T_GeneralizeTel_197961 -> Integer
du_txsize_3088 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_197953 (coe v0)))
-- Ledger.Utxo._.txvldt
d_txvldt_3092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3092 ~v0 ~v1 v2 = du_txvldt_3092 v2
du_txvldt_3092 ::
  T_GeneralizeTel_197961 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3092 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2568
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_197953 (coe v0)))
-- Ledger.Utxo._.txwdrls
d_txwdrls_3096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3096 ~v0 ~v1 v2 = du_txwdrls_3096 v2
du_txwdrls_3096 ::
  T_GeneralizeTel_197961 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3096 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_197953 (coe v0)))
-- Ledger.Utxo._.pparams
d_pparams_3100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_3100 ~v0 ~v1 v2 = du_pparams_3100 v2
du_pparams_3100 ::
  T_GeneralizeTel_197961 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_3100 v0
  = coe
      d_pparams_1922 (coe d_'46'generalizedField'45'Γ_197955 (coe v0))
-- Ledger.Utxo._.slot
d_slot_3102 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> AgdaAny
d_slot_3102 ~v0 ~v1 v2 = du_slot_3102 v2
du_slot_3102 :: T_GeneralizeTel_197961 -> AgdaAny
du_slot_3102 v0
  = coe d_slot_1920 (coe d_'46'generalizedField'45'Γ_197955 (coe v0))
-- Ledger.Utxo._.treasury
d_treasury_3104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> Integer
d_treasury_3104 ~v0 ~v1 v2 = du_treasury_3104 v2
du_treasury_3104 :: T_GeneralizeTel_197961 -> Integer
du_treasury_3104 v0
  = coe
      d_treasury_1924 (coe d_'46'generalizedField'45'Γ_197955 (coe v0))
-- Ledger.Utxo._.deposits
d_deposits_3108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3108 ~v0 ~v1 v2 = du_deposits_3108 v2
du_deposits_3108 ::
  T_GeneralizeTel_197961 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_3108 v0
  = coe
      d_deposits_1940 (coe d_'46'generalizedField'45's_197957 (coe v0))
-- Ledger.Utxo._.donations
d_donations_3110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> Integer
d_donations_3110 ~v0 ~v1 v2 = du_donations_3110 v2
du_donations_3110 :: T_GeneralizeTel_197961 -> Integer
du_donations_3110 v0
  = coe
      d_donations_1942 (coe d_'46'generalizedField'45's_197957 (coe v0))
-- Ledger.Utxo._.fees
d_fees_3112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> Integer
d_fees_3112 ~v0 ~v1 v2 = du_fees_3112 v2
du_fees_3112 :: T_GeneralizeTel_197961 -> Integer
du_fees_3112 v0
  = coe d_fees_1938 (coe d_'46'generalizedField'45's_197957 (coe v0))
-- Ledger.Utxo._.utxo
d_utxo_3114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  T_GeneralizeTel_197961 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3114 ~v0 ~v1 v2 = du_utxo_3114 v2
du_utxo_3114 ::
  T_GeneralizeTel_197961 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_3114 v0
  = coe d_utxo_1936 (coe d_'46'generalizedField'45's_197957 (coe v0))
-- Ledger.Utxo.UTXO-premises
d_UTXO'45'premises_3184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1712 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  T_UTxOEnv_1912 ->
  T_UTxOState_1926 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3184 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2558
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_442
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe d_utxo_1936 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2558
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2560
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__704
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2558
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2560
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_2502 (coe v0) (coe d_slot_1920 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2568
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe
                           d_feesOK_2638 (coe v0) (coe v1) (coe d_pparams_1922 (coe v3))
                           (coe v2) (coe d_utxo_1936 (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0)))
                           (coe
                              du_consumed_2814 (coe v0) (coe d_pparams_1922 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2)))
                           (coe
                              du_produced_2822 (coe v0) (coe d_pparams_1922 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2566
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2588
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_312
                                    (coe d_pparams_1922 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (d_refScriptsSize_1972
                                       (coe v0) (coe v1) (coe d_utxo_1936 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340
                                       (coe d_pparams_1922 (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           du_utxoEntrySize_1908 (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334
                                                        (coe d_pparams_1922 (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2652
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2642
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2562
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                   (coe v2))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                  (coe
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1726 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2652
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_320
                                                     (coe d_pparams_1922 (coe v3)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2642
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2562
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                      (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
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
                                                MAlonzo.Code.Class.IsSet.du_range_550
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2642
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2562
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_112
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                              (coe v0)))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_range_550
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2642
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2562
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                            (coe v2))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_82
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                                 (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_548
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      du_'8799''63'_3024
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2584
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                            (coe v0))))
                                                   (coe
                                                      du_'8799''63'_3024
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2586
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                            (coe v2)))
                                                      (coe d_treasury_1924 (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_197953 ::
  T_GeneralizeTel_197961 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2618
d_'46'generalizedField'45'tx_197953 v0
  = case coe v0 of
      C_mkGeneralizeTel_197963 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_197955 ::
  T_GeneralizeTel_197961 -> T_UTxOEnv_1912
d_'46'generalizedField'45'Γ_197955 v0
  = case coe v0 of
      C_mkGeneralizeTel_197963 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s
d_'46'generalizedField'45's_197957 ::
  T_GeneralizeTel_197961 -> T_UTxOState_1926
d_'46'generalizedField'45's_197957 v0
  = case coe v0 of
      C_mkGeneralizeTel_197963 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_197959 ::
  T_GeneralizeTel_197961 -> T_UTxOState_1926
d_'46'generalizedField'45's''_197959 v0
  = case coe v0 of
      C_mkGeneralizeTel_197963 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_197961 a0 a1 = ()
data T_GeneralizeTel_197961
  = C_mkGeneralizeTel_197963 MAlonzo.Code.Ledger.Transaction.T_Tx_2618
                             T_UTxOEnv_1912 T_UTxOState_1926 T_UTxOState_1926
