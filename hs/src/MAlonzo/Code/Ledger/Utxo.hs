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
import qualified MAlonzo.Code.Class.HasCast.Base
import qualified MAlonzo.Code.Class.HasCast.Derive
import qualified MAlonzo.Code.Class.HasCast.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
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
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_202
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
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_188
-- _.DecEq-BaseAddr
d_DecEq'45'BaseAddr_72 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_72 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_234
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))
-- _.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_74 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_74 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_236
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_106 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_238
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))
-- _.ExUnits
d_ExUnits_148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_148 = erased
-- _.GovProposal
d_GovProposal_162 a0 = ()
-- _.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
d_HasNetworkId'45'RwdAddr_190 ~v0 = du_HasNetworkId'45'RwdAddr_190
du_HasNetworkId'45'RwdAddr_190 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
du_HasNetworkId'45'RwdAddr_190
  = coe MAlonzo.Code.Ledger.Address.du_HasNetworkId'45'RwdAddr_126
-- _.HasPParams
d_HasPParams_192 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_198 a0 a1 a2 = ()
-- _.HasgovActionDeposit
d_HasgovActionDeposit_206 a0 a1 a2 = ()
-- _.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426
d_HasgovActionDeposit'45'PParams_208 ~v0
  = du_HasgovActionDeposit'45'PParams_208
du_HasgovActionDeposit'45'PParams_208 ::
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426
du_HasgovActionDeposit'45'PParams_208
  = coe
      MAlonzo.Code.Ledger.PParams.du_HasgovActionDeposit'45'PParams_458
-- _.MemoryEstimate
d_MemoryEstimate_258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_258 = erased
-- _.NetworkId
d_NetworkId_266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_266 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256 (coe v0))
-- _.PParams
d_PParams_286 a0 = ()
-- _.PParamsOf
d_PParamsOf_290 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_290 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
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
-- _.TxOut
d_TxOut_426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_426 = erased
-- _.TxOutʰ
d_TxOut'688'_428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut'688'_428 = erased
-- _.UTxO
d_UTxO_432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_432 = erased
-- _.UTxOOf
d_UTxOOf_434 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2964 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_434 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2972 (coe v0)
-- _.Value
d_Value_452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_452 = erased
-- _.coin
d_coin_478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_478 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
-- _.getValueʰ
d_getValue'688'_520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_520 ~v0 = du_getValue'688'_520
du_getValue'688'_520 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_520
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_3218
-- _.govActionDepositOf
d_govActionDepositOf_524 ::
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426 ->
  AgdaAny -> Integer
d_govActionDepositOf_524 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDepositOf_434 (coe v0)
-- _.inject
d_inject_532 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_532 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
-- _.netId
d_netId_574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_574 ~v0 = du_netId_574
du_netId_574 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_574 = coe MAlonzo.Code.Ledger.Address.du_netId_156
-- _.txOutHash
d_txOutHash_634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_634 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_3208 (coe v0)
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
-- _.HasPParams.PParamsOf
d_PParamsOf_920 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_928 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2964 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_928 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2972 (coe v0)
-- _.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_936 ::
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426 ->
  AgdaAny -> Integer
d_govActionDepositOf_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDepositOf_434 (coe v0)
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
-- Ledger.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1660 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1660 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2616
      (coe v0) (coe v1)
-- Ledger.Utxo._.evalScripts
d_evalScripts_1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1670 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2634 (coe v0)
      (coe v1)
-- Ledger.Utxo._.DCert
d_DCert_1778 a0 a1 = ()
-- Ledger.Utxo._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1796 v0 ~v1
  = du_DecEq'45'DepositPurpose_1796 v0
du_DecEq'45'DepositPurpose_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1796 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0))
-- Ledger.Utxo._.DepositPurpose
d_DepositPurpose_1800 a0 a1 = ()
-- Ledger.Utxo._.Deposits
d_Deposits_1802 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 -> ()
d_Deposits_1802 = erased
-- Ledger.Utxo._.DepositsOf
d_DepositsOf_1804 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_918 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1804 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_926 (coe v0)
-- Ledger.Utxo._.HasDeposits
d_HasDeposits_1846 a0 a1 a2 a3 = ()
-- Ledger.Utxo._.HasDeposits.DepositsOf
d_DepositsOf_2036 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_918 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2036 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_926 (coe v0)
-- Ledger.Utxo.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isTwoPhaseScriptAddress_2078 = erased
-- Ledger.Utxo.isTwoPhaseScriptAddress?
d_isTwoPhaseScriptAddress'63'_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'63'_2096 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress'63'_2096 v0 v2 v3 v4
du_isTwoPhaseScriptAddress'63'_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'63'_2096 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (let v4
             = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_202
                    (coe MAlonzo.Code.Ledger.Address.du_payCred_152 (coe v3))) in
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
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1280
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Ledger.Address.du_getScriptHash_228
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
                                                  MAlonzo.Code.Ledger.Transaction.du_m_3316 (coe v0)
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
                                                                    MAlonzo.Code.Ledger.Transaction.du_m_3316
                                                                    (coe v0) (coe v1) (coe v2))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Address.du_getScriptHash_228
                                                                    (coe v3) (coe v7))
                                                                 (coe v11) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_3322
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
                                                                        MAlonzo.Code.Ledger.Transaction.du_m_3316
                                                                        (coe v0) (coe v1) (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Address.du_getScriptHash_228
                                                                        (coe v3) (coe v7))
                                                                     (coe v12) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_3322
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
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1280
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_getScriptHash_228
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
                                                      MAlonzo.Code.Ledger.Transaction.du_m_3316
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
                                                                        MAlonzo.Code.Ledger.Transaction.du_m_3316
                                                                        (coe v0) (coe v1) (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Address.du_getScriptHash_228
                                                                        (coe v3) (coe v8))
                                                                     (coe v12) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_3322
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
                                                                            MAlonzo.Code.Ledger.Transaction.du_m_3316
                                                                            (coe v0) (coe v1)
                                                                            (coe v2))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Address.du_getScriptHash_228
                                                                            (coe v3) (coe v8))
                                                                         (coe v13) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_3322
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
d_isTwoPhaseScriptAddress'8242'_2150 a0 a1 a2 a3 a4 = ()
newtype T_isTwoPhaseScriptAddress'8242'_2150 = C_wrap_2162 AgdaAny
-- Ledger.Utxo.isTwoPhaseScriptAddress′.unwrap
d_unwrap_2160 :: T_isTwoPhaseScriptAddress'8242'_2150 -> AgdaAny
d_unwrap_2160 v0
  = case coe v0 of
      C_wrap_2162 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.isTwoPhaseScriptAddress′?
