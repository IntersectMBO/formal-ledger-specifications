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
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0)))
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
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0)))
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
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0)))
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
-- _.MemoryEstimate
d_MemoryEstimate_242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_242 = erased
-- _.NetworkId
d_NetworkId_250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_250 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246 (coe v0))
-- _.PParams
d_PParams_270 a0 = ()
-- _.PParamsOf
d_PParamsOf_274 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_274 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- _.ScriptHash
d_ScriptHash_328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_328 = erased
-- _.Slot
d_Slot_372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_372 = erased
-- _.Tx
d_Tx_400 a0 = ()
-- _.TxBody
d_TxBody_402 a0 = ()
-- _.TxOut
d_TxOut_410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_410 = erased
-- _.TxOutʰ
d_TxOut'688'_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut'688'_412 = erased
-- _.UTxO
d_UTxO_416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_416 = erased
-- _.UTxOOf
d_UTxOOf_418 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2638 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2646 (coe v0)
-- _.Value
d_Value_436 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_436 = erased
-- _.coin
d_coin_462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_462 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
-- _.getValueʰ
d_getValue'688'_504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_504 ~v0 = du_getValue'688'_504
du_getValue'688'_504 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_504
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2880
-- _.inject
d_inject_514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_514 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
-- _.netId
d_netId_556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_556 ~v0 = du_netId_556
du_netId_556 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_556 = coe MAlonzo.Code.Ledger.Address.du_netId_156
-- _.txOutHash
d_txOutHash_616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_616 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2870 (coe v0)
-- _.GovProposal.action
d_action_760 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_762
d_action_760 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_826 (coe v0)
-- _.GovProposal.anchor
d_anchor_762 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_734
d_anchor_762 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_836 (coe v0)
-- _.GovProposal.deposit
d_deposit_764 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 -> Integer
d_deposit_764 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_832 (coe v0)
-- _.GovProposal.policy
d_policy_766 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
  Maybe AgdaAny
d_policy_766 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_830 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_768 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 -> AgdaAny
d_prevAction_768 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_828 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_770 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_770 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_834 (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_818 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_902 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_910 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2638 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_910 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2646 (coe v0)
-- _.PParams.Emax
d_Emax_1022 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_Emax_1022 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_378 (coe v0)
-- _.PParams.a
d_a_1024 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_a_1024 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v0)
-- _.PParams.a0
d_a0_1026 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1026 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_382 (coe v0)
-- _.PParams.b
d_b_1028 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_b_1028 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1030 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMaxTermLength_1030 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1032 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMinSize_1032 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_392 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1034 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_coinsPerUTxOByte_1034 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1036 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_collateralPercentage_1036 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384 (coe v0)
-- _.PParams.costmdls
d_costmdls_1038 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_costmdls_1038 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_386 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1040 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_drepActivity_1040 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_402 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1042 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepDeposit_1042 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_400 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1044 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_1044 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_390 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1046 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionDeposit_1046 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1048 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionLifetime_1048 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_396 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1050 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_keyDeposit_1050 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1052 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxBlockExUnits_1052 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_342 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1054 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxBlockSize_1054 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_334 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1056 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxCollateralInputs_1056 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_346 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1058 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxHeaderSize_1058 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_338 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_1060 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_370 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1062 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_1062 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1064 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxTxExUnits_1064 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_340 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1066 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxTxSize_1066 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_336 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1068 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxValSize_1068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_344 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1070 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1070 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_366
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1072 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_minUTxOValue_1072 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_376 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1074 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1074 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_358 (coe v0)
-- _.PParams.nopt
d_nopt_1076 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_nopt_1076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_380 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1078 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_poolDeposit_1078 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1080 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_1080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_388 (coe v0)
-- _.PParams.prices
d_prices_1082 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_prices_1082 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v0)
-- _.PParams.pv
d_pv_1084 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1084 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_348 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1086 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1086 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_374 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1088 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_refScriptCostStride_1088 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_372 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1090 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1090 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_360 (coe v0)
-- _.Tx.body
d_body_1504 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
d_body_1504 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v0)
-- _.Tx.isValid
d_isValid_1506 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> Bool
d_isValid_1506 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2858 (coe v0)
-- _.Tx.txAD
d_txAD_1508 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> Maybe AgdaAny
d_txAD_1508 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2860 (coe v0)
-- _.Tx.wits
d_wits_1510 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2824
d_wits_1510 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v0)
-- _.TxBody.collateral
d_collateral_1514 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1514 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2728 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1516 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Maybe Integer
d_curTreasury_1516 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2722 (coe v0)
-- _.TxBody.mint
d_mint_1518 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> AgdaAny
d_mint_1518 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2702 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1520 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1520 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2696 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> [AgdaAny]
d_reqSigHash_1522 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2730 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1524 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Maybe AgdaAny
d_scriptIntHash_1524 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2732 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1526 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Maybe AgdaAny
d_txADhash_1526 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2718 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1528 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Maybe AgdaAny
d_txNetworkId_1528 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2720 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1530 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_982]
d_txcerts_1530 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2706 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1532 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
d_txdonation_1532 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2714 (coe v0)
-- _.TxBody.txfee
d_txfee_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
d_txfee_1534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2700 (coe v0)
-- _.TxBody.txid
d_txid_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> AgdaAny
d_txid_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2726 (coe v0)
-- _.TxBody.txins
d_txins_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1538 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2694 (coe v0)
-- _.TxBody.txouts
d_txouts_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2698 (coe v0)
-- _.TxBody.txprop
d_txprop_1542 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812]
d_txprop_1542 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2712 (coe v0)
-- _.TxBody.txsize
d_txsize_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
d_txsize_1544 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2724 (coe v0)
-- _.TxBody.txup
d_txup_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1546 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2716 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1548 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1548 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2704 (coe v0)
-- _.TxBody.txvote
d_txvote_1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_794]
d_txvote_1550 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2710 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1552 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2708 (coe v0)
-- Ledger.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1638 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2574
      (coe v0) (coe v1)
