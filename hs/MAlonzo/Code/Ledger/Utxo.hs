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
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
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
import qualified MAlonzo.Code.Class.To
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Ext
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement
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
-- _.Dec-isVKey
d_Dec'45'isVKey_62 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_62 ~v0 = du_Dec'45'isVKey_62
du_Dec'45'isVKey_62 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_62
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
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
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0)))
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
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0)))
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
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0)))
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
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208 (coe v0))
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
d_Tx_356 a0 = ()
-- _.TxBody
d_TxBody_358 a0 = ()
-- _.TxOut
d_TxOut_364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_364 = erased
-- _.TxOutʰ
d_TxOut'688'_366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut'688'_366 = erased
-- _.UTxO
d_UTxO_370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_370 = erased
-- _.Value
d_Value_388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_388 = erased
-- _.coin
d_coin_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_412 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
-- _.getValueʰ
d_getValue'688'_448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_448 ~v0 = du_getValue'688'_448
du_getValue'688'_448 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_448
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2672
-- _.inject
d_inject_458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_458 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
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
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2662 (coe v0)
-- _.GovProposal.action
d_action_690 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_746 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_698
d_action_690 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_760 (coe v0)
-- _.GovProposal.anchor
d_anchor_692 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_746 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_688
d_anchor_692 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_770 (coe v0)
-- _.GovProposal.deposit
d_deposit_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_746 -> Integer
d_deposit_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_766 (coe v0)
-- _.GovProposal.policy
d_policy_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_746 ->
  Maybe AgdaAny
d_policy_696 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_764 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_746 -> AgdaAny
d_prevAction_698 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_762 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_746 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_700 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_768 (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_742 a0 = ()
-- _.PParams.Emax
d_Emax_892 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_892 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_360 (coe v0)
-- _.PParams.a
d_a_894 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_894 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_332 (coe v0)
-- _.PParams.a0
d_a0_896 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_896 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_364 (coe v0)
-- _.PParams.b
d_b_898 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_898 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_334 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_900 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_900 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_376 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_902 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_374 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_904 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_344 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_906 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_366 (coe v0)
-- _.PParams.costmdls
d_costmdls_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_368 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_384 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_382 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_380 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_378 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_336 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_324 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_316 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_926 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_328 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_320 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_930 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_352 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_932 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_350 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_322 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_318 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_326 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_940 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_348
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_358 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Refinement.T_Refinement_24
d_monetaryExpansion_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_340 (coe v0)
-- _.PParams.nopt
d_nopt_946 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_946 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_362 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_338 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_370 (coe v0)
-- _.PParams.prices
d_prices_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_346 (coe v0)
-- _.PParams.pv
d_pv_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_954 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_330 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_956 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_356 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_958 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_354 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Refinement.T_Refinement_24
d_treasuryCut_960 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_342 (coe v0)
-- _.Tx.body
d_body_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536
d_body_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v0)
-- _.Tx.isValid
d_isValid_1380 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2638 -> Bool
d_isValid_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2652 (coe v0)
-- _.Tx.txAD
d_txAD_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 -> Maybe AgdaAny
d_txAD_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2654 (coe v0)
-- _.Tx.wits
d_wits_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2618
d_wits_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2650 (coe v0)
-- _.TxBody.collateral
d_collateral_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2612 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1390 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Maybe Integer
d_curTreasury_1390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2606 (coe v0)
-- _.TxBody.mint
d_mint_1392 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> AgdaAny
d_mint_1392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2586 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2580 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> [AgdaAny]
d_reqSigHash_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2614 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Maybe AgdaAny
d_scriptIntHash_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2616 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Maybe AgdaAny
d_txADhash_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2602 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Maybe AgdaAny
d_txNetworkId_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2604 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_840]
d_txcerts_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2590 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Integer
d_txdonation_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2598 (coe v0)
-- _.TxBody.txfee
d_txfee_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Integer
d_txfee_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2584 (coe v0)
-- _.TxBody.txid
d_txid_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> AgdaAny
d_txid_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2610 (coe v0)
-- _.TxBody.txins
d_txins_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2578 (coe v0)
-- _.TxBody.txouts
d_txouts_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2582 (coe v0)
-- _.TxBody.txprop
d_txprop_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_746]
d_txprop_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2596 (coe v0)
-- _.TxBody.txsize
d_txsize_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Integer
d_txsize_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2608 (coe v0)
-- _.TxBody.txup
d_txup_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2600 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1422 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2588 (coe v0)
-- _.TxBody.txvote
d_txvote_1424 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_728]
d_txvote_1424 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2594 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1426 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1426 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2592 (coe v0)
-- Ledger.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1512 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2366
      (coe v0) (coe v1)
-- Ledger.Utxo._.evalScripts
d_evalScripts_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1522 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2384 (coe v0)
      (coe v1)
-- Ledger.Utxo._.DCert
d_DCert_1628 a0 a1 = ()
-- Ledger.Utxo._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1640 v0 ~v1
  = du_DecEq'45'DepositPurpose_1640 v0