d_isTwoPhaseScriptAddress'8242''63'_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'8242''63'_2170 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress'8242''63'_2170 v0 v2 v3 v4
du_isTwoPhaseScriptAddress'8242''63'_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'8242''63'_2170 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe C_wrap_2162) (coe (\ v4 -> d_unwrap_2160 (coe v4)))
         (let v4
                = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                    (coe
                       MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_202
                       (coe MAlonzo.Code.Ledger.Address.du_payCred_152 (coe v3))) in
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
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1280
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_getScriptHash_228
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
                                                     MAlonzo.Code.Ledger.Transaction.du_m_3316
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
                                                                       MAlonzo.Code.Ledger.Transaction.du_m_3316
                                                                       (coe v0) (coe v1) (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_getScriptHash_228
                                                                       (coe v3) (coe v7))
                                                                    (coe v11) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_3322
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
                                                                           MAlonzo.Code.Ledger.Transaction.du_m_3316
                                                                           (coe v0) (coe v1)
                                                                           (coe v2))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_getScriptHash_228
                                                                           (coe v3) (coe v7))
                                                                        (coe v12) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_3322
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
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1280
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Address.du_getScriptHash_228
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
                                                         MAlonzo.Code.Ledger.Transaction.du_m_3316
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
                                                                           MAlonzo.Code.Ledger.Transaction.du_m_3316
                                                                           (coe v0) (coe v1)
                                                                           (coe v2))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_getScriptHash_228
                                                                           (coe v3) (coe v8))
                                                                        (coe v12) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_3322
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
                                                                               MAlonzo.Code.Ledger.Transaction.du_m_3316
                                                                               (coe v0) (coe v1)
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Address.du_getScriptHash_228
                                                                               (coe v3) (coe v8))
                                                                            (coe v13) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_3322
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
d_getDataHashes_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2182 ~v0 ~v1 v2 = du_getDataHashes_2182 v2
du_getDataHashes_2182 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2182 v0
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
d_getInputHashes_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2186 v0 ~v1 v2 v3
  = du_getInputHashes_2186 v0 v2 v3
du_getInputHashes_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2186 v0 v1 v2
  = coe
      du_getDataHashes_2182
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
         (\ v3 ->
            coe
              du_isTwoPhaseScriptAddress'8242''63'_2170 (coe v0) (coe v1)
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
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_3020
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v1))))))
-- Ledger.Utxo.totExUnits
d_totExUnits_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> AgdaAny
d_totExUnits_2242 v0 ~v1 v2 = du_totExUnits_2242 v0 v2
du_totExUnits_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> AgdaAny
du_totExUnits_2242 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe
               MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
               (coe
                  MAlonzo.Code.Ledger.Script.d_Data'688'_190
                  (coe
                     MAlonzo.Code.Ledger.Script.d_ps_448
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_448
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866 (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3166
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v1)))
-- Ledger.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2254 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 -> Integer
d_utxoEntrySizeWithoutVal_2254 ~v0
  = du_utxoEntrySizeWithoutVal_2254
du_utxoEntrySizeWithoutVal_2254 :: Integer
du_utxoEntrySizeWithoutVal_2254 = coe (8 :: Integer)
-- Ledger.Utxo.utxoEntrySize
d_utxoEntrySize_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2256 v0 ~v1 v2 = du_utxoEntrySize_2256 v0 v2
du_utxoEntrySize_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2256 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.du_getValue'688'_3218 (coe v1)))
-- Ledger.Utxo.UTxOEnv
d_UTxOEnv_2260 a0 a1 = ()
data T_UTxOEnv_2260
  = C_UTxOEnv'46'constructor_17639 AgdaAny
                                   MAlonzo.Code.Ledger.PParams.T_PParams_262 Integer
-- Ledger.Utxo.UTxOEnv.slot
d_slot_2268 :: T_UTxOEnv_2260 -> AgdaAny
d_slot_2268 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_17639 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.pparams
d_pparams_2270 ::
  T_UTxOEnv_2260 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2270 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_17639 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.treasury