-- Ledger.Utxo._.evalScripts
d_evalScripts_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1648 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2592 (coe v0)
      (coe v1)
-- Ledger.Utxo._.DCert
d_DCert_1756 a0 a1 = ()
-- Ledger.Utxo._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1774 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1774 v0 ~v1
  = du_DecEq'45'DepositPurpose_1774 v0
du_DecEq'45'DepositPurpose_1774 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1774 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0))
-- Ledger.Utxo._.DepositPurpose
d_DepositPurpose_1778 a0 a1 = ()
-- Ledger.Utxo._.Deposits
d_Deposits_1780 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 -> ()
d_Deposits_1780 = erased
-- Ledger.Utxo._.DepositsOf
d_DepositsOf_1782 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_908 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1782 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_916 (coe v0)
-- Ledger.Utxo._.HasDeposits
d_HasDeposits_1824 a0 a1 a2 a3 = ()
-- Ledger.Utxo._.HasDeposits.DepositsOf
d_DepositsOf_2002 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_908 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2002 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_916 (coe v0)
-- Ledger.Utxo.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isTwoPhaseScriptAddress_2036 = erased
-- Ledger.Utxo.isTwoPhaseScriptAddress?
d_isTwoPhaseScriptAddress'63'_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'63'_2054 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress'63'_2054 v0 v2 v3 v4
du_isTwoPhaseScriptAddress'63'_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'63'_2054 v0 v1 v2 v3
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
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1270
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
                                                  MAlonzo.Code.Ledger.Transaction.du_m_2978 (coe v0)
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
                                                                    MAlonzo.Code.Ledger.Transaction.du_m_2978
                                                                    (coe v0) (coe v1) (coe v2))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Address.du_getScriptHash_228
                                                                    (coe v3) (coe v7))
                                                                 (coe v11) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2984
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
                                                                        MAlonzo.Code.Ledger.Transaction.du_m_2978
                                                                        (coe v0) (coe v1) (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Address.du_getScriptHash_228
                                                                        (coe v3) (coe v7))
                                                                     (coe v12) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2984
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
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1270
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
                                                      MAlonzo.Code.Ledger.Transaction.du_m_2978
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
                                                                        MAlonzo.Code.Ledger.Transaction.du_m_2978
                                                                        (coe v0) (coe v1) (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Address.du_getScriptHash_228
                                                                        (coe v3) (coe v8))
                                                                     (coe v12) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2984
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
                                                                            MAlonzo.Code.Ledger.Transaction.du_m_2978
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
                                                                       MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2984
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
d_isTwoPhaseScriptAddress'8242'_2108 a0 a1 a2 a3 a4 = ()
newtype T_isTwoPhaseScriptAddress'8242'_2108 = C_wrap_2120 AgdaAny
-- Ledger.Utxo.isTwoPhaseScriptAddress′.unwrap
d_unwrap_2118 :: T_isTwoPhaseScriptAddress'8242'_2108 -> AgdaAny
d_unwrap_2118 v0
  = case coe v0 of
      C_wrap_2120 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.isTwoPhaseScriptAddress′?
d_isTwoPhaseScriptAddress'8242''63'_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'8242''63'_2128 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress'8242''63'_2128 v0 v2 v3 v4
du_isTwoPhaseScriptAddress'8242''63'_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'8242''63'_2128 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe C_wrap_2120) (coe (\ v4 -> d_unwrap_2118 (coe v4)))
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
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1270
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
                                                     MAlonzo.Code.Ledger.Transaction.du_m_2978
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
                                                                       MAlonzo.Code.Ledger.Transaction.du_m_2978
                                                                       (coe v0) (coe v1) (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_getScriptHash_228
                                                                       (coe v3) (coe v7))
                                                                    (coe v11) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2984
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
                                                                           MAlonzo.Code.Ledger.Transaction.du_m_2978
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
                                                                      MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2984
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
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1270
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
                                                         MAlonzo.Code.Ledger.Transaction.du_m_2978
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
                                                                           MAlonzo.Code.Ledger.Transaction.du_m_2978
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
                                                                      MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2984
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
                                                                               MAlonzo.Code.Ledger.Transaction.du_m_2978
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
                                                                          MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2984
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
d_getDataHashes_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2140 ~v0 ~v1 v2 = du_getDataHashes_2140 v2
du_getDataHashes_2140 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2140 v0
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
d_getInputHashes_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2144 v0 ~v1 v2 v3
  = du_getInputHashes_2144 v0 v2 v3