du_DecEq'45'DepositPurpose_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1640 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0))
-- Ledger.Utxo._.DepositPurpose
d_DepositPurpose_1644 a0 a1 = ()
-- Ledger.Utxo._.Deposits
d_Deposits_1646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 -> ()
d_Deposits_1646 = erased
-- Ledger.Utxo.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isTwoPhaseScriptAddress_1828 = erased
-- Ledger.Utxo.isTwoPhaseScriptAddress?
d_isTwoPhaseScriptAddress'63'_1846 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'63'_1846 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress'63'_1846 v0 v2 v3 v4
du_isTwoPhaseScriptAddress'63'_1846 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'63'_1846 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (let v4
             = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
                    (coe MAlonzo.Code.Ledger.Address.du_payCred_108 (coe v3))) in
       coe
         (case coe v4 of
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
              -> if coe v5
                   then case coe v6 of
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                            -> let v8
                                     = coe
                                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                         erased
                                         (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1232
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Ledger.Address.du_getScriptHash_184
                                            (coe v3) (coe v7))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_map_398
                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (\ v8 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_m_2770 (coe v0)
                                                  (coe v1) (coe v2)))) in
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
                                                                    MAlonzo.Code.Ledger.Transaction.du_m_2770
                                                                    (coe v0) (coe v1) (coe v2))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Address.du_getScriptHash_184
                                                                    (coe v3) (coe v7))
                                                                 (coe v11) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2776
                                                               (coe v12)))
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else (let v11
                                                       = seq
                                                           (coe v10)
                                                           (coe
                                                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                              erased) in
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
                                                                        MAlonzo.Code.Ledger.Transaction.du_m_2770
                                                                        (coe v0) (coe v1) (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Address.du_getScriptHash_184
                                                                        (coe v3) (coe v7))
                                                                     (coe v12) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2776
                                                                   (coe v13)))
                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                        -> coe
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                             (coe v9)
                                                             (coe
                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                      _ -> MAlonzo.RTE.mazUnreachableError))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError
                   else (let v7
                               = seq
                                   (coe v6)
                                   (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased) in
                         coe
                           (case coe v7 of
                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                                -> let v9
                                         = coe
                                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased
                                             (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1232
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_getScriptHash_184
                                                (coe v3) (coe v8))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_map_398
                                                (MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (\ v9 ->
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v9))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.du_m_2770
                                                      (coe v0) (coe v1) (coe v2)))) in
                                   coe
                                     (case coe v9 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                          -> if coe v10
                                               then case coe v11 of
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                        -> let v13
                                                                 = coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1680
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.du_m_2770
                                                                        (coe v0) (coe v1) (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Address.du_getScriptHash_184
                                                                        (coe v3) (coe v8))
                                                                     (coe v12) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2776
                                                                   (coe v13)))
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               else (let v12
                                                           = seq
                                                               (coe v11)
                                                               (coe
                                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                  erased) in
                                                     coe
                                                       (case coe v12 of
                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                            -> let v14
                                                                     = coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1680
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.du_m_2770
                                                                            (coe v0) (coe v1)
                                                                            (coe v2))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Address.du_getScriptHash_184
                                                                            (coe v3) (coe v8))
                                                                         (coe v13) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2776
                                                                       (coe v14)))
                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                            -> coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                 (coe v10)
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                                -> coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe v5)
                                     (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                              _ -> MAlonzo.RTE.mazUnreachableError))
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Utxo.isTwoPhaseScriptAddress′
d_isTwoPhaseScriptAddress'8242'_1900 a0 a1 a2 a3 a4 = ()
newtype T_isTwoPhaseScriptAddress'8242'_1900 = C_wrap_1912 AgdaAny
-- Ledger.Utxo.isTwoPhaseScriptAddress′.unwrap
d_unwrap_1910 :: T_isTwoPhaseScriptAddress'8242'_1900 -> AgdaAny
d_unwrap_1910 v0
  = case coe v0 of
      C_wrap_1912 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.isTwoPhaseScriptAddress′?
d_isTwoPhaseScriptAddress'8242''63'_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'8242''63'_1920 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress'8242''63'_1920 v0 v2 v3 v4
du_isTwoPhaseScriptAddress'8242''63'_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'8242''63'_1920 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe C_wrap_1912) (coe (\ v4 -> d_unwrap_1910 (coe v4)))
         (let v4
                = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                    (coe
                       MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
                       (coe MAlonzo.Code.Ledger.Address.du_payCred_108 (coe v3))) in
          coe
            (case coe v4 of
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                 -> if coe v5
                      then case coe v6 of
                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                               -> let v8
                                        = coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1232
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_getScriptHash_184
                                               (coe v3) (coe v7))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_map_398
                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (\ v8 ->
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.du_m_2770
                                                     (coe v0) (coe v1) (coe v2)))) in
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
                                                                       MAlonzo.Code.Ledger.Transaction.du_m_2770
                                                                       (coe v0) (coe v1) (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_getScriptHash_184
                                                                       (coe v3) (coe v7))
                                                                    (coe v11) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2776
                                                                  (coe v12)))
                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                              else (let v11
                                                          = seq
                                                              (coe v10)
                                                              (coe
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                 erased) in
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
                                                                           MAlonzo.Code.Ledger.Transaction.du_m_2770
                                                                           (coe v0) (coe v1)
                                                                           (coe v2))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_getScriptHash_184
                                                                           (coe v3) (coe v7))
                                                                        (coe v12) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2776
                                                                      (coe v13)))
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                           -> coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             _ -> MAlonzo.RTE.mazUnreachableError
                      else (let v7
                                  = seq
                                      (coe v6)
                                      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased) in
                            coe
                              (case coe v7 of
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                                   -> let v9
                                            = coe
                                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased
                                                (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1232
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Address.du_getScriptHash_184
                                                   (coe v3) (coe v8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_map_398
                                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (\ v9 ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v9))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.du_m_2770
                                                         (coe v0) (coe v1) (coe v2)))) in
                                      coe
                                        (case coe v9 of
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                             -> if coe v10
                                                  then case coe v11 of
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                           -> let v13
                                                                    = coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1680
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.du_m_2770
                                                                           (coe v0) (coe v1)
                                                                           (coe v2))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_getScriptHash_184
                                                                           (coe v3) (coe v8))
                                                                        (coe v12) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2776
                                                                      (coe v13)))
                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                  else (let v12
                                                              = seq
                                                                  (coe v11)
                                                                  (coe
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                     erased) in
                                                        coe
                                                          (case coe v12 of
                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                               -> let v14
                                                                        = coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1680
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.du_m_2770
                                                                               (coe v0) (coe v1)
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Address.du_getScriptHash_184
                                                                               (coe v3) (coe v8))
                                                                            (coe v13) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2776
                                                                          (coe v14)))
                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                               -> coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                    (coe v10)
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                                   -> coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe v5)
                                        (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                 _ -> MAlonzo.RTE.mazUnreachableError))
               _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Utxo.getDataHashes