d_treasury_2272 :: T_UTxOEnv_2260 -> Integer
d_treasury_2272 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_17639 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
d_HasPParams'45'UTxOEnv_2274 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2274
du_HasPParams'45'UTxOEnv_2274 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
du_HasPParams'45'UTxOEnv_2274
  = coe
      MAlonzo.Code.Ledger.PParams.C_HasPParams'46'constructor_9199
      (coe (\ v0 -> d_pparams_2270 (coe v0)))
-- Ledger.Utxo.HasgovActionDeposit-UTxOEnv
d_HasgovActionDeposit'45'UTxOEnv_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426
d_HasgovActionDeposit'45'UTxOEnv_2276 ~v0 ~v1
  = du_HasgovActionDeposit'45'UTxOEnv_2276
du_HasgovActionDeposit'45'UTxOEnv_2276 ::
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426
du_HasgovActionDeposit'45'UTxOEnv_2276
  = coe
      MAlonzo.Code.Ledger.PParams.C_HasgovActionDeposit'46'constructor_9331
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.PParams.d_govActionDepositOf_434
              (coe
                 MAlonzo.Code.Ledger.PParams.du_HasgovActionDeposit'45'PParams_458)
              (d_pparams_2270 (coe v0))))
-- Ledger.Utxo.UTxOState
d_UTxOState_2278 a0 a1 = ()
data T_UTxOState_2278
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_2296 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Utxo.UTxOState.utxo
d_utxo_2288 ::
  T_UTxOState_2278 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2288 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2296 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.fees
d_fees_2290 :: T_UTxOState_2278 -> Integer
d_fees_2290 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2296 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.deposits
d_deposits_2292 ::
  T_UTxOState_2278 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2292 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2296 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.donations
d_donations_2294 :: T_UTxOState_2278 -> Integer
d_donations_2294 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2296 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.HasUTxOState
d_HasUTxOState_2302 a0 a1 a2 a3 = ()
newtype T_HasUTxOState_2302
  = C_HasUTxOState'46'constructor_18393 (AgdaAny -> T_UTxOState_2278)
-- Ledger.Utxo.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2310 ::
  T_HasUTxOState_2302 -> AgdaAny -> T_UTxOState_2278
d_UTxOStateOf_2310 v0
  = case coe v0 of
      C_HasUTxOState'46'constructor_18393 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._.UTxOStateOf
d_UTxOStateOf_2314 ::
  T_HasUTxOState_2302 -> AgdaAny -> T_UTxOState_2278
d_UTxOStateOf_2314 v0 = coe d_UTxOStateOf_2310 (coe v0)
-- Ledger.Utxo.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_918
d_HasDeposits'45'UTxOState_2316 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2316
du_HasDeposits'45'UTxOState_2316 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_918
du_HasDeposits'45'UTxOState_2316
  = coe
      MAlonzo.Code.Ledger.Certs.C_HasDeposits'46'constructor_2969
      (coe (\ v0 -> d_deposits_2292 (coe v0)))
-- Ledger.Utxo.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2964
d_HasUTxO'45'UTxOState_2318 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2318
du_HasUTxO'45'UTxOState_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2964
du_HasUTxO'45'UTxOState_2318
  = coe
      MAlonzo.Code.Ledger.Transaction.C_HasUTxO'46'constructor_18459
      (coe (\ v0 -> d_utxo_2288 (coe v0)))
-- Ledger.Utxo.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'UTxOEnv_2320 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2320
du_HasCast'45'UTxOEnv_2320 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'UTxOEnv_2320
  = coe
      MAlonzo.Code.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                 (2260 :: Integer) (5998337070880856472 :: Integer)
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
                                 (388 :: Integer) (5998337070880856472 :: Integer) "_.Slot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                    (2260 :: Integer) (5998337070880856472 :: Integer)
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
                                    (286 :: Integer) (5998337070880856472 :: Integer) "_.PParams"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                       (2260 :: Integer) (5998337070880856472 :: Integer)
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
         (coe C_UTxOEnv'46'constructor_17639))
-- Ledger.Utxo.HasCast-UTxOState
d_HasCast'45'UTxOState_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'UTxOState_2322 ~v0 ~v1 = du_HasCast'45'UTxOState_2322
du_HasCast'45'UTxOState_2322 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'UTxOState_2322
  = coe
      MAlonzo.Code.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                 (2278 :: Integer) (5998337070880856472 :: Integer)
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
                                 (432 :: Integer) (5998337070880856472 :: Integer) "_.UTxO"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                    (2278 :: Integer) (5998337070880856472 :: Integer)
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
                        MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                       (2278 :: Integer) (5998337070880856472 :: Integer)
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
                                       (1802 :: Integer) (5998337070880856472 :: Integer)
                                       "Ledger.Utxo._.Deposits"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                          (2278 :: Integer) (5998337070880856472 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'44'_'10215''7512'_2296))
-- Ledger.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2324 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2324
  = C_UTXO'45'inductive_3410 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._._.outs
d_outs_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2334 ~v0 ~v1 v2 = du_outs_2334 v2
du_outs_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2334 v0
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
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_3052 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_3024 (coe v0))
-- Ledger.Utxo._._.balance
d_balance_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2340 v0 ~v1 v2 = du_balance_2340 v0 v2
du_balance_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2340 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_188
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_234
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_236
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_210
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0)))
            (coe
               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_188
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_448
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
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
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0)))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_3218)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_3208 (coe v0))
         (coe v1))
-- Ledger.Utxo._._.cbalance
d_cbalance_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2346 v0 ~v1 v2 = du_cbalance_2346 v0 v2
du_cbalance_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2346 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
      (coe du_balance_2340 (coe v0) (coe v1))