du_getInputHashes_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2144 v0 v1 v2
  = coe
      du_getDataHashes_2140
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
         (\ v3 ->
            coe
              du_isTwoPhaseScriptAddress'8242''63'_2128 (coe v0) (coe v1)
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2694
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v1))))))
-- Ledger.Utxo.totExUnits
d_totExUnits_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> AgdaAny
d_totExUnits_2200 v0 ~v1 v2 = du_totExUnits_2200 v0 v2
du_totExUnits_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> AgdaAny
du_totExUnits_2200 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0)))
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
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_448
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856 (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2840
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v1)))
-- Ledger.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2212 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 -> Integer
d_utxoEntrySizeWithoutVal_2212 ~v0
  = du_utxoEntrySizeWithoutVal_2212
du_utxoEntrySizeWithoutVal_2212 :: Integer
du_utxoEntrySizeWithoutVal_2212 = coe (8 :: Integer)
-- Ledger.Utxo.utxoEntrySize
d_utxoEntrySize_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2214 v0 ~v1 v2 = du_utxoEntrySize_2214 v0 v2
du_utxoEntrySize_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2214 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2880 (coe v1)))
-- Ledger.Utxo.UTxOEnv
d_UTxOEnv_2218 a0 a1 = ()
data T_UTxOEnv_2218
  = C_UTxOEnv'46'constructor_17437 AgdaAny
                                   MAlonzo.Code.Ledger.PParams.T_PParams_262 Integer
-- Ledger.Utxo.UTxOEnv.slot
d_slot_2226 :: T_UTxOEnv_2218 -> AgdaAny
d_slot_2226 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_17437 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.pparams
d_pparams_2228 ::
  T_UTxOEnv_2218 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2228 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_17437 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.treasury
d_treasury_2230 :: T_UTxOEnv_2218 -> Integer
d_treasury_2230 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_17437 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
d_HasPParams'45'UTxOEnv_2232 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2232
du_HasPParams'45'UTxOEnv_2232 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
du_HasPParams'45'UTxOEnv_2232
  = coe
      MAlonzo.Code.Ledger.PParams.C_HasPParams'46'constructor_9199
      (coe (\ v0 -> d_pparams_2228 (coe v0)))
-- Ledger.Utxo.UTxOState
d_UTxOState_2234 a0 a1 = ()
data T_UTxOState_2234
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_2252 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Utxo.UTxOState.utxo
d_utxo_2244 ::
  T_UTxOState_2234 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2244 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2252 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.fees
d_fees_2246 :: T_UTxOState_2234 -> Integer
d_fees_2246 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2252 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.deposits
d_deposits_2248 ::
  T_UTxOState_2234 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2248 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2252 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.donations
d_donations_2250 :: T_UTxOState_2234 -> Integer
d_donations_2250 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2252 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.HasUTxOState
d_HasUTxOState_2258 a0 a1 a2 a3 = ()
newtype T_HasUTxOState_2258
  = C_HasUTxOState'46'constructor_17803 (AgdaAny -> T_UTxOState_2234)
-- Ledger.Utxo.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2266 ::
  T_HasUTxOState_2258 -> AgdaAny -> T_UTxOState_2234
d_UTxOStateOf_2266 v0
  = case coe v0 of
      C_HasUTxOState'46'constructor_17803 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._.UTxOStateOf
d_UTxOStateOf_2270 ::
  T_HasUTxOState_2258 -> AgdaAny -> T_UTxOState_2234
d_UTxOStateOf_2270 v0 = coe d_UTxOStateOf_2266 (coe v0)
-- Ledger.Utxo.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_908
d_HasDeposits'45'UTxOState_2272 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2272
du_HasDeposits'45'UTxOState_2272 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_908
du_HasDeposits'45'UTxOState_2272
  = coe
      MAlonzo.Code.Ledger.Certs.C_HasDeposits'46'constructor_2919
      (coe (\ v0 -> d_deposits_2248 (coe v0)))
-- Ledger.Utxo.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2638
d_HasUTxO'45'UTxOState_2274 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2274
du_HasUTxO'45'UTxOState_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2638
du_HasUTxO'45'UTxOState_2274
  = coe
      MAlonzo.Code.Ledger.Transaction.C_HasUTxO'46'constructor_17489
      (coe (\ v0 -> d_utxo_2244 (coe v0)))
-- Ledger.Utxo.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'UTxOEnv_2276 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2276
du_HasCast'45'UTxOEnv_2276 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'UTxOEnv_2276
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
                                 (2218 :: Integer) (5998337070880856472 :: Integer)
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
                                 (372 :: Integer) (5998337070880856472 :: Integer) "_.Slot"
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
                                    (2218 :: Integer) (5998337070880856472 :: Integer)
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
                                    (270 :: Integer) (5998337070880856472 :: Integer) "_.PParams"
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
                                       (2218 :: Integer) (5998337070880856472 :: Integer)
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
         (coe C_UTxOEnv'46'constructor_17437))
-- Ledger.Utxo.HasCast-UTxOState
d_HasCast'45'UTxOState_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'UTxOState_2278 ~v0 ~v1 = du_HasCast'45'UTxOState_2278
du_HasCast'45'UTxOState_2278 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'UTxOState_2278
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
                                 (2234 :: Integer) (5998337070880856472 :: Integer)
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
                                 (416 :: Integer) (5998337070880856472 :: Integer) "_.UTxO"
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
                                    (2234 :: Integer) (5998337070880856472 :: Integer)
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
                                       (2234 :: Integer) (5998337070880856472 :: Integer)
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
                                       (1780 :: Integer) (5998337070880856472 :: Integer)
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
                                          (2234 :: Integer) (5998337070880856472 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'44'_'10215''7512'_2252))