d_getDataHashes_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1932 ~v0 ~v1 v2 = du_getDataHashes_1932 v2
du_getDataHashes_1932 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1932 v0
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
d_getInputHashes_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1936 v0 ~v1 v2 v3
  = du_getInputHashes_1936 v0 v2 v3
du_getInputHashes_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1936 v0 v1 v2
  = coe
      du_getDataHashes_1932
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
         (\ v3 ->
            coe
              du_isTwoPhaseScriptAddress'8242''63'_1920 (coe v0) (coe v1)
              (coe v2) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2578
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v1))))))
-- Ledger.Utxo.totExUnits
d_totExUnits_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 -> AgdaAny
d_totExUnits_1992 v0 ~v1 v2 = du_totExUnits_1992 v0 v2
du_totExUnits_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 -> AgdaAny
du_totExUnits_1992 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0)))
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
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1798
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_448
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1798 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1798 (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2634
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2650 (coe v1)))
-- Ledger.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2004 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 -> Integer
d_utxoEntrySizeWithoutVal_2004 ~v0
  = du_utxoEntrySizeWithoutVal_2004
du_utxoEntrySizeWithoutVal_2004 :: Integer
du_utxoEntrySizeWithoutVal_2004 = coe (8 :: Integer)
-- Ledger.Utxo.utxoEntrySize
d_utxoEntrySize_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2006 v0 ~v1 v2 = du_utxoEntrySize_2006 v0 v2
du_utxoEntrySize_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2006 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2672 (coe v1)))
-- Ledger.Utxo.UTxOEnv
d_UTxOEnv_2010 a0 a1 = ()
data T_UTxOEnv_2010
  = C_UTxOEnv'46'constructor_16535 AgdaAny
                                   MAlonzo.Code.Ledger.PParams.T_PParams_244 Integer
-- Ledger.Utxo.UTxOEnv.slot
d_slot_2018 :: T_UTxOEnv_2010 -> AgdaAny
d_slot_2018 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_16535 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.pparams
d_pparams_2020 ::
  T_UTxOEnv_2010 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2020 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_16535 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.treasury
d_treasury_2022 :: T_UTxOEnv_2010 -> Integer
d_treasury_2022 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_16535 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState
d_UTxOState_2024 a0 a1 = ()
data T_UTxOState_2024
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_2042 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Utxo.UTxOState.utxo
d_utxo_2034 ::
  T_UTxOState_2024 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2034 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2042 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.fees
d_fees_2036 :: T_UTxOState_2024 -> Integer
d_fees_2036 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2042 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.deposits
d_deposits_2038 ::
  T_UTxOState_2024 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2038 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2042 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.donations
d_donations_2040 :: T_UTxOState_2024 -> Integer
d_donations_2040 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2042 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.To-UTxOEnv
d_To'45'UTxOEnv_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'UTxOEnv_2044 ~v0 ~v1 = du_To'45'UTxOEnv_2044
du_To'45'UTxOEnv_2044 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'UTxOEnv_2044
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2010 :: Integer) (5998337070880856472 :: Integer)
                                 "Ledger.Utxo.UTxOEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (324 :: Integer) (5998337070880856472 :: Integer) "_.Slot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2010 :: Integer) (5998337070880856472 :: Integer)
                                    "Ledger.Utxo.UTxOEnv"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (222 :: Integer) (5998337070880856472 :: Integer) "_.PParams"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.To.d_getCodPi_22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2010 :: Integer) (5998337070880856472 :: Integer)
                                       "Ledger.Utxo.UTxOEnv"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (6 :: Integer) (14798748958053396954 :: Integer)
                                       "Ledger.Prelude.Base.Coin"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_UTxOEnv'46'constructor_16535))
-- Ledger.Utxo.To-UTxOState
d_To'45'UTxOState_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'UTxOState_2046 ~v0 ~v1 = du_To'45'UTxOState_2046
du_To'45'UTxOState_2046 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'UTxOState_2046
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2024 :: Integer) (5998337070880856472 :: Integer)
                                 "Ledger.Utxo.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (370 :: Integer) (5998337070880856472 :: Integer) "_.UTxO"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2024 :: Integer) (5998337070880856472 :: Integer)
                                    "Ledger.Utxo.UTxOState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (6 :: Integer) (14798748958053396954 :: Integer)
                                    "Ledger.Prelude.Base.Coin"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.To.d_getCodPi_22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2024 :: Integer) (5998337070880856472 :: Integer)
                                       "Ledger.Utxo.UTxOState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1646 :: Integer) (5998337070880856472 :: Integer)
                                       "Ledger.Utxo._.Deposits"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.To.d_getCodPi_22
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2024 :: Integer) (5998337070880856472 :: Integer)
                                          "Ledger.Utxo.UTxOState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (6 :: Integer) (14798748958053396954 :: Integer)
                                          "Ledger.Prelude.Base.Coin"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7512'_2042))