-- Ledger.Utxo._._.refScriptsSize
d_refScriptsSize_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> Integer
d_refScriptsSize_2350 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Base.d_sum_280
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (MAlonzo.Code.Ledger.Abstract.d_scriptSize_1994 (coe v1))
         (MAlonzo.Code.Ledger.Transaction.d_refScripts_3242
            (coe v0) (coe v3) (coe v2)))
-- Ledger.Utxo._._.minfee
d_minfee_2356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> Integer
d_minfee_2356 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1986 v1
               (MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v2))
               (coe du_totExUnits_2242 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Fees.d_scriptsCost_1628 (coe v0) (coe v2)
               (coe d_refScriptsSize_2350 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v2)))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_3050
            (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v4))))
-- Ledger.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2364 v0 ~v1 = du_HasCoin'45'UTxO_2364 v0
du_HasCoin'45'UTxO_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2364 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_2346 (coe v0))
-- Ledger.Utxo.certDeposit
d_certDeposit_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_992 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2366 ~v0 ~v1 v2 v3 = du_certDeposit_2366 v2 v3
du_certDeposit_2366 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_992 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2366 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_994 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_900 (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Certs.C_regpool_998 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_902 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v1)))
         MAlonzo.Code.Ledger.Certs.C_regdrep_1002 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_904 (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Certs.C_reg_1008 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_900 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v1)))
         _ -> coe v2)
-- Ledger.Utxo.certRefund
d_certRefund_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_992 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_898]
d_certRefund_2384 ~v0 ~v1 v2 = du_certRefund_2384 v2
du_certRefund_2384 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_992 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_898]
du_certRefund_2384 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_442
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_996 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_900 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_1004 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_904 (coe v2))
         _ -> coe v1)
-- Ledger.Utxo.ValidCertDeposits
d_ValidCertDeposits_2394 a0 a1 a2 a3 a4 = ()
data T_ValidCertDeposits_2394
  = C_'91''93'_2400 | C_delegate_2412 T_ValidCertDeposits_2394 |
    C_regpool_2420 T_ValidCertDeposits_2394 |
    C_regdrep_2430 T_ValidCertDeposits_2394 |
    C_reg_2438 T_ValidCertDeposits_2394 |
    C_dereg_2448 Integer
                 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_ValidCertDeposits_2394 |
    C_deregdrep_2456 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                     T_ValidCertDeposits_2394 |
    C_ccreghot_2464 T_ValidCertDeposits_2394 |
    C_retirepool_2472 T_ValidCertDeposits_2394
-- Ledger.Utxo.validCertDeposits?
d_validCertDeposits'63'_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_992] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCertDeposits'63'_2480 v0 ~v1 v2 v3 v4
  = du_validCertDeposits'63'_2480 v0 v2 v3 v4
du_validCertDeposits'63'_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_992] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCertDeposits'63'_2480 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe C_'91''93'_2400))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Certs.C_delegate_994 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_delegate_2412)
                    (coe
                       (\ v10 ->
                          case coe v10 of
                            C_delegate_2412 v16 -> coe v16
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2480 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_900 (coe v6))
                                (coe v9))))
                       (coe v5))
             MAlonzo.Code.Ledger.Certs.C_dereg_996 v6 v7
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
                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2442
                                               (coe v0)))
                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_900
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
                                                      C_dereg_2448 v8 v12
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                         erased))
                                                   (coe
                                                      (\ v13 ->
                                                         case coe v13 of
                                                           C_dereg_2448 v16 v18 v19 v20 -> coe v20
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2480 (coe v0)
                                                      (coe v1)
                                                      (let v13
                                                             = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2442
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
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_900
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
                                         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_govStructure_2442
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_900 (coe v6))
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
                                                      C_dereg_2448
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Function.Bundles.d_from_1822
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
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_900
                                                                  (coe v6)))
                                                            v11))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                         (coe
                                                            MAlonzo.Code.Function.Bundles.d_from_1822
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
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_900
                                                                  (coe v6)))
                                                            v11))
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                         erased))
                                                   (coe
                                                      (\ v12 ->
                                                         case coe v12 of
                                                           C_dereg_2448 v15 v17 v18 v19 -> coe v19
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2480 (coe v0)
                                                      (coe v1)
                                                      (let v12
                                                             = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2442
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
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_900
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
             MAlonzo.Code.Ledger.Certs.C_regpool_998 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regpool_2420)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_regpool_2420 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2480 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_902 (coe v6))
                                (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v1)))))
                       (coe v5))
             MAlonzo.Code.Ledger.Certs.C_retirepool_1000 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_retirepool_2472)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_retirepool_2472 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2480 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Certs.C_regdrep_1002 v6 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regdrep_2430)
                    (coe
                       (\ v9 ->
                          case coe v9 of
                            C_regdrep_2430 v14 -> coe v14
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2480 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_904 (coe v6))
                                (coe v7))))
                       (coe v5))
             MAlonzo.Code.Ledger.Certs.C_deregdrep_1004 v6 v7
               -> let v8
                        = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                            (coe
                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe
                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                  (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2442
                                        (coe v0)))
                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_904 (coe v6))
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
                                            (coe C_deregdrep_2456 v11)
                                            (coe
                                               (\ v12 ->
                                                  case coe v12 of
                                                    C_deregdrep_2456 v16 v17 -> coe v17
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               du_validCertDeposits'63'_2480 (coe v0) (coe v1)
                                               (let v12
                                                      = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2442
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
                                                           MAlonzo.Code.Ledger.Certs.C_DRepDeposit_904
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
             MAlonzo.Code.Ledger.Certs.C_ccreghot_1006 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_ccreghot_2464)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_ccreghot_2464 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2480 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Certs.C_reg_1008 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_reg_2438)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_reg_2438 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2480 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_900 (coe v6))
                                (coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v1)))))
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_2652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_992] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_2652 v0 ~v1 v2 v3 v4
  = du_Dec'45'ValidCertDeposits_2652 v0 v2 v3 v4