-- Ledger.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2280 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2280
  = C_UTXO'45'inductive_3366 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._._.outs
d_outs_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2290 ~v0 ~v1 v2 = du_outs_2290 v2
du_outs_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2290 v0
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
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2726 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2698 (coe v0))
-- Ledger.Utxo._._.balance
d_balance_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2296 v0 ~v1 v2 = du_balance_2296 v0 v2
du_balance_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2296 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_188
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_234
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_236
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_210
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0)))
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
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
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
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0)))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2880)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2870 (coe v0))
         (coe v1))
-- Ledger.Utxo._._.cbalance
d_cbalance_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2302 v0 ~v1 v2 = du_cbalance_2302 v0 v2
du_cbalance_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2302 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
      (coe du_balance_2296 (coe v0) (coe v1))
-- Ledger.Utxo._._.refScriptsSize
d_refScriptsSize_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> Integer
d_refScriptsSize_2306 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Base.d_sum_280
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (MAlonzo.Code.Ledger.Abstract.d_scriptSize_1952 (coe v1))
         (MAlonzo.Code.Ledger.Transaction.d_refScripts_2904
            (coe v0) (coe v3) (coe v2)))
-- Ledger.Utxo._._.minfee
d_minfee_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> Integer
d_minfee_2312 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1944 v1
               (MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v2))
               (coe du_totExUnits_2200 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Fees.d_scriptsCost_1606 (coe v0) (coe v2)
               (coe d_refScriptsSize_2306 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v2)))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_2724
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v4))))
-- Ledger.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2320 v0 ~v1 = du_HasCoin'45'UTxO_2320 v0
du_HasCoin'45'UTxO_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2320 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_2302 (coe v0))
-- Ledger.Utxo.certDeposit
d_certDeposit_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_982 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2322 ~v0 ~v1 v2 v3 = du_certDeposit_2322 v2 v3
du_certDeposit_2322 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_982 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2322 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_984 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_890 (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Certs.C_regpool_988 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_892 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v1)))
         MAlonzo.Code.Ledger.Certs.C_regdrep_992 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_894 (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Certs.C_reg_998 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_890 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v1)))
         _ -> coe v2)
-- Ledger.Utxo.certRefund
d_certRefund_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_982 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_888]
d_certRefund_2340 ~v0 ~v1 v2 = du_certRefund_2340 v2
du_certRefund_2340 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_982 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_888]
du_certRefund_2340 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_442
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_986 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_890 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_994 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_894 (coe v2))
         _ -> coe v1)
-- Ledger.Utxo.ValidCertDeposits
d_ValidCertDeposits_2350 a0 a1 a2 a3 a4 = ()
data T_ValidCertDeposits_2350
  = C_'91''93'_2356 | C_delegate_2368 T_ValidCertDeposits_2350 |
    C_regpool_2376 T_ValidCertDeposits_2350 |
    C_regdrep_2386 T_ValidCertDeposits_2350 |
    C_reg_2394 T_ValidCertDeposits_2350 |
    C_dereg_2404 Integer
                 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_ValidCertDeposits_2350 |
    C_deregdrep_2412 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                     T_ValidCertDeposits_2350 |
    C_ccreghot_2420 T_ValidCertDeposits_2350 |
    C_retirepool_2428 T_ValidCertDeposits_2350
-- Ledger.Utxo.validCertDeposits?
d_validCertDeposits'63'_2436 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_982] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCertDeposits'63'_2436 v0 ~v1 v2 v3 v4
  = du_validCertDeposits'63'_2436 v0 v2 v3 v4
du_validCertDeposits'63'_2436 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_982] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCertDeposits'63'_2436 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe C_'91''93'_2356))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Certs.C_delegate_984 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_delegate_2368)
                    (coe
                       (\ v10 ->
                          case coe v10 of
                            C_delegate_2368 v16 -> coe v16
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2436 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_890 (coe v6))
                                (coe v9))))
                       (coe v5))
             MAlonzo.Code.Ledger.Certs.C_dereg_986 v6 v7
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
                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
                                               (coe v0)))
                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_890
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
                                                      C_dereg_2404 v8 v12
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                         erased))
                                                   (coe
                                                      (\ v13 ->
                                                         case coe v13 of
                                                           C_dereg_2404 v16 v18 v19 v20 -> coe v20
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2436 (coe v0)
                                                      (coe v1)
                                                      (let v13
                                                             = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
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
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_890
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
                                         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_890 (coe v6))
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
                                                      C_dereg_2404
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
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_890
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
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_890
                                                                  (coe v6)))
                                                            v11))
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                         erased))
                                                   (coe
                                                      (\ v12 ->
                                                         case coe v12 of
                                                           C_dereg_2404 v15 v17 v18 v19 -> coe v19
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2436 (coe v0)
                                                      (coe v1)
                                                      (let v12
                                                             = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
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
                                                                  MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_890
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
             MAlonzo.Code.Ledger.Certs.C_regpool_988 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regpool_2376)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_regpool_2376 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2436 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_892 (coe v6))
                                (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v1)))))
                       (coe v5))
             MAlonzo.Code.Ledger.Certs.C_retirepool_990 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_retirepool_2428)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_retirepool_2428 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2436 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Certs.C_regdrep_992 v6 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regdrep_2386)
                    (coe
                       (\ v9 ->
                          case coe v9 of
                            C_regdrep_2386 v14 -> coe v14
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2436 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_894 (coe v6))
                                (coe v7))))
                       (coe v5))
             MAlonzo.Code.Ledger.Certs.C_deregdrep_994 v6 v7
               -> let v8
                        = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                            (coe
                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe
                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                  (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                                     (coe
                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
                                        (coe v0)))
                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_894 (coe v6))
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
                                            (coe C_deregdrep_2412 v11)
                                            (coe
                                               (\ v12 ->
                                                  case coe v12 of
                                                    C_deregdrep_2412 v16 v17 -> coe v17
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               du_validCertDeposits'63'_2436 (coe v0) (coe v1)
                                               (let v12
                                                      = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
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
                                                           MAlonzo.Code.Ledger.Certs.C_DRepDeposit_894
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
             MAlonzo.Code.Ledger.Certs.C_ccreghot_996 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_ccreghot_2420)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_ccreghot_2420 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2436 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Certs.C_reg_998 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_reg_2394)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_reg_2394 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2436 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_890 (coe v6))
                                (coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v1)))))
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_2608 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_982] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_2608 v0 ~v1 v2 v3 v4
  = du_Dec'45'ValidCertDeposits_2608 v0 v2 v3 v4