-- Ledger.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2048 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2048
  = C_UTXO'45'inductive_3134 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._._.outs
d_outs_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2058 ~v0 ~v1 v2 = du_outs_2058 v2
du_outs_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2058 v0
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
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2610 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2582 (coe v0))
-- Ledger.Utxo._._.balance
d_balance_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2064 v0 ~v1 v2 = du_balance_2064 v0 v2
du_balance_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2064 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0)))
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
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1798
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
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1798
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0)))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2672)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2662 (coe v0))
         (coe v1))
-- Ledger.Utxo._._.cbalance
d_cbalance_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2070 v0 ~v1 v2 = du_cbalance_2070 v0 v2
du_cbalance_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2070 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
      (coe du_balance_2064 (coe v0) (coe v1))
-- Ledger.Utxo._._.refScriptsSize
d_refScriptsSize_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 -> Integer
d_refScriptsSize_2074 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Base.d_sum_280
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (MAlonzo.Code.Ledger.Abstract.d_scriptSize_1744 (coe v1))
         (MAlonzo.Code.Ledger.Transaction.d_refScripts_2696
            (coe v0) (coe v3) (coe v2)))
-- Ledger.Utxo._._.minfee
d_minfee_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 -> Integer
d_minfee_2080 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1736 v1
               (MAlonzo.Code.Ledger.PParams.d_prices_346 (coe v2))
               (coe du_totExUnits_1992 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Fees.d_scriptsCost_1480 (coe v0) (coe v2)
               (coe d_refScriptsSize_2074 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe MAlonzo.Code.Ledger.PParams.d_b_334 (coe v2)))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_332 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_2608
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v4))))
-- Ledger.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2088 v0 ~v1 = du_HasCoin'45'UTxO_2088 v0
du_HasCoin'45'UTxO_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2088 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_2070 (coe v0))
-- Ledger.Utxo.certDeposit
d_certDeposit_2090 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_840 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2090 ~v0 ~v1 v2 v3 = du_certDeposit_2090 v2 v3
du_certDeposit_2090 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_840 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2090 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_842 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_822 (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Certs.C_regpool_846 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_824 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_338 (coe v1)))
         MAlonzo.Code.Ledger.Certs.C_regdrep_850 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_826 (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Certs.C_reg_856 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_822 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_336 (coe v1)))
         _ -> coe v2)
-- Ledger.Utxo.certRefund
d_certRefund_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_840 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_820]
d_certRefund_2108 ~v0 ~v1 v2 = du_certRefund_2108 v2
du_certRefund_2108 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_840 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_820]
du_certRefund_2108 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_442
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_844 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_822 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_852 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_826 (coe v2))
         _ -> coe v1)
-- Ledger.Utxo.ValidCertDeposits
d_ValidCertDeposits_2118 a0 a1 a2 a3 a4 = ()
data T_ValidCertDeposits_2118
  = C_'91''93'_2124 | C_delegate_2136 T_ValidCertDeposits_2118 |
    C_regpool_2144 T_ValidCertDeposits_2118 |
    C_regdrep_2154 T_ValidCertDeposits_2118 |
    C_reg_2162 T_ValidCertDeposits_2118 |
    C_dereg_2172 Integer
                 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_ValidCertDeposits_2118 |
    C_deregdrep_2180 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                     T_ValidCertDeposits_2118 |
    C_ccreghot_2188 T_ValidCertDeposits_2118 |
    C_retirepool_2196 T_ValidCertDeposits_2118
-- Ledger.Utxo.validCertDeposits?
d_validCertDeposits'63'_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_840] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCertDeposits'63'_2204 v0 ~v1 v2 v3 v4
  = du_validCertDeposits'63'_2204 v0 v2 v3 v4
du_validCertDeposits'63'_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_840] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCertDeposits'63'_2204 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe C_'91''93'_2124))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Certs.C_delegate_842 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_delegate_2136)
                    (coe
                       (\ v10 ->
                          case coe v10 of
                            C_delegate_2136 v16 -> coe v16
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2204 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_822 (coe v6))
                                (coe v9))))
                       (coe v5))
             MAlonzo.Code.Ledger.Certs.C_dereg_844 v6 v7
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
                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2346
                                               (coe v0)))
                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_822
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
                                                      C_dereg_2172 v8 v12
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                         erased))
                                                   (coe
                                                      (\ v13 ->
                                                         case coe v13 of
                                                           C_dereg_2172 v16 v18 v19 v20 -> coe v20
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2204 (coe v0)
                                                      (coe v1)
                                                      (let v13
                                                             = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2346
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
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_822
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
                                         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_govStructure_2346
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_822 (coe v6))
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
                                                      C_dereg_2172
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
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_822
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
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_822
                                                                  (coe v6)))
                                                            v11))
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                         erased))
                                                   (coe
                                                      (\ v12 ->
                                                         case coe v12 of
                                                           C_dereg_2172 v15 v17 v18 v19 -> coe v19
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2204 (coe v0)
                                                      (coe v1)
                                                      (let v12
                                                             = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2346
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
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_822
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
             MAlonzo.Code.Ledger.Certs.C_regpool_846 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regpool_2144)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_regpool_2144 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2204 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_824 (coe v6))
                                (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_338 (coe v1)))))
                       (coe v5))
             MAlonzo.Code.Ledger.Certs.C_retirepool_848 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_retirepool_2196)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_retirepool_2196 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2204 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Certs.C_regdrep_850 v6 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regdrep_2154)
                    (coe
                       (\ v9 ->
                          case coe v9 of
                            C_regdrep_2154 v14 -> coe v14
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2204 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_826 (coe v6))
                                (coe v7))))
                       (coe v5))
             MAlonzo.Code.Ledger.Certs.C_deregdrep_852 v6 v7
               -> let v8
                        = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                            (coe
                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe
                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                  (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2346
                                        (coe v0)))
                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_826 (coe v6))
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
                                            (coe C_deregdrep_2180 v11)
                                            (coe
                                               (\ v12 ->
                                                  case coe v12 of
                                                    C_deregdrep_2180 v16 v17 -> coe v17
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               du_validCertDeposits'63'_2204 (coe v0) (coe v1)
                                               (let v12
                                                      = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2346
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
                                                           MAlonzo.Code.Ledger.Certs.C_DRepDeposit_826
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
             MAlonzo.Code.Ledger.Certs.C_ccreghot_854 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_ccreghot_2188)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_ccreghot_2188 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2204 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Certs.C_reg_856 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_reg_2162)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_reg_2162 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2204 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_822 (coe v6))
                                (coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_336 (coe v1)))))
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_840] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_2376 v0 ~v1 v2 v3 v4
  = du_Dec'45'ValidCertDeposits_2376 v0 v2 v3 v4