du_Dec'45'ValidCertDeposits_2652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_992] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_2652 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         du_validCertDeposits'63'_2480 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Utxo.updateCertDeposits
d_updateCertDeposits_2654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_992] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2654 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_2654 v0 v2 v3 v4
du_updateCertDeposits_2654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_992] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2654 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> let v6
                 = coe
                     du_updateCertDeposits_2654 (coe v0) (coe v1) (coe v5) (coe v3) in
           coe
             (case coe v4 of
                MAlonzo.Code.Ledger.Certs.C_delegate_994 v7 v8 v9 v10
                  -> coe
                       du_updateCertDeposits_2654 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0)))
                          v3 (coe du_certDeposit_2366 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Certs.C_dereg_996 v7 v8
                  -> coe
                       du_updateCertDeposits_2654 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0))))
                          (coe v3) (coe du_certRefund_2384 (coe v4)))
                MAlonzo.Code.Ledger.Certs.C_regpool_998 v7 v8
                  -> coe
                       du_updateCertDeposits_2654 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0)))
                          v3 (coe du_certDeposit_2366 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Certs.C_regdrep_1002 v7 v8 v9
                  -> coe
                       du_updateCertDeposits_2654 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0)))
                          v3 (coe du_certDeposit_2366 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Certs.C_deregdrep_1004 v7 v8
                  -> coe
                       du_updateCertDeposits_2654 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0))))
                          (coe v3) (coe du_certRefund_2384 (coe v4)))
                MAlonzo.Code.Ledger.Certs.C_reg_1008 v7 v8
                  -> coe
                       du_updateCertDeposits_2654 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0)))
                          v3 (coe du_certDeposit_2366 (coe v4) (coe v1)))
                _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateProposalDeposits
d_updateProposalDeposits_2732 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2732 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_2732 v0 v2 v3 v4 v5
du_updateProposalDeposits_2732 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2732 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0)))
             (coe
                du_updateProposalDeposits_2732 (coe v0) (coe v6) (coe v2) (coe v3)
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
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_906
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_284 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateDeposits
d_updateDeposits_2744 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2744 v0 ~v1 v2 v3 v4
  = du_updateDeposits_2744 v0 v2 v3 v4
du_updateDeposits_2744 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2744 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_2654 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_3032 (coe v2))
      (coe
         du_updateProposalDeposits_2732 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_3038 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_3052 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v1))
         (coe v3))
-- Ledger.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_2796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2796 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_2796 v0 v2 v3 v4
du_proposalDepositsΔ_2796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2796 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_2732 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txid_3052 (coe v3))
      (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Utxo.depositsChange
d_depositsChange_2850 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2850 v0 ~v1 v2 v3 v4
  = du_depositsChange_2850 v0 v2 v3 v4
du_depositsChange_2850 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2850 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_2744 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Utxo.inInterval
d_inInterval_2860 a0 a1 a2 a3 = ()
data T_inInterval_2860
  = C_both_2868 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2872 AgdaAny | C_upper_2876 AgdaAny | C_none_2878
-- Ledger.Utxo.Dec-inInterval
d_Dec'45'inInterval_2880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2880 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2880 v0 v2 v3
du_Dec'45'inInterval_2880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2880 v0 v1 v2
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
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_266
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1584
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_266
                                            (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1584
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
                                                                                    C_both_2868
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
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_266
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1584
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
                                                         (coe C_lower_2872 v9))
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
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_266
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1584
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
                                                         (coe C_upper_2876 v9))
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
                                 (coe C_none_2878))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2982 v0 ~v1
  = du_HasCoin'45'UTxOState_2982 v0
du_HasCoin'45'UTxOState_2982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2982 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2346 (coe v0) (coe d_utxo_2288 (coe v1)))
                    (coe d_donations_2294 (coe v1)))
                 (coe d_fees_2290 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                 (coe
                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_968
                    (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                 (coe (\ v2 -> v2)) (coe d_deposits_2292 (coe v1)))))
-- Ledger.Utxo.coinPolicies
d_coinPolicies_2986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 -> [AgdaAny]
d_coinPolicies_2986 v0 ~v1 = du_coinPolicies_2986 v0
du_coinPolicies_2986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_2986 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
         (1 :: Integer))
-- Ledger.Utxo.isAdaOnly
d_isAdaOnly_2988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  AgdaAny -> ()
d_isAdaOnly_2988 = erased
-- Ledger.Utxo.feesOK
d_feesOK_2992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_2992 = erased
-- Ledger.Utxo._.collateralRange
d_collateralRange_3140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_3140 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_3140 v0 v3 v4
du_collateralRange_3140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_3140 v0 v1 v2
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
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_3208 (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_3054
            (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v1))))