du_Dec'45'ValidCertDeposits_2608 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_982] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_2608 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         du_validCertDeposits'63'_2436 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Utxo.updateCertDeposits
d_updateCertDeposits_2610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_982] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2610 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_2610 v0 v2 v3 v4
du_updateCertDeposits_2610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_982] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2610 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> let v6
                 = coe
                     du_updateCertDeposits_2610 (coe v0) (coe v1) (coe v5) (coe v3) in
           coe
             (case coe v4 of
                MAlonzo.Code.Ledger.Certs.C_delegate_984 v7 v8 v9 v10
                  -> coe
                       du_updateCertDeposits_2610 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0)))
                          v3 (coe du_certDeposit_2322 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Certs.C_dereg_986 v7 v8
                  -> coe
                       du_updateCertDeposits_2610 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0))))
                          (coe v3) (coe du_certRefund_2340 (coe v4)))
                MAlonzo.Code.Ledger.Certs.C_regpool_988 v7 v8
                  -> coe
                       du_updateCertDeposits_2610 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0)))
                          v3 (coe du_certDeposit_2322 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Certs.C_regdrep_992 v7 v8 v9
                  -> coe
                       du_updateCertDeposits_2610 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0)))
                          v3 (coe du_certDeposit_2322 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Certs.C_deregdrep_994 v7 v8
                  -> coe
                       du_updateCertDeposits_2610 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0))))
                          (coe v3) (coe du_certRefund_2340 (coe v4)))
                MAlonzo.Code.Ledger.Certs.C_reg_998 v7 v8
                  -> coe
                       du_updateCertDeposits_2610 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0)))
                          v3 (coe du_certDeposit_2322 (coe v4) (coe v1)))
                _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateProposalDeposits
d_updateProposalDeposits_2688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2688 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_2688 v0 v2 v3 v4 v5
du_updateProposalDeposits_2688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2688 v0 v1 v2 v3 v4
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
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0)))
             (coe
                du_updateProposalDeposits_2688 (coe v0) (coe v6) (coe v2) (coe v3)
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
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_896
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_284 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateDeposits
d_updateDeposits_2700 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2700 v0 ~v1 v2 v3 v4
  = du_updateDeposits_2700 v0 v2 v3 v4
du_updateDeposits_2700 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2700 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_2610 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2706 (coe v2))
      (coe
         du_updateProposalDeposits_2688 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2712 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2726 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v1))
         (coe v3))
-- Ledger.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_2752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2752 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_2752 v0 v2 v3 v4
du_proposalDepositsΔ_2752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2752 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_2688 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txid_2726 (coe v3))
      (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Utxo.depositsChange
d_depositsChange_2806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2806 v0 ~v1 v2 v3 v4
  = du_depositsChange_2806 v0 v2 v3 v4
du_depositsChange_2806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2806 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_2700 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Utxo.inInterval
d_inInterval_2816 a0 a1 a2 a3 = ()
data T_inInterval_2816
  = C_both_2824 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2828 AgdaAny | C_upper_2832 AgdaAny | C_none_2834
-- Ledger.Utxo.Dec-inInterval
d_Dec'45'inInterval_2836 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2836 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2836 v0 v2 v3
du_Dec'45'inInterval_2836 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2836 v0 v1 v2
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1574
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_266
                                            (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1574
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
                                                                                    C_both_2824
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1574
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
                                                         (coe C_lower_2828 v9))
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1574
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
                                                         (coe C_upper_2832 v9))
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
                                 (coe C_none_2834))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2938 v0 ~v1
  = du_HasCoin'45'UTxOState_2938 v0
du_HasCoin'45'UTxOState_2938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2938 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2302 (coe v0) (coe d_utxo_2244 (coe v1)))
                    (coe d_donations_2250 (coe v1)))
                 (coe d_fees_2246 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                 (coe
                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_958
                    (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2422 (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                 (coe (\ v2 -> v2)) (coe d_deposits_2248 (coe v1)))))
-- Ledger.Utxo.coinPolicies
d_coinPolicies_2942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 -> [AgdaAny]
d_coinPolicies_2942 v0 ~v1 = du_coinPolicies_2942 v0
du_coinPolicies_2942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_2942 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
         (1 :: Integer))