du_Dec'45'ValidCertDeposits_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_840] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_2376 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         du_validCertDeposits'63'_2204 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Utxo.updateCertDeposits
d_updateCertDeposits_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_840] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2378 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_2378 v0 v2 v3 v4
du_updateCertDeposits_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_840] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2378 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> let v6
                 = coe
                     du_updateCertDeposits_2378 (coe v0) (coe v1) (coe v5) (coe v3) in
           coe
             (case coe v4 of
                MAlonzo.Code.Ledger.Certs.C_delegate_842 v7 v8 v9 v10
                  -> coe
                       du_updateCertDeposits_2378 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0)))
                          v3 (coe du_certDeposit_2090 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Certs.C_dereg_844 v7 v8
                  -> coe
                       du_updateCertDeposits_2378 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0))))
                          (coe v3) (coe du_certRefund_2108 (coe v4)))
                MAlonzo.Code.Ledger.Certs.C_regpool_846 v7 v8
                  -> coe
                       du_updateCertDeposits_2378 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0)))
                          v3 (coe du_certDeposit_2090 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Certs.C_regdrep_850 v7 v8 v9
                  -> coe
                       du_updateCertDeposits_2378 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0)))
                          v3 (coe du_certDeposit_2090 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Certs.C_deregdrep_852 v7 v8
                  -> coe
                       du_updateCertDeposits_2378 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0))))
                          (coe v3) (coe du_certRefund_2108 (coe v4)))
                MAlonzo.Code.Ledger.Certs.C_reg_856 v7 v8
                  -> coe
                       du_updateCertDeposits_2378 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0)))
                          v3 (coe du_certDeposit_2090 (coe v4) (coe v1)))
                _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateProposalDeposits
d_updateProposalDeposits_2456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_746] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2456 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_2456 v0 v2 v3 v4 v5
du_updateProposalDeposits_2456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_746] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2456 v0 v1 v2 v3 v4
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
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0)))
             (coe
                du_updateProposalDeposits_2456 (coe v0) (coe v6) (coe v2) (coe v3)
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
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_828
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_284 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateDeposits
d_updateDeposits_2468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2468 v0 ~v1 v2 v3 v4
  = du_updateDeposits_2468 v0 v2 v3 v4
du_updateDeposits_2468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2468 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_2378 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2590 (coe v2))
      (coe
         du_updateProposalDeposits_2456 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2596 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2610 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_380 (coe v1))
         (coe v3))
-- Ledger.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_2520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_746] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2520 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_2520 v0 v2 v3 v4
du_proposalDepositsΔ_2520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_746] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2520 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_2456 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txid_2610 (coe v3))
      (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_380 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Utxo.depositsChange
d_depositsChange_2574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2574 v0 ~v1 v2 v3 v4
  = du_depositsChange_2574 v0 v2 v3 v4
du_depositsChange_2574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2574 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_2468 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Utxo.inInterval
d_inInterval_2584 a0 a1 a2 a3 = ()
data T_inInterval_2584
  = C_both_2592 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2596 AgdaAny | C_upper_2600 AgdaAny | C_none_2602
-- Ledger.Utxo.Dec-inInterval
d_Dec'45'inInterval_2604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2604 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2604 v0 v2 v3
du_Dec'45'inInterval_2604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2604 v0 v1 v2
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1516
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                            (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1516
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
                                                                                    C_both_2592
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1516
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
                                                         (coe C_lower_2596 v9))
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1516
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
                                                         (coe C_upper_2600 v9))
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
                                 (coe C_none_2602))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2706 v0 ~v1
  = du_HasCoin'45'UTxOState_2706 v0
du_HasCoin'45'UTxOState_2706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2706 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2070 (coe v0) (coe d_utxo_2034 (coe v1)))
                    (coe d_donations_2040 (coe v1)))
                 (coe d_fees_2036 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                 (coe
                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                    (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                 (coe (\ v2 -> v2)) (coe d_deposits_2038 (coe v1)))))
-- Ledger.Utxo.coinPolicies
d_coinPolicies_2710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 -> [AgdaAny]
d_coinPolicies_2710 v0 ~v1 = du_coinPolicies_2710 v0
du_coinPolicies_2710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_2710 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
         (1 :: Integer))