-- Ledger.Utxo._.bal
d_bal_3142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_3142 v0 ~v1 ~v2 v3 v4 = du_bal_3142 v0 v3 v4
du_bal_3142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_3142 v0 v1 v2
  = coe
      du_balance_2340 (coe v0)
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
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_3054
            (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v1))))
-- Ledger.Utxo._._.depositRefunds
d_depositRefunds_3156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
d_depositRefunds_3156 v0 ~v1 v2 v3 v4
  = du_depositRefunds_3156 v0 v2 v3 v4
du_depositRefunds_3156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
du_depositRefunds_3156 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_negPart_70
      (coe
         du_depositsChange_2850 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2292 (coe v2)))
-- Ledger.Utxo._._.newDeposits
d_newDeposits_3164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
d_newDeposits_3164 v0 ~v1 v2 v3 v4
  = du_newDeposits_3164 v0 v2 v3 v4
du_newDeposits_3164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
du_newDeposits_3164 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_posPart_58
      (coe
         du_depositsChange_2850 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2292 (coe v2)))
-- Ledger.Utxo._._.consumed
d_consumed_3172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> AgdaAny
d_consumed_3172 v0 ~v1 v2 v3 v4 = du_consumed_3172 v0 v2 v3 v4
du_consumed_3172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> AgdaAny
du_consumed_3172 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))))
            (coe
               du_balance_2340 (coe v0)
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
                  (coe d_utxo_2288 (coe v2))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txins_3020 (coe v3))))
            (MAlonzo.Code.Ledger.Transaction.d_mint_3028 (coe v3)))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
            (coe du_depositRefunds_3156 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_238
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
            (coe (\ v4 -> v4))
            (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034 (coe v3))))
-- Ledger.Utxo._._.produced
d_produced_3180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> AgdaAny
d_produced_3180 v0 ~v1 v2 v3 v4 = du_produced_3180 v0 v2 v3 v4
du_produced_3180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> AgdaAny
du_produced_3180 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))))
            (coe du_balance_2340 (coe v0) (coe du_outs_2334 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_3026 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
            (coe du_newDeposits_3164 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_3040 (coe v3)))
-- Ledger.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__3204 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__3204
  = C_Scripts'45'Yes_3262 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_3320 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._.isValid
d_isValid_3210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_196885 -> Bool
d_isValid_3210 ~v0 ~v1 v2 = du_isValid_3210 v2
du_isValid_3210 :: T_GeneralizeTel_196885 -> Bool
du_isValid_3210 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_isValid_3184
      (coe d_'46'generalizedField'45'tx_196875 (coe v0))
-- Ledger.Utxo._.body
d_body_3214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_196885 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
d_body_3214 ~v0 ~v1 v2 = du_body_3214 v2
du_body_3214 ::
  T_GeneralizeTel_196885 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
du_body_3214 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_3180
      (coe d_'46'generalizedField'45'tx_196875 (coe v0))
-- Ledger.Utxo._.txcerts
d_txcerts_3236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_196885 -> [MAlonzo.Code.Ledger.Certs.T_DCert_992]
d_txcerts_3236 ~v0 ~v1 v2 = du_txcerts_3236 v2
du_txcerts_3236 ::
  T_GeneralizeTel_196885 -> [MAlonzo.Code.Ledger.Certs.T_DCert_992]
du_txcerts_3236 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_3032
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_196875 (coe v0)))
-- Ledger.Utxo._.txdonation
d_txdonation_3238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_196885 -> Integer
d_txdonation_3238 ~v0 ~v1 v2 = du_txdonation_3238 v2
du_txdonation_3238 :: T_GeneralizeTel_196885 -> Integer
du_txdonation_3238 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_3040
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_196875 (coe v0)))
-- Ledger.Utxo._.txfee
d_txfee_3240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_196885 -> Integer
d_txfee_3240 ~v0 ~v1 v2 = du_txfee_3240 v2
du_txfee_3240 :: T_GeneralizeTel_196885 -> Integer
du_txfee_3240 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_3026
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_196875 (coe v0)))
-- Ledger.Utxo._.txins
d_txins_3244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_196885 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3244 ~v0 ~v1 v2 = du_txins_3244 v2
du_txins_3244 ::
  T_GeneralizeTel_196885 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3244 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_3020
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_196875 (coe v0)))
-- Ledger.Utxo._.isValid
d_isValid_3268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_203745 -> Bool
d_isValid_3268 ~v0 ~v1 v2 = du_isValid_3268 v2
du_isValid_3268 :: T_GeneralizeTel_203745 -> Bool
du_isValid_3268 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_isValid_3184
      (coe d_'46'generalizedField'45'tx_203735 (coe v0))
-- Ledger.Utxo._.body
d_body_3272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_203745 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
d_body_3272 ~v0 ~v1 v2 = du_body_3272 v2
du_body_3272 ::
  T_GeneralizeTel_203745 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
du_body_3272 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_3180
      (coe d_'46'generalizedField'45'tx_203735 (coe v0))