-- Ledger.Utxo.isAdaOnly
d_isAdaOnly_2944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  AgdaAny -> ()
d_isAdaOnly_2944 = erased
-- Ledger.Utxo.feesOK
d_feesOK_2948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_2948 = erased
-- Ledger.Utxo._.collateralRange
d_collateralRange_3096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_3096 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_3096 v0 v3 v4
du_collateralRange_3096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_3096 v0 v1 v2
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2870 (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2728
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v1))))
-- Ledger.Utxo._.bal
d_bal_3098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_3098 v0 ~v1 ~v2 v3 v4 = du_bal_3098 v0 v3 v4
du_bal_3098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_3098 v0 v1 v2
  = coe
      du_balance_2296 (coe v0)
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2728
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v1))))
-- Ledger.Utxo._._.depositRefunds
d_depositRefunds_3112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
d_depositRefunds_3112 v0 ~v1 v2 v3 v4
  = du_depositRefunds_3112 v0 v2 v3 v4
du_depositRefunds_3112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
du_depositRefunds_3112 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_negPart_70
      (coe
         du_depositsChange_2806 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2248 (coe v2)))
-- Ledger.Utxo._._.newDeposits
d_newDeposits_3120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
d_newDeposits_3120 v0 ~v1 v2 v3 v4
  = du_newDeposits_3120 v0 v2 v3 v4
du_newDeposits_3120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
du_newDeposits_3120 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_posPart_58
      (coe
         du_depositsChange_2806 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2248 (coe v2)))
-- Ledger.Utxo._._.consumed
d_consumed_3128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> AgdaAny
d_consumed_3128 v0 ~v1 v2 v3 v4 = du_consumed_3128 v0 v2 v3 v4
du_consumed_3128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> AgdaAny
du_consumed_3128 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))))
            (coe
               du_balance_2296 (coe v0)
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
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230 (coe v0))
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0))))
                  (coe d_utxo_2244 (coe v2))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txins_2694 (coe v3))))
            (MAlonzo.Code.Ledger.Transaction.d_mint_2702 (coe v3)))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
            (coe du_depositRefunds_3112 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_238
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
            (coe (\ v4 -> v4))
            (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2708 (coe v3))))
-- Ledger.Utxo._._.produced
d_produced_3136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> AgdaAny
d_produced_3136 v0 ~v1 v2 v3 v4 = du_produced_3136 v0 v2 v3 v4
du_produced_3136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> AgdaAny
du_produced_3136 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))))
            (coe du_balance_2296 (coe v0) (coe du_outs_2290 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_2700 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
            (coe du_newDeposits_3120 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2714 (coe v3)))
-- Ledger.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__3160 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__3160
  = C_Scripts'45'Yes_3218 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_3276 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._.isValid
d_isValid_3166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_196295 -> Bool
d_isValid_3166 ~v0 ~v1 v2 = du_isValid_3166 v2
du_isValid_3166 :: T_GeneralizeTel_196295 -> Bool
du_isValid_3166 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_isValid_2858
      (coe d_'46'generalizedField'45'tx_196285 (coe v0))
-- Ledger.Utxo._.body
d_body_3170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_196295 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
d_body_3170 ~v0 ~v1 v2 = du_body_3170 v2
du_body_3170 ::
  T_GeneralizeTel_196295 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
du_body_3170 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2854
      (coe d_'46'generalizedField'45'tx_196285 (coe v0))
-- Ledger.Utxo._.txcerts
d_txcerts_3192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_196295 -> [MAlonzo.Code.Ledger.Certs.T_DCert_982]
d_txcerts_3192 ~v0 ~v1 v2 = du_txcerts_3192 v2
du_txcerts_3192 ::
  T_GeneralizeTel_196295 -> [MAlonzo.Code.Ledger.Certs.T_DCert_982]
du_txcerts_3192 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2706
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_196285 (coe v0)))
-- Ledger.Utxo._.txdonation
d_txdonation_3194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_196295 -> Integer
d_txdonation_3194 ~v0 ~v1 v2 = du_txdonation_3194 v2
du_txdonation_3194 :: T_GeneralizeTel_196295 -> Integer
du_txdonation_3194 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2714
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_196285 (coe v0)))
-- Ledger.Utxo._.txfee
d_txfee_3196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_196295 -> Integer
d_txfee_3196 ~v0 ~v1 v2 = du_txfee_3196 v2
du_txfee_3196 :: T_GeneralizeTel_196295 -> Integer
du_txfee_3196 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2700
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_196285 (coe v0)))
-- Ledger.Utxo._.txins
d_txins_3200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_196295 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3200 ~v0 ~v1 v2 = du_txins_3200 v2
du_txins_3200 ::
  T_GeneralizeTel_196295 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3200 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2694
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_196285 (coe v0)))
-- Ledger.Utxo._.isValid
d_isValid_3224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_203155 -> Bool
d_isValid_3224 ~v0 ~v1 v2 = du_isValid_3224 v2
du_isValid_3224 :: T_GeneralizeTel_203155 -> Bool
du_isValid_3224 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_isValid_2858
      (coe d_'46'generalizedField'45'tx_203145 (coe v0))
-- Ledger.Utxo._.body
d_body_3228 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_203155 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
d_body_3228 ~v0 ~v1 v2 = du_body_3228 v2
du_body_3228 ::
  T_GeneralizeTel_203155 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