-- Ledger.Utxo.isAdaOnly
d_isAdaOnly_2712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  AgdaAny -> ()
d_isAdaOnly_2712 = erased
-- Ledger.Utxo.feesOK
d_feesOK_2716 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_2716 = erased
-- Ledger.Utxo._.collateralRange
d_collateralRange_2864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_2864 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_2864 v0 v3 v4
du_collateralRange_2864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_2864 v0 v1 v2
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2662 (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2612
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v1))))
-- Ledger.Utxo._.bal
d_bal_2866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_2866 v0 ~v1 ~v2 v3 v4 = du_bal_2866 v0 v3 v4
du_bal_2866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_2866 v0 v1 v2
  = coe
      du_balance_2064 (coe v0)
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2612
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v1))))
-- Ledger.Utxo._._.depositRefunds
d_depositRefunds_2880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Integer
d_depositRefunds_2880 v0 ~v1 v2 v3 v4
  = du_depositRefunds_2880 v0 v2 v3 v4
du_depositRefunds_2880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Integer
du_depositRefunds_2880 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_2574 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2038 (coe v2)))
-- Ledger.Utxo._._.newDeposits
d_newDeposits_2888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Integer
d_newDeposits_2888 v0 ~v1 v2 v3 v4
  = du_newDeposits_2888 v0 v2 v3 v4
du_newDeposits_2888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> Integer
du_newDeposits_2888 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_2574 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2038 (coe v2)))
-- Ledger.Utxo._._.consumed
d_consumed_2896 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> AgdaAny
d_consumed_2896 v0 ~v1 v2 v3 v4 = du_consumed_2896 v0 v2 v3 v4
du_consumed_2896 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> AgdaAny
du_consumed_2896 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))))
            (coe
               du_balance_2064 (coe v0)
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
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192 (coe v0))
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0))))
                  (coe d_utxo_2034 (coe v2))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txins_2578 (coe v3))))
            (MAlonzo.Code.Ledger.Transaction.d_mint_2586 (coe v3)))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
            (coe du_depositRefunds_2880 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
            (coe (\ v4 -> v4))
            (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2592 (coe v3))))
-- Ledger.Utxo._._.produced
d_produced_2904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> AgdaAny
d_produced_2904 v0 ~v1 v2 v3 v4 = du_produced_2904 v0 v2 v3 v4
du_produced_2904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 -> AgdaAny
du_produced_2904 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))))
            (coe du_balance_2064 (coe v0) (coe du_outs_2058 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_2584 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
            (coe du_newDeposits_2888 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2598 (coe v3)))
-- Ledger.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2928 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2928
  = C_Scripts'45'Yes_2986 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_3044 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._.isValid
d_isValid_2934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_193891 -> Bool
d_isValid_2934 ~v0 ~v1 v2 = du_isValid_2934 v2
du_isValid_2934 :: T_GeneralizeTel_193891 -> Bool
du_isValid_2934 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_isValid_2652
      (coe d_'46'generalizedField'45'tx_193881 (coe v0))
-- Ledger.Utxo._.body
d_body_2938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_193891 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536
d_body_2938 ~v0 ~v1 v2 = du_body_2938 v2
du_body_2938 ::
  T_GeneralizeTel_193891 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536
du_body_2938 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2648
      (coe d_'46'generalizedField'45'tx_193881 (coe v0))
-- Ledger.Utxo._.txcerts
d_txcerts_2960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_193891 -> [MAlonzo.Code.Ledger.Certs.T_DCert_840]
d_txcerts_2960 ~v0 ~v1 v2 = du_txcerts_2960 v2
du_txcerts_2960 ::
  T_GeneralizeTel_193891 -> [MAlonzo.Code.Ledger.Certs.T_DCert_840]
du_txcerts_2960 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_193881 (coe v0)))
-- Ledger.Utxo._.txdonation
d_txdonation_2962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_193891 -> Integer
d_txdonation_2962 ~v0 ~v1 v2 = du_txdonation_2962 v2
du_txdonation_2962 :: T_GeneralizeTel_193891 -> Integer
du_txdonation_2962 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2598
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_193881 (coe v0)))
-- Ledger.Utxo._.txfee
d_txfee_2964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_193891 -> Integer
d_txfee_2964 ~v0 ~v1 v2 = du_txfee_2964 v2
du_txfee_2964 :: T_GeneralizeTel_193891 -> Integer
du_txfee_2964 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2584
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_193881 (coe v0)))
-- Ledger.Utxo._.txins
d_txins_2968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_193891 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2968 ~v0 ~v1 v2 = du_txins_2968 v2
du_txins_2968 ::
  T_GeneralizeTel_193891 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2968 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2578
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_193881 (coe v0)))
-- Ledger.Utxo._.isValid
d_isValid_2992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_200733 -> Bool
d_isValid_2992 ~v0 ~v1 v2 = du_isValid_2992 v2
du_isValid_2992 :: T_GeneralizeTel_200733 -> Bool
du_isValid_2992 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_isValid_2652
      (coe d_'46'generalizedField'45'tx_200723 (coe v0))
-- Ledger.Utxo._.body
d_body_2996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_200733 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536
d_body_2996 ~v0 ~v1 v2 = du_body_2996 v2
du_body_2996 ::
  T_GeneralizeTel_200733 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536
du_body_2996 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2648
      (coe d_'46'generalizedField'45'tx_200723 (coe v0))