-- Ledger.Utxo._.collateral
d_collateral_3278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_203745 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3278 ~v0 ~v1 v2 = du_collateral_3278 v2
du_collateral_3278 ::
  T_GeneralizeTel_203745 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_3278 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_3054
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_203735 (coe v0)))
-- Ledger.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_3322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_3322 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            du_Dec'45'ValidCertDeposits_2652 (coe v0)
            (coe d_pparams_2270 (coe v2)) (coe v5)
            (coe
               MAlonzo.Code.Ledger.Transaction.d_txcerts_3032
               (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v3))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2634 (coe v0)
                  (coe v1) (coe v3)
                  (coe
                     MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2616
                     (coe v0) (coe v1) (coe d_pparams_2270 (coe v2)) (coe v3) (coe v4)))
               (coe MAlonzo.Code.Ledger.Transaction.d_isValid_3184 (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe MAlonzo.Code.Ledger.Transaction.d_isValid_3184 (coe v3))
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
-- Ledger.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_3324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_3324 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2634 (coe v0)
               (coe v1) (coe v3)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2616
                  (coe v0) (coe v1) (coe d_pparams_2270 (coe v2)) (coe v3) (coe v4)))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_3184 (coe v3)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_3184 (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Utxo._.body
d_body_3340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_215911 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
d_body_3340 ~v0 ~v1 v2 = du_body_3340 v2
du_body_3340 ::
  T_GeneralizeTel_215911 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
du_body_3340 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_3180
      (coe d_'46'generalizedField'45'tx_215907 (coe v0))
-- Ledger.Utxo._.curTreasury
d_curTreasury_3348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_215911 -> Maybe Integer
d_curTreasury_3348 ~v0 ~v1 v2 = du_curTreasury_3348 v2
du_curTreasury_3348 :: T_GeneralizeTel_215911 -> Maybe Integer
du_curTreasury_3348 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_3048
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_215907 (coe v0)))
-- Ledger.Utxo._.mint
d_mint_3350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_215911 -> AgdaAny
d_mint_3350 ~v0 ~v1 v2 = du_mint_3350 v2
du_mint_3350 :: T_GeneralizeTel_215911 -> AgdaAny
du_mint_3350 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_3028
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_215907 (coe v0)))
-- Ledger.Utxo._.refInputs
d_refInputs_3352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_215911 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3352 ~v0 ~v1 v2 = du_refInputs_3352 v2
du_refInputs_3352 ::
  T_GeneralizeTel_215911 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3352 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_3022
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_215907 (coe v0)))
-- Ledger.Utxo._.txNetworkId
d_txNetworkId_3360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_215911 -> Maybe AgdaAny
d_txNetworkId_3360 ~v0 ~v1 v2 = du_txNetworkId_3360 v2
du_txNetworkId_3360 :: T_GeneralizeTel_215911 -> Maybe AgdaAny
du_txNetworkId_3360 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_3046
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_215907 (coe v0)))
-- Ledger.Utxo._.txins
d_txins_3370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_215911 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3370 ~v0 ~v1 v2 = du_txins_3370 v2
du_txins_3370 ::
  T_GeneralizeTel_215911 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3370 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_3020
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_215907 (coe v0)))
-- Ledger.Utxo._.txouts
d_txouts_3372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_215911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3372 ~v0 ~v1 v2 = du_txouts_3372 v2
du_txouts_3372 ::
  T_GeneralizeTel_215911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3372 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_3024
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_215907 (coe v0)))
-- Ledger.Utxo._.txsize
d_txsize_3376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_215911 -> Integer
d_txsize_3376 ~v0 ~v1 v2 = du_txsize_3376 v2
du_txsize_3376 :: T_GeneralizeTel_215911 -> Integer
du_txsize_3376 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_3050
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_215907 (coe v0)))
-- Ledger.Utxo._.txvldt
d_txvldt_3380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_215911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3380 ~v0 ~v1 v2 = du_txvldt_3380 v2
du_txvldt_3380 ::
  T_GeneralizeTel_215911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3380 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_3030
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_215907 (coe v0)))
-- Ledger.Utxo._.txwdrls
d_txwdrls_3384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_215911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3384 ~v0 ~v1 v2 = du_txwdrls_3384 v2
du_txwdrls_3384 ::
  T_GeneralizeTel_215911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3384 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_215907 (coe v0)))