du_body_3228 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2854
      (coe d_'46'generalizedField'45'tx_203145 (coe v0))
-- Ledger.Utxo._.collateral
d_collateral_3234 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_203155 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3234 ~v0 ~v1 v2 = du_collateral_3234 v2
du_collateral_3234 ::
  T_GeneralizeTel_203155 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_3234 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2728
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_203145 (coe v0)))
-- Ledger.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_3278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_3278 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            du_Dec'45'ValidCertDeposits_2608 (coe v0)
            (coe d_pparams_2228 (coe v2)) (coe v5)
            (coe
               MAlonzo.Code.Ledger.Transaction.d_txcerts_2706
               (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v3))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2592 (coe v0)
                  (coe v1) (coe v3)
                  (coe
                     MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2574
                     (coe v0) (coe v1) (coe d_pparams_2228 (coe v2)) (coe v3) (coe v4)))
               (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2858 (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2858 (coe v3))
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
-- Ledger.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_3280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_3280 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2592 (coe v0)
               (coe v1) (coe v3)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2574
                  (coe v0) (coe v1) (coe d_pparams_2228 (coe v2)) (coe v3) (coe v4)))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2858 (coe v3)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2858 (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Utxo._.body
d_body_3296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_215321 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
d_body_3296 ~v0 ~v1 v2 = du_body_3296 v2
du_body_3296 ::
  T_GeneralizeTel_215321 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
du_body_3296 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2854
      (coe d_'46'generalizedField'45'tx_215317 (coe v0))
-- Ledger.Utxo._.curTreasury
d_curTreasury_3304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_215321 -> Maybe Integer
d_curTreasury_3304 ~v0 ~v1 v2 = du_curTreasury_3304 v2
du_curTreasury_3304 :: T_GeneralizeTel_215321 -> Maybe Integer
du_curTreasury_3304 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2722
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_215317 (coe v0)))
-- Ledger.Utxo._.mint
d_mint_3306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_215321 -> AgdaAny
d_mint_3306 ~v0 ~v1 v2 = du_mint_3306 v2
du_mint_3306 :: T_GeneralizeTel_215321 -> AgdaAny
du_mint_3306 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2702
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_215317 (coe v0)))
-- Ledger.Utxo._.refInputs
d_refInputs_3308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_215321 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3308 ~v0 ~v1 v2 = du_refInputs_3308 v2
du_refInputs_3308 ::
  T_GeneralizeTel_215321 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3308 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2696
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_215317 (coe v0)))
-- Ledger.Utxo._.txNetworkId
d_txNetworkId_3316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_215321 -> Maybe AgdaAny
d_txNetworkId_3316 ~v0 ~v1 v2 = du_txNetworkId_3316 v2
du_txNetworkId_3316 :: T_GeneralizeTel_215321 -> Maybe AgdaAny
du_txNetworkId_3316 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2720
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_215317 (coe v0)))
-- Ledger.Utxo._.txins
d_txins_3326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_215321 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3326 ~v0 ~v1 v2 = du_txins_3326 v2
du_txins_3326 ::
  T_GeneralizeTel_215321 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3326 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2694
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_215317 (coe v0)))
-- Ledger.Utxo._.txouts
d_txouts_3328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_215321 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3328 ~v0 ~v1 v2 = du_txouts_3328 v2
du_txouts_3328 ::
  T_GeneralizeTel_215321 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3328 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2698
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_215317 (coe v0)))
-- Ledger.Utxo._.txsize
d_txsize_3332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_215321 -> Integer
d_txsize_3332 ~v0 ~v1 v2 = du_txsize_3332 v2
du_txsize_3332 :: T_GeneralizeTel_215321 -> Integer
du_txsize_3332 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2724
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_215317 (coe v0)))
-- Ledger.Utxo._.txvldt
d_txvldt_3336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_215321 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3336 ~v0 ~v1 v2 = du_txvldt_3336 v2
du_txvldt_3336 ::
  T_GeneralizeTel_215321 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3336 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2704
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_215317 (coe v0)))
-- Ledger.Utxo._.txwdrls
d_txwdrls_3340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_215321 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3340 ~v0 ~v1 v2 = du_txwdrls_3340 v2
du_txwdrls_3340 ::
  T_GeneralizeTel_215321 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3340 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2708
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_215317 (coe v0)))
-- Ledger.Utxo.UTXO-premises
d_UTXO'45'premises_3410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_UTxOEnv_2218 ->
  T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3410 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2694
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v4)))
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
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe d_utxo_2244 (coe v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2694
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v4)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2696
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v4)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2694
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v4)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2696
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v4))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_2836 (coe v0) (coe d_slot_2226 (coe v2))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2704
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v4))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (d_minfee_2312
                              (coe v0) (coe v1) (coe d_pparams_2228 (coe v2))
                              (coe d_utxo_2244 (coe v3)) (coe v4))
                           (MAlonzo.Code.Ledger.Transaction.d_txfee_2700
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v4))))
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
                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228
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
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2840
                                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v4))))
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
                                    du_collateralRange_3096 (coe v0) (coe v4)
                                    (coe d_utxo_2244 (coe v3))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                     (coe v0)))
                                               (coe v5) (coe du_coinPolicies_2942 (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312
                                             (coe v0))
                                          (coe
                                             du_bal_3098 (coe v0) (coe v4)
                                             (coe d_utxo_2244 (coe v3)))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312
                                                     (coe v0))
                                                  (coe
                                                     du_bal_3098 (coe v0) (coe v4)
                                                     (coe d_utxo_2244 (coe v3))))))
                                       (coe du_coinPolicies_2942 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txfee_2700
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2854
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384
                                             (coe d_pparams_2228 (coe v2))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312
                                                (coe v0))
                                             (coe
                                                du_bal_3098 (coe v0) (coe v4)
                                                (coe d_utxo_2244 (coe v3))))
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
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_collateral_2728
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2854
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
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0)))
                           (coe
                              du_consumed_3128 (coe v0) (coe d_pparams_2228 (coe v2)) (coe v3)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v4)))
                           (coe
                              du_produced_3136 (coe v0) (coe d_pparams_2228 (coe v2)) (coe v3)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v4))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2702
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v4))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2724
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v4)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_336
                                    (coe d_pparams_2228 (coe v2))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (d_refScriptsSize_2306
                                       (coe v0) (coe v1) (coe d_utxo_2244 (coe v3)) (coe v4))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368
                                       (coe d_pparams_2228 (coe v2))))
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
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           du_utxoEntrySize_2214 (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362
                                                        (coe d_pparams_2228 (coe v2)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2880
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
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2870
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2698
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2854
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
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1946 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2880
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_344
                                                     (coe d_pparams_2228 (coe v2)))))
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
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2870
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2698
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2854
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
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2870
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2698
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2854
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
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_156
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2870
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2698
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2854
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_100
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2708
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2854
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2720
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2854
                                                            (coe v4)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2722
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2854
                                                            (coe v4)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe d_treasury_2230 (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_196283 ::
  T_GeneralizeTel_196295 -> T_UTxOEnv_2218
d_'46'generalizedField'45'Γ_196283 v0
  = case coe v0 of
      C_mkGeneralizeTel_196297 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_196285 ::
  T_GeneralizeTel_196295 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2844
d_'46'generalizedField'45'tx_196285 v0
  = case coe v0 of
      C_mkGeneralizeTel_196297 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_196287 ::
  T_GeneralizeTel_196295 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_196287 v0
  = case coe v0 of
      C_mkGeneralizeTel_196297 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_196289 ::
  T_GeneralizeTel_196295 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_196289 v0
  = case coe v0 of
      C_mkGeneralizeTel_196297 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_196291 ::
  T_GeneralizeTel_196295 -> Integer
d_'46'generalizedField'45'fees_196291 v0
  = case coe v0 of
      C_mkGeneralizeTel_196297 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_196293 ::
  T_GeneralizeTel_196295 -> Integer
d_'46'generalizedField'45'donations_196293 v0
  = case coe v0 of
      C_mkGeneralizeTel_196297 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_196295 a0 a1 = ()
data T_GeneralizeTel_196295
  = C_mkGeneralizeTel_196297 T_UTxOEnv_2218
                             MAlonzo.Code.Ledger.Transaction.T_Tx_2844
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer Integer
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_203143 ::
  T_GeneralizeTel_203155 -> T_UTxOEnv_2218
d_'46'generalizedField'45'Γ_203143 v0
  = case coe v0 of
      C_mkGeneralizeTel_203157 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_203145 ::
  T_GeneralizeTel_203155 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2844
d_'46'generalizedField'45'tx_203145 v0
  = case coe v0 of
      C_mkGeneralizeTel_203157 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_203147 ::
  T_GeneralizeTel_203155 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_203147 v0
  = case coe v0 of
      C_mkGeneralizeTel_203157 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_203149 ::
  T_GeneralizeTel_203155 -> Integer
d_'46'generalizedField'45'fees_203149 v0
  = case coe v0 of
      C_mkGeneralizeTel_203157 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_203151 ::
  T_GeneralizeTel_203155 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_203151 v0
  = case coe v0 of
      C_mkGeneralizeTel_203157 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_203153 ::
  T_GeneralizeTel_203155 -> Integer
d_'46'generalizedField'45'donations_203153 v0
  = case coe v0 of
      C_mkGeneralizeTel_203157 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_203155 a0 a1 = ()
data T_GeneralizeTel_203155
  = C_mkGeneralizeTel_203157 T_UTxOEnv_2218
                             MAlonzo.Code.Ledger.Transaction.T_Tx_2844
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_215313 ::
  T_GeneralizeTel_215321 -> T_UTxOEnv_2218
d_'46'generalizedField'45'Γ_215313 v0
  = case coe v0 of
      C_mkGeneralizeTel_215323 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s
d_'46'generalizedField'45's_215315 ::
  T_GeneralizeTel_215321 -> T_UTxOState_2234
d_'46'generalizedField'45's_215315 v0
  = case coe v0 of
      C_mkGeneralizeTel_215323 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_215317 ::
  T_GeneralizeTel_215321 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2844
d_'46'generalizedField'45'tx_215317 v0
  = case coe v0 of
      C_mkGeneralizeTel_215323 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_215319 ::
  T_GeneralizeTel_215321 -> T_UTxOState_2234
d_'46'generalizedField'45's''_215319 v0
  = case coe v0 of
      C_mkGeneralizeTel_215323 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_215321 a0 a1 = ()
data T_GeneralizeTel_215321
  = C_mkGeneralizeTel_215323 T_UTxOEnv_2218 T_UTxOState_2234
                             MAlonzo.Code.Ledger.Transaction.T_Tx_2844 T_UTxOState_2234