-- Ledger.Utxo._.collateral
d_collateral_3002 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_200733 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3002 ~v0 ~v1 v2 = du_collateral_3002 v2
du_collateral_3002 ::
  T_GeneralizeTel_200733 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_3002 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2612
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_200723 (coe v0)))
-- Ledger.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_3046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_3046 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            du_Dec'45'ValidCertDeposits_2376 (coe v0)
            (coe d_pparams_2020 (coe v2)) (coe v5)
            (coe
               MAlonzo.Code.Ledger.Transaction.d_txcerts_2590
               (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v3))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2384 (coe v0)
                  (coe v1) (coe v3)
                  (coe
                     MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2366
                     (coe v0) (coe v1) (coe d_pparams_2020 (coe v2)) (coe v3) (coe v4)))
               (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2652 (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2652 (coe v3))
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
-- Ledger.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_3048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_2010 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_3048 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2384 (coe v0)
               (coe v1) (coe v3)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2366
                  (coe v0) (coe v1) (coe d_pparams_2020 (coe v2)) (coe v3) (coe v4)))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2652 (coe v3)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2652 (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Utxo._.body
d_body_3064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_212773 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536
d_body_3064 ~v0 ~v1 v2 = du_body_3064 v2
du_body_3064 ::
  T_GeneralizeTel_212773 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536
du_body_3064 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2648
      (coe d_'46'generalizedField'45'tx_212769 (coe v0))
-- Ledger.Utxo._.curTreasury
d_curTreasury_3072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_212773 -> Maybe Integer
d_curTreasury_3072 ~v0 ~v1 v2 = du_curTreasury_3072 v2
du_curTreasury_3072 :: T_GeneralizeTel_212773 -> Maybe Integer
du_curTreasury_3072 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2606
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_212769 (coe v0)))
-- Ledger.Utxo._.mint
d_mint_3074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_212773 -> AgdaAny
d_mint_3074 ~v0 ~v1 v2 = du_mint_3074 v2
du_mint_3074 :: T_GeneralizeTel_212773 -> AgdaAny
du_mint_3074 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2586
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_212769 (coe v0)))
-- Ledger.Utxo._.refInputs
d_refInputs_3076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_212773 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3076 ~v0 ~v1 v2 = du_refInputs_3076 v2
du_refInputs_3076 ::
  T_GeneralizeTel_212773 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3076 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2580
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_212769 (coe v0)))
-- Ledger.Utxo._.txNetworkId
d_txNetworkId_3084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_212773 -> Maybe AgdaAny
d_txNetworkId_3084 ~v0 ~v1 v2 = du_txNetworkId_3084 v2
du_txNetworkId_3084 :: T_GeneralizeTel_212773 -> Maybe AgdaAny
du_txNetworkId_3084 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2604
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_212769 (coe v0)))
-- Ledger.Utxo._.txins
d_txins_3094 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_212773 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3094 ~v0 ~v1 v2 = du_txins_3094 v2
du_txins_3094 ::
  T_GeneralizeTel_212773 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3094 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2578
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_212769 (coe v0)))
-- Ledger.Utxo._.txouts
d_txouts_3096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_212773 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3096 ~v0 ~v1 v2 = du_txouts_3096 v2
du_txouts_3096 ::
  T_GeneralizeTel_212773 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3096 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2582
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_212769 (coe v0)))
-- Ledger.Utxo._.txsize
d_txsize_3100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_212773 -> Integer
d_txsize_3100 ~v0 ~v1 v2 = du_txsize_3100 v2
du_txsize_3100 :: T_GeneralizeTel_212773 -> Integer
du_txsize_3100 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2608
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_212769 (coe v0)))
-- Ledger.Utxo._.txvldt
d_txvldt_3104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_212773 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3104 ~v0 ~v1 v2 = du_txvldt_3104 v2
du_txvldt_3104 ::
  T_GeneralizeTel_212773 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3104 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_212769 (coe v0)))