-- Ledger.Utxo.UTXO-premises
d_UTXO'45'premises_3454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_UTxOEnv_2260 ->
  T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3454 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_3020
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v4)))
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
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe d_utxo_2288 (coe v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_3020
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v4)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_3022
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v4)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_3020
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v4)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_3022
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v4))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_2880 (coe v0) (coe d_slot_2268 (coe v2))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_3030
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v4))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (d_minfee_2356
                              (coe v0) (coe v1) (coe d_pparams_2270 (coe v2))
                              (coe d_utxo_2288 (coe v3)) (coe v4))
                           (MAlonzo.Code.Ledger.Transaction.d_txfee_3026
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v4))))
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
                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238
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
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3166
                                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v4))))
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
                                         MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_188
                                         (coe
                                            MAlonzo.Code.Ledger.Address.du_payCred_152
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
                                 (coe
                                    du_collateralRange_3140 (coe v0) (coe v4)
                                    (coe d_utxo_2288 (coe v3))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1280
                                                     (coe v0)))
                                               (coe v5) (coe du_coinPolicies_2986 (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332
                                             (coe v0))
                                          (coe
                                             du_bal_3142 (coe v0) (coe v4)
                                             (coe d_utxo_2288 (coe v3)))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1280
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332
                                                     (coe v0))
                                                  (coe
                                                     du_bal_3142 (coe v0) (coe v4)
                                                     (coe d_utxo_2288 (coe v3))))))
                                       (coe du_coinPolicies_2986 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txfee_3026
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384
                                             (coe d_pparams_2270 (coe v2))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332
                                                (coe v0))
                                             (coe
                                                du_bal_3142 (coe v0) (coe v4)
                                                (coe d_utxo_2288 (coe v3))))
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
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_collateral_3054
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_3180
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
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_210
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0)))
                           (coe
                              du_consumed_3172 (coe v0) (coe d_pparams_2270 (coe v2)) (coe v3)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v4)))
                           (coe
                              du_produced_3180 (coe v0) (coe d_pparams_2270 (coe v2)) (coe v3)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v4))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_3028
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v4))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_3050
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v4)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_336
                                    (coe d_pparams_2270 (coe v2))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (d_refScriptsSize_2350
                                       (coe v0) (coe v1) (coe d_utxo_2288 (coe v3)) (coe v4))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368
                                       (coe d_pparams_2270 (coe v2))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_212
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           du_utxoEntrySize_2256 (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362
                                                        (coe d_pparams_2270 (coe v2)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_3218
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5)))))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_116
                                          (coe
                                             MAlonzo.Code.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_10)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_3208
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_3024
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_3180
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
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1988 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_3218
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_344
                                                     (coe d_pparams_2270 (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_116
                                             (coe
                                                MAlonzo.Code.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_10)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_3208
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_3024
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_3180
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
                                                             (MAlonzo.Code.Ledger.Address.d_attrsSize_92
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
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_3208
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_3024
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_3180
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
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_156
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_3208
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_3024
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_3180
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_100
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_3046
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                            (coe v4)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_3048
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                            (coe v4)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe d_treasury_2272 (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_196873 ::
  T_GeneralizeTel_196885 -> T_UTxOEnv_2260
d_'46'generalizedField'45'Γ_196873 v0
  = case coe v0 of
      C_mkGeneralizeTel_196887 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_196875 ::
  T_GeneralizeTel_196885 -> MAlonzo.Code.Ledger.Transaction.T_Tx_3170
d_'46'generalizedField'45'tx_196875 v0
  = case coe v0 of
      C_mkGeneralizeTel_196887 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_196877 ::
  T_GeneralizeTel_196885 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_196877 v0
  = case coe v0 of
      C_mkGeneralizeTel_196887 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_196879 ::
  T_GeneralizeTel_196885 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_196879 v0
  = case coe v0 of
      C_mkGeneralizeTel_196887 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_196881 ::
  T_GeneralizeTel_196885 -> Integer
d_'46'generalizedField'45'fees_196881 v0
  = case coe v0 of
      C_mkGeneralizeTel_196887 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_196883 ::
  T_GeneralizeTel_196885 -> Integer
d_'46'generalizedField'45'donations_196883 v0
  = case coe v0 of
      C_mkGeneralizeTel_196887 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_196885 a0 a1 = ()
data T_GeneralizeTel_196885
  = C_mkGeneralizeTel_196887 T_UTxOEnv_2260
                             MAlonzo.Code.Ledger.Transaction.T_Tx_3170
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer Integer
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_203733 ::
  T_GeneralizeTel_203745 -> T_UTxOEnv_2260
d_'46'generalizedField'45'Γ_203733 v0
  = case coe v0 of
      C_mkGeneralizeTel_203747 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_203735 ::
  T_GeneralizeTel_203745 -> MAlonzo.Code.Ledger.Transaction.T_Tx_3170
d_'46'generalizedField'45'tx_203735 v0
  = case coe v0 of
      C_mkGeneralizeTel_203747 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_203737 ::
  T_GeneralizeTel_203745 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_203737 v0
  = case coe v0 of
      C_mkGeneralizeTel_203747 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_203739 ::
  T_GeneralizeTel_203745 -> Integer
d_'46'generalizedField'45'fees_203739 v0
  = case coe v0 of
      C_mkGeneralizeTel_203747 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_203741 ::
  T_GeneralizeTel_203745 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_203741 v0
  = case coe v0 of
      C_mkGeneralizeTel_203747 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_203743 ::
  T_GeneralizeTel_203745 -> Integer
d_'46'generalizedField'45'donations_203743 v0
  = case coe v0 of
      C_mkGeneralizeTel_203747 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_203745 a0 a1 = ()
data T_GeneralizeTel_203745
  = C_mkGeneralizeTel_203747 T_UTxOEnv_2260
                             MAlonzo.Code.Ledger.Transaction.T_Tx_3170
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_215903 ::
  T_GeneralizeTel_215911 -> T_UTxOEnv_2260
d_'46'generalizedField'45'Γ_215903 v0
  = case coe v0 of
      C_mkGeneralizeTel_215913 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s
d_'46'generalizedField'45's_215905 ::
  T_GeneralizeTel_215911 -> T_UTxOState_2278
d_'46'generalizedField'45's_215905 v0
  = case coe v0 of
      C_mkGeneralizeTel_215913 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_215907 ::
  T_GeneralizeTel_215911 -> MAlonzo.Code.Ledger.Transaction.T_Tx_3170
d_'46'generalizedField'45'tx_215907 v0
  = case coe v0 of
      C_mkGeneralizeTel_215913 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_215909 ::
  T_GeneralizeTel_215911 -> T_UTxOState_2278
d_'46'generalizedField'45's''_215909 v0
  = case coe v0 of
      C_mkGeneralizeTel_215913 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_215911 a0 a1 = ()
data T_GeneralizeTel_215911
  = C_mkGeneralizeTel_215913 T_UTxOEnv_2260 T_UTxOState_2278
                             MAlonzo.Code.Ledger.Transaction.T_Tx_3170 T_UTxOState_2278