-- Ledger.Utxo._.txwdrls
d_txwdrls_3108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_212773 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3108 ~v0 ~v1 v2 = du_txwdrls_3108 v2
du_txwdrls_3108 ::
  T_GeneralizeTel_212773 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3108 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2592
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_212769 (coe v0)))
-- Ledger.Utxo.UTXO-premises
d_UTXO'45'premises_3178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_2010 ->
  T_UTxOState_2024 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3178 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2578
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v4)))
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
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe d_utxo_2034 (coe v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2578
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v4)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2580
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v4)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2578
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v4)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2580
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v4))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_2604 (coe v0) (coe d_slot_2018 (coe v2))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2588
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v4))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (d_minfee_2080
                              (coe v0) (coe v1) (coe d_pparams_2020 (coe v2))
                              (coe d_utxo_2034 (coe v3)) (coe v4))
                           (MAlonzo.Code.Ledger.Transaction.d_txfee_2584
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v4))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                                (coe
                                                   MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_ps_448
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1798
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1798
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2634
                                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_2650 (coe v4))))
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
                                         MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
                                         (coe
                                            MAlonzo.Code.Ledger.Address.du_payCred_108
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
                                 (coe
                                    du_collateralRange_2864 (coe v0) (coe v4)
                                    (coe d_utxo_2034 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
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
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1232
                                                     (coe v0)))
                                               (coe v5) (coe du_coinPolicies_2710 (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                             (coe v0))
                                          (coe
                                             du_bal_2866 (coe v0) (coe v4)
                                             (coe d_utxo_2034 (coe v3)))))
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
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1232
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                     (coe v0))
                                                  (coe
                                                     du_bal_2866 (coe v0) (coe v4)
                                                     (coe d_utxo_2034 (coe v3))))))
                                       (coe du_coinPolicies_2710 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txfee_2584
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2648
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.PParams.d_collateralPercentage_366
                                             (coe d_pparams_2020 (coe v2))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                (coe v0))
                                             (coe
                                                du_bal_2866 (coe v0) (coe v4)
                                                (coe d_utxo_2034 (coe v3))))
                                          (coe (100 :: Integer))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1192
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1190
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_collateral_2612
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2648
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8709'_442
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0)))
                           (coe
                              du_consumed_2896 (coe v0) (coe d_pparams_2020 (coe v2)) (coe v3)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v4)))
                           (coe
                              du_produced_2904 (coe v0) (coe d_pparams_2020 (coe v2)) (coe v3)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v4))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2586
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v4))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2608
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v4)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_318
                                    (coe d_pparams_2020 (coe v2))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (d_refScriptsSize_2074
                                       (coe v0) (coe v1) (coe d_utxo_2034 (coe v3)) (coe v4))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_350
                                       (coe d_pparams_2020 (coe v2))))
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
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           du_utxoEntrySize_2006 (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_344
                                                        (coe d_pparams_2020 (coe v2)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2672
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
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2662
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2582
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2648
                                                   (coe v4))))))
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
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1738 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2672
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_326
                                                     (coe d_pparams_2020 (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2662
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2582
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2648
                                                      (coe v4))))))
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
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2662
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2582
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2648
                                                         (coe v4))))))
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
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_112
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2662
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2582
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2648
                                                            (coe v4))))))
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_82
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2592
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2648
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_46
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2604
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2648
                                                            (coe v4)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1208
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_46
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2606
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2648
                                                            (coe v4)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe d_treasury_2022 (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_193879 ::
  T_GeneralizeTel_193891 -> T_UTxOEnv_2010
d_'46'generalizedField'45'Γ_193879 v0
  = case coe v0 of
      C_mkGeneralizeTel_193893 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_193881 ::
  T_GeneralizeTel_193891 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2638
d_'46'generalizedField'45'tx_193881 v0
  = case coe v0 of
      C_mkGeneralizeTel_193893 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_193883 ::
  T_GeneralizeTel_193891 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_193883 v0
  = case coe v0 of
      C_mkGeneralizeTel_193893 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_193885 ::
  T_GeneralizeTel_193891 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_193885 v0
  = case coe v0 of
      C_mkGeneralizeTel_193893 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_193887 ::
  T_GeneralizeTel_193891 -> Integer
d_'46'generalizedField'45'fees_193887 v0
  = case coe v0 of
      C_mkGeneralizeTel_193893 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_193889 ::
  T_GeneralizeTel_193891 -> Integer
d_'46'generalizedField'45'donations_193889 v0
  = case coe v0 of
      C_mkGeneralizeTel_193893 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_193891 a0 a1 = ()
data T_GeneralizeTel_193891
  = C_mkGeneralizeTel_193893 T_UTxOEnv_2010
                             MAlonzo.Code.Ledger.Transaction.T_Tx_2638
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer Integer
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_200721 ::
  T_GeneralizeTel_200733 -> T_UTxOEnv_2010
d_'46'generalizedField'45'Γ_200721 v0
  = case coe v0 of
      C_mkGeneralizeTel_200735 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_200723 ::
  T_GeneralizeTel_200733 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2638
d_'46'generalizedField'45'tx_200723 v0
  = case coe v0 of
      C_mkGeneralizeTel_200735 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_200725 ::
  T_GeneralizeTel_200733 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_200725 v0
  = case coe v0 of
      C_mkGeneralizeTel_200735 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_200727 ::
  T_GeneralizeTel_200733 -> Integer
d_'46'generalizedField'45'fees_200727 v0
  = case coe v0 of
      C_mkGeneralizeTel_200735 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_200729 ::
  T_GeneralizeTel_200733 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_200729 v0
  = case coe v0 of
      C_mkGeneralizeTel_200735 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_200731 ::
  T_GeneralizeTel_200733 -> Integer
d_'46'generalizedField'45'donations_200731 v0
  = case coe v0 of
      C_mkGeneralizeTel_200735 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_200733 a0 a1 = ()
data T_GeneralizeTel_200733
  = C_mkGeneralizeTel_200735 T_UTxOEnv_2010
                             MAlonzo.Code.Ledger.Transaction.T_Tx_2638
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_212765 ::
  T_GeneralizeTel_212773 -> T_UTxOEnv_2010
d_'46'generalizedField'45'Γ_212765 v0
  = case coe v0 of
      C_mkGeneralizeTel_212775 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s
d_'46'generalizedField'45's_212767 ::
  T_GeneralizeTel_212773 -> T_UTxOState_2024
d_'46'generalizedField'45's_212767 v0
  = case coe v0 of
      C_mkGeneralizeTel_212775 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_212769 ::
  T_GeneralizeTel_212773 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2638
d_'46'generalizedField'45'tx_212769 v0
  = case coe v0 of
      C_mkGeneralizeTel_212775 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_212771 ::
  T_GeneralizeTel_212773 -> T_UTxOState_2024
d_'46'generalizedField'45's''_212771 v0
  = case coe v0 of
      C_mkGeneralizeTel_212775 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_212773 a0 a1 = ()
data T_GeneralizeTel_212773
  = C_mkGeneralizeTel_212775 T_UTxOEnv_2010 T_UTxOState_2024
                             MAlonzo.Code.Ledger.Transaction.T_Tx_2638 T_UTxOState_2024
