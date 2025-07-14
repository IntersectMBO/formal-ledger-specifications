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

module MAlonzo.Code.Ledger.Conway.Utxo where

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
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Fees
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Instances
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _._≤ᵗ_
d__'8804''7511'__18 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__18 = erased
-- _.Dec-isVKey
d_Dec'45'isVKey_64 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_64 ~v0 = du_Dec'45'isVKey_64
du_Dec'45'isVKey_64 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_64
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
-- _.DecEq-BaseAddr
d_DecEq'45'BaseAddr_74 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BaseAddr_236
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0)))
-- _.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_76 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0)))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_108 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0)))
-- _.ExUnits
d_ExUnits_148 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ExUnits_148 = erased
-- _.GovProposal
d_GovProposal_162 a0 = ()
-- _.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_192 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'RwdAddr_192 ~v0 = du_HasNetworkId'45'RwdAddr_192
du_HasNetworkId'45'RwdAddr_192 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'RwdAddr_192
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128
-- _.HasPParams
d_HasPParams_194 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_200 a0 a1 a2 = ()
-- _.HasgovActionDeposit
d_HasgovActionDeposit_208 a0 a1 a2 = ()
-- _.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_210 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460
d_HasgovActionDeposit'45'PParams_210 ~v0
  = du_HasgovActionDeposit'45'PParams_210
du_HasgovActionDeposit'45'PParams_210 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460
du_HasgovActionDeposit'45'PParams_210
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_492
-- _.MemoryEstimate
d_MemoryEstimate_262 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_MemoryEstimate_262 = erased
-- _.NetworkId
d_NetworkId_270 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny
d_NetworkId_270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
         (coe v0))
-- _.PParams
d_PParams_292 a0 = ()
-- _.PParamsOf
d_PParamsOf_296 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_PParamsOf_296 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_450 (coe v0)
-- _.ScriptHash
d_ScriptHash_340 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_340 = erased
-- _.Slot
d_Slot_384 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Slot_384 = erased
-- _.Tx
d_Tx_410 a0 = ()
-- _.TxBody
d_TxBody_412 a0 = ()
-- _.TxOutʰ
d_TxOut'688'_422 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxOut'688'_422 = erased
-- _.UTxO
d_UTxO_426 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_UTxO_426 = erased
-- _.UTxOOf
d_UTxOOf_428 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2928 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_428 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2936 (coe v0)
-- _.Value
d_Value_446 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Value_446 = erased
-- _.coin
d_coin_472 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> Integer
d_coin_472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coin_200
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
         (coe v0))
-- _.getValueʰ
d_getValue'688'_500 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_500 ~v0 = du_getValue'688'_500
du_getValue'688'_500 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_500
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3182
-- _.govActionDepositOf
d_govActionDepositOf_504 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460 ->
  AgdaAny -> Integer
d_govActionDepositOf_504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_468
      (coe v0)
-- _.inject
d_inject_512 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  Integer -> AgdaAny
d_inject_512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
         (coe v0))
-- _.netId
d_netId_560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_560 ~v0 = du_netId_560
du_netId_560 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_560 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- _.txOutHash
d_txOutHash_624 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3172 (coe v0)
-- _.GovProposal.action
d_action_768 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800
d_action_768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_868 (coe v0)
-- _.GovProposal.anchor
d_anchor_770 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_772
d_anchor_770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_878 (coe v0)
-- _.GovProposal.deposit
d_deposit_772 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  Integer
d_deposit_772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_874 (coe v0)
-- _.GovProposal.policy
d_policy_774 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  Maybe AgdaAny
d_policy_774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_872 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_776 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  AgdaAny
d_prevAction_776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_870
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_778 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_876
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_826 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_912 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_PParamsOf_912 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_450 (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_920 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2928 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_920 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2936 (coe v0)
-- _.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_928 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460 ->
  AgdaAny -> Integer
d_govActionDepositOf_928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_468
      (coe v0)
-- _.PParams.Emax
d_Emax_1040 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_Emax_1040 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_412 (coe v0)
-- _.PParams.a
d_a_1042 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_a_1042 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_384 (coe v0)
-- _.PParams.a0
d_a0_1044 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1044 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_416 (coe v0)
-- _.PParams.b
d_b_1046 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_b_1046 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_386 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1048 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMaxTermLength_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_428 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1050 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMinSize_1050 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_426 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1052 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_coinsPerUTxOByte_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_396 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1054 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_collateralPercentage_1054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_418
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_costmdls_1056 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_420 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_drepActivity_1058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_436 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_drepDeposit_1060 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_434 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232
d_drepThresholds_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionDeposit_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_432 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionLifetime_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_430 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_keyDeposit_1068 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_388 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_maxBlockExUnits_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_376 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxBlockSize_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_368 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxCollateralInputs_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_380
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxHeaderSize_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_372 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerBlock_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_404
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerTx_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_402
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_maxTxExUnits_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_374 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxTxSize_1084 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_370 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxValSize_1086 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_378 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_400
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_minUTxOValue_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_410 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_392 (coe v0)
-- _.PParams.nopt
d_nopt_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_nopt_1094 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_414 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_poolDeposit_1096 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_390 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274
d_poolThresholds_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422 (coe v0)
-- _.PParams.prices
d_prices_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_prices_1100 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_398 (coe v0)
-- _.PParams.pv
d_pv_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1102 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_382 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_408
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_406
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_394 (coe v0)
-- _.Tx.body
d_body_1522 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_1522 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v0)
-- _.Tx.isValid
d_isValid_1524 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Bool
d_isValid_1524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v0)
-- _.Tx.txAD
d_txAD_1526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Maybe AgdaAny
d_txAD_1526 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150 (coe v0)
-- _.Tx.txsize
d_txsize_1528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Integer
d_txsize_1528 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3146 (coe v0)
-- _.Tx.wits
d_wits_1530 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110
d_wits_1530 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144 (coe v0)
-- _.TxBody.collateral
d_collateral_1534 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3014 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1536 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe Integer
d_curTreasury_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3010 (coe v0)
-- _.TxBody.mint
d_mint_1538 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_mint_1538 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2990 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2984 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1542 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [AgdaAny]
d_reqSigHash_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3016 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_scriptIntHash_1544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3018
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_txADhash_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3006 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_txNetworkId_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3008 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcerts_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2994 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txdonation_1552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3002 (coe v0)
-- _.TxBody.txfee
d_txfee_1554 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txfee_1554 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2988 (coe v0)
-- _.TxBody.txid
d_txid_1556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_txid_1556 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3012 (coe v0)
-- _.TxBody.txins
d_txins_1558 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1558 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982 (coe v0)
-- _.TxBody.txouts
d_txouts_1560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1560 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986 (coe v0)
-- _.TxBody.txprop
d_txprop_1562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854]
d_txprop_1562 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3000 (coe v0)
-- _.TxBody.txup
d_txup_1564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1564 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3004 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1566 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2992 (coe v0)
-- _.TxBody.txvote
d_txvote_1568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836]
d_txvote_1568 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_2998 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2996 (coe v0)
-- Ledger.Conway.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_1634 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_1634 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_collectP2ScriptsWithContext_2368
      (coe v0) (coe v1)
-- Ledger.Conway.Utxo._.evalP2Scripts
d_evalP2Scripts_1638 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_1638 ~v0 v1 = du_evalP2Scripts_1638 v1
du_evalP2Scripts_1638 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.du_evalP2Scripts_2408
      (coe v0)
-- Ledger.Conway.Utxo._.DCert
d_DCert_1724 a0 a1 = ()
-- Ledger.Conway.Utxo._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1742 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1742 v0 ~v1
  = du_DecEq'45'DepositPurpose_1742 v0
du_DecEq'45'DepositPurpose_1742 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
         (coe v0))
-- Ledger.Conway.Utxo._.DepositPurpose
d_DepositPurpose_1746 a0 a1 = ()
-- Ledger.Conway.Utxo._.Deposits
d_Deposits_1748 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 -> ()
d_Deposits_1748 = erased
-- Ledger.Conway.Utxo._.DepositsOf
d_DepositsOf_1750 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1750 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_956 (coe v0)
-- Ledger.Conway.Utxo._.HasDeposits
d_HasDeposits_1792 a0 a1 a2 a3 = ()
-- Ledger.Conway.Utxo._.HasDeposits.DepositsOf
d_DepositsOf_1982 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1982 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_956 (coe v0)
-- Ledger.Conway.Utxo.totExUnits
d_totExUnits_2024 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> AgdaAny
d_totExUnits_2024 v0 ~v1 v2 = du_totExUnits_2024 v0 v2
du_totExUnits_2024 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> AgdaAny
du_totExUnits_2024 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Tag_20)
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
               (coe
                  MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                  (coe
                     MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
               (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3126
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144 (coe v1)))
-- Ledger.Conway.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2036 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  Integer
d_utxoEntrySizeWithoutVal_2036 ~v0
  = du_utxoEntrySizeWithoutVal_2036
du_utxoEntrySizeWithoutVal_2036 :: Integer
du_utxoEntrySizeWithoutVal_2036 = coe (8 :: Integer)
-- Ledger.Conway.Utxo.utxoEntrySize
d_utxoEntrySize_2038 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2038 v0 ~v1 v2 = du_utxoEntrySize_2038 v0 v2
du_utxoEntrySize_2038 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2038 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_size_206
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3182
            (coe v1)))
-- Ledger.Conway.Utxo.UTxOEnv
d_UTxOEnv_2042 a0 a1 = ()
data T_UTxOEnv_2042
  = C_UTxOEnv'46'constructor_5729 AgdaAny
                                  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 Integer
-- Ledger.Conway.Utxo.UTxOEnv.slot
d_slot_2050 :: T_UTxOEnv_2042 -> AgdaAny
d_slot_2050 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_5729 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOEnv.pparams
d_pparams_2052 ::
  T_UTxOEnv_2042 -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_2052 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_5729 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOEnv.treasury
d_treasury_2054 :: T_UTxOEnv_2042 -> Integer
d_treasury_2054 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_5729 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2056 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442
d_HasPParams'45'UTxOEnv_2056 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2056
du_HasPParams'45'UTxOEnv_2056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442
du_HasPParams'45'UTxOEnv_2056
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.C_HasPParams'46'constructor_9433
      (coe (\ v0 -> d_pparams_2052 (coe v0)))
-- Ledger.Conway.Utxo.HasgovActionDeposit-UTxOEnv
d_HasgovActionDeposit'45'UTxOEnv_2058 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460
d_HasgovActionDeposit'45'UTxOEnv_2058 ~v0 ~v1
  = du_HasgovActionDeposit'45'UTxOEnv_2058
du_HasgovActionDeposit'45'UTxOEnv_2058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460
du_HasgovActionDeposit'45'UTxOEnv_2058
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.C_HasgovActionDeposit'46'constructor_9565
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_468
              (coe
                 MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_492)
              (d_pparams_2052 (coe v0))))
-- Ledger.Conway.Utxo.UTxOState
d_UTxOState_2060 a0 a1 = ()
data T_UTxOState_2060
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_2078 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Conway.Utxo.UTxOState.utxo
d_utxo_2070 ::
  T_UTxOState_2060 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2070 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2078 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOState.fees
d_fees_2072 :: T_UTxOState_2060 -> Integer
d_fees_2072 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2078 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOState.deposits
d_deposits_2074 ::
  T_UTxOState_2060 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2074 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2078 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOState.donations
d_donations_2076 :: T_UTxOState_2060 -> Integer
d_donations_2076 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2078 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.HasUTxOState
d_HasUTxOState_2084 a0 a1 a2 a3 = ()
newtype T_HasUTxOState_2084
  = C_HasUTxOState'46'constructor_6483 (AgdaAny -> T_UTxOState_2060)
-- Ledger.Conway.Utxo.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2092 ::
  T_HasUTxOState_2084 -> AgdaAny -> T_UTxOState_2060
d_UTxOStateOf_2092 v0
  = case coe v0 of
      C_HasUTxOState'46'constructor_6483 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo._.UTxOStateOf
d_UTxOStateOf_2096 ::
  T_HasUTxOState_2084 -> AgdaAny -> T_UTxOState_2060
d_UTxOStateOf_2096 v0 = coe d_UTxOStateOf_2092 (coe v0)
-- Ledger.Conway.Utxo.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2098 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948
d_HasDeposits'45'UTxOState_2098 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2098
du_HasDeposits'45'UTxOState_2098 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948
du_HasDeposits'45'UTxOState_2098
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasDeposits'46'constructor_3039
      (coe (\ v0 -> d_deposits_2074 (coe v0)))
-- Ledger.Conway.Utxo.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2100 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2928
d_HasUTxO'45'UTxOState_2100 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2100
du_HasUTxO'45'UTxOState_2100 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2928
du_HasUTxO'45'UTxOState_2100
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.C_HasUTxO'46'constructor_18291
      (coe (\ v0 -> d_utxo_2070 (coe v0)))
-- Ledger.Conway.Utxo.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2102 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2102 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2102
du_HasCast'45'UTxOEnv_2102 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2102
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                 (2042 :: Integer) (762436563079004261 :: Integer)
                                 "Ledger.Conway.Utxo.UTxOEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (384 :: Integer) (762436563079004261 :: Integer) "_.Slot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                    (2042 :: Integer) (762436563079004261 :: Integer)
                                    "Ledger.Conway.Utxo.UTxOEnv"
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
                                    (292 :: Integer) (762436563079004261 :: Integer) "_.PParams"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                       (2042 :: Integer) (762436563079004261 :: Integer)
                                       "Ledger.Conway.Utxo.UTxOEnv"
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
         (coe C_UTxOEnv'46'constructor_5729))
-- Ledger.Conway.Utxo.HasCast-UTxOState
d_HasCast'45'UTxOState_2104 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2104 ~v0 ~v1 = du_HasCast'45'UTxOState_2104
du_HasCast'45'UTxOState_2104 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2104
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                 (2060 :: Integer) (762436563079004261 :: Integer)
                                 "Ledger.Conway.Utxo.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (426 :: Integer) (762436563079004261 :: Integer) "_.UTxO"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                    (2060 :: Integer) (762436563079004261 :: Integer)
                                    "Ledger.Conway.Utxo.UTxOState"
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
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                       (2060 :: Integer) (762436563079004261 :: Integer)
                                       "Ledger.Conway.Utxo.UTxOState"
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
                                       (1748 :: Integer) (762436563079004261 :: Integer)
                                       "Ledger.Conway.Utxo._.Deposits"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                          (2060 :: Integer) (762436563079004261 :: Integer)
                                          "Ledger.Conway.Utxo.UTxOState"
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
         (coe C_'10214'_'44'_'44'_'44'_'10215''7512'_2078))
-- Ledger.Conway.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2106 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2106
  = C_UTXO'45'inductive_3114 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Utxo._._.outs
d_outs_2116 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2116 ~v0 ~v1 v2 = du_outs_2116 v2
du_outs_2116 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2116 v0
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
              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3012 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986 (coe v0))
-- Ledger.Conway.Utxo._._.balance
d_balance_2122 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2122 v0 ~v1 v2 = du_balance_2122 v0 v2
du_balance_2122 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2122 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_188
            (coe
               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BaseAddr_236
               (coe
                  MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
               (coe
                  MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_DecEq'45'Value_214
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                  (coe v0)))
            (coe
               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_188
                     (coe
                        MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
                        (coe
                           MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                           (coe
                              MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                        (coe
                           MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                           (coe
                              MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
            (coe v0)))
      (coe MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3182)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3172 (coe v0))
         (coe v1))
-- Ledger.Conway.Utxo._._.cbalance
d_cbalance_2128 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2128 v0 ~v1 v2 = du_cbalance_2128 v0 v2
du_cbalance_2128 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2128 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coin_200
      (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
         (coe v0))
      (coe du_balance_2122 (coe v0) (coe v1))
-- Ledger.Conway.Utxo._._.refScriptsSize
d_refScriptsSize_2132 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Integer
d_refScriptsSize_2132 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Base.d_sum_280
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Abstract.d_scriptSize_1976 (coe v1))
         (MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3206
            (coe v0) (coe v3) (coe v2)))
-- Ledger.Conway.Utxo._._.minfee
d_minfee_2138 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Integer
d_minfee_2138 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Conway.Abstract.d_txscriptfee_1968 v1
               (MAlonzo.Code.Ledger.Conway.PParams.d_prices_398 (coe v2))
               (coe du_totExUnits_2024 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Fees.d_scriptsCost_1610 (coe v0)
               (coe v2)
               (coe d_refScriptsSize_2132 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe MAlonzo.Code.Ledger.Conway.PParams.d_b_386 (coe v2)))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.Conway.PParams.d_a_384 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3146 (coe v4)))
-- Ledger.Conway.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2146 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2146 v0 ~v1 = du_HasCoin'45'UTxO_2146 v0
du_HasCoin'45'UTxO_2146 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2146 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_2128 (coe v0))
-- Ledger.Conway.Utxo.certDeposit
d_certDeposit_2148 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2148 ~v0 ~v1 v2 v3 = du_certDeposit_2148 v2 v3
du_certDeposit_2148 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2148 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1024 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_930 (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1028 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Conway.Certs.C_PoolDeposit_932 (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_390 (coe v1)))
         MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1032 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_934 (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Conway.Certs.C_reg_1038 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_930 (coe v3))
                   (coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_388 (coe v1)))
         _ -> coe v2)
-- Ledger.Conway.Utxo.certRefund
d_certRefund_2166 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_928]
d_certRefund_2166 ~v0 ~v1 v2 = du_certRefund_2166 v2
du_certRefund_2166 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_928]
du_certRefund_2166 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_442
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1026 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_930 (coe v2))
         MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1034 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_934 (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Utxo.ValidCertDeposits
d_ValidCertDeposits_2176 a0 a1 a2 a3 a4 = ()
data T_ValidCertDeposits_2176
  = C_'91''93'_2182 | C_delegate_2194 T_ValidCertDeposits_2176 |
    C_regpool_2202 T_ValidCertDeposits_2176 |
    C_regdrep_2212 T_ValidCertDeposits_2176 |
    C_reg_2220 T_ValidCertDeposits_2176 |
    C_dereg_2230 Integer
                 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_ValidCertDeposits_2176 |
    C_deregdrep_2238 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                     T_ValidCertDeposits_2176 |
    C_ccreghot_2246 T_ValidCertDeposits_2176 |
    C_retirepool_2254 T_ValidCertDeposits_2176
-- Ledger.Conway.Utxo.validCertDeposits?
d_validCertDeposits'63'_2262 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCertDeposits'63'_2262 v0 ~v1 v2 v3 v4
  = du_validCertDeposits'63'_2262 v0 v2 v3 v4
du_validCertDeposits'63'_2262 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCertDeposits'63'_2262 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe C_'91''93'_2182))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1024 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_delegate_2194)
                    (coe
                       (\ v10 ->
                          case coe v10 of
                            C_delegate_2194 v16 -> coe v16
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2262 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                (coe v0)))
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
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_930
                                   (coe v6))
                                (coe v9))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1026 v6 v7
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
                                         (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                               (coe v0)))
                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_930
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
                                                      C_dereg_2230 v8 v12
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                         erased))
                                                   (coe
                                                      (\ v13 ->
                                                         case coe v13 of
                                                           C_dereg_2230 v16 v18 v19 v20 -> coe v20
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2262 (coe v0)
                                                      (coe v1)
                                                      (let v13
                                                             = MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
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
                                                                  MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_930
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
                                         MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_930
                                         (coe v6))
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
                                                      C_dereg_2230
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
                                                                  MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_930
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
                                                                  MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_930
                                                                  (coe v6)))
                                                            v11))
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                         erased))
                                                   (coe
                                                      (\ v12 ->
                                                         case coe v12 of
                                                           C_dereg_2230 v15 v17 v18 v19 -> coe v19
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2262 (coe v0)
                                                      (coe v1)
                                                      (let v12
                                                             = MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
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
                                                                  MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_930
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
             MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1028 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regpool_2202)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_regpool_2202 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2262 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Conway.Certs.C_PoolDeposit_932 (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_390 (coe v1)))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_retirepool_1030 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_retirepool_2254)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_retirepool_2254 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2262 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1032 v6 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regdrep_2212)
                    (coe
                       (\ v9 ->
                          case coe v9 of
                            C_regdrep_2212 v14 -> coe v14
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2262 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                (coe v0)))
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
                                (coe MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_934 (coe v6))
                                (coe v7))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1034 v6 v7
               -> let v8
                        = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                            (coe
                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe
                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                  (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                        (coe v0)))
                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_934 (coe v6))
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
                                            (coe C_deregdrep_2238 v11)
                                            (coe
                                               (\ v12 ->
                                                  case coe v12 of
                                                    C_deregdrep_2238 v16 v17 -> coe v17
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               du_validCertDeposits'63'_2262 (coe v0) (coe v1)
                                               (let v12
                                                      = MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
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
                                                           MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_934
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
             MAlonzo.Code.Ledger.Conway.Certs.C_ccreghot_1036 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_ccreghot_2246)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_ccreghot_2246 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2262 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_reg_1038 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_reg_2220)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_reg_2220 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2262 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                (coe v0)))
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
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_930
                                   (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_388 (coe v1)))))
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_2434 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_2434 v0 ~v1 v2 v3 v4
  = du_Dec'45'ValidCertDeposits_2434 v0 v2 v3 v4
du_Dec'45'ValidCertDeposits_2434 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_2434 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         du_validCertDeposits'63'_2262 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Utxo.updateCertDeposits
d_updateCertDeposits_2436 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2436 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_2436 v0 v2 v3 v4
du_updateCertDeposits_2436 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2436 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> let v6
                 = coe
                     du_updateCertDeposits_2436 (coe v0) (coe v1) (coe v5) (coe v3) in
           coe
             (case coe v4 of
                MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1024 v7 v8 v9 v10
                  -> coe
                       du_updateCertDeposits_2436 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                (coe v0)))
                          v3 (coe du_certDeposit_2148 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1026 v7 v8
                  -> coe
                       du_updateCertDeposits_2436 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2166 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1028 v7 v8
                  -> coe
                       du_updateCertDeposits_2436 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                (coe v0)))
                          v3 (coe du_certDeposit_2148 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1032 v7 v8 v9
                  -> coe
                       du_updateCertDeposits_2436 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                (coe v0)))
                          v3 (coe du_certDeposit_2148 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1034 v7 v8
                  -> coe
                       du_updateCertDeposits_2436 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2166 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Certs.C_reg_1038 v7 v8
                  -> coe
                       du_updateCertDeposits_2436 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                (coe v0)))
                          v3 (coe du_certDeposit_2148 (coe v4) (coe v1)))
                _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.updateProposalDeposits
d_updateProposalDeposits_2514 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2514 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_2514 v0 v2 v3 v4 v5
du_updateProposalDeposits_2514 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2514 v0 v1 v2 v3 v4
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
             (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                (coe
                   MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                   (coe v0)))
             (coe
                du_updateProposalDeposits_2514 (coe v0) (coe v6) (coe v2) (coe v3)
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
                      MAlonzo.Code.Ledger.Conway.Certs.C_GovActionDeposit_936
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_284 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.updateDeposits
d_updateDeposits_2526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2526 v0 ~v1 v2 v3 v4
  = du_updateDeposits_2526 v0 v2 v3 v4
du_updateDeposits_2526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2526 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_2436 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2994 (coe v2))
      (coe
         du_updateProposalDeposits_2514 (coe v0)
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3000 (coe v2))
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3012 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_432 (coe v1))
         (coe v3))
-- Ledger.Conway.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_2576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854] ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2576 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_2576 v0 v2 v3 v4
du_proposalDepositsΔ_2576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854] ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2576 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_2514 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3012 (coe v3))
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_432 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Conway.Utxo.depositsChange
d_depositsChange_2628 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2628 v0 ~v1 v2 v3 v4
  = du_depositsChange_2628 v0 v2 v3 v4
du_depositsChange_2628 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2628 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
               (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_2526 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
               (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Conway.Utxo.inInterval
d_inInterval_2638 a0 a1 a2 a3 = ()
data T_inInterval_2638
  = C_both_2646 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2650 AgdaAny | C_upper_2654 AgdaAny | C_none_2656
-- Ledger.Conway.Utxo.Dec-inInterval
d_Dec'45'inInterval_2658 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2658 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2658 v0 v2 v3
du_Dec'45'inInterval_2658 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2658 v0 v1 v2
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
                                         (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_266
                                            (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
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
                                                                                    C_both_2646
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
                                         (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
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
                                                         (coe C_lower_2650 v9))
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
                                         (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
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
                                                         (coe C_upper_2654 v9))
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
                                 (coe C_none_2656))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2760 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2760 v0 ~v1
  = du_HasCoin'45'UTxOState_2760 v0
du_HasCoin'45'UTxOState_2760 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2760 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2128 (coe v0) (coe d_utxo_2070 (coe v1)))
                    (coe d_donations_2076 (coe v1)))
                 (coe d_fees_2072 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                 (coe
                    MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                    (coe
                       MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                 (coe (\ v2 -> v2)) (coe d_deposits_2074 (coe v1)))))
-- Ledger.Conway.Utxo.coinPolicies
d_coinPolicies_2764 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  [AgdaAny]
d_coinPolicies_2764 v0 ~v1 = du_coinPolicies_2764 v0
du_coinPolicies_2764 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [AgdaAny]
du_coinPolicies_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
      (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
            (coe v0))
         (1 :: Integer))
-- Ledger.Conway.Utxo.isAdaOnly
d_isAdaOnly_2766 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  AgdaAny -> ()
d_isAdaOnly_2766 = erased
-- Ledger.Conway.Utxo.collateralCheck
d_collateralCheck_2770 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_2770 = erased
-- Ledger.Conway.Utxo._.balance′
d_balance'8242'_2834 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance'8242'_2834 v0 ~v1 ~v2 v3 v4
  = du_balance'8242'_2834 v0 v3 v4
du_balance'8242'_2834 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance'8242'_2834 v0 v1 v2
  = coe
      du_balance_2122 (coe v0)
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
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                  (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3014
            (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v1))))
-- Ledger.Conway.Utxo._._.depositRefunds
d_depositRefunds_2848 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_depositRefunds_2848 v0 ~v1 v2 v3 v4
  = du_depositRefunds_2848 v0 v2 v3 v4
du_depositRefunds_2848 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
du_depositRefunds_2848 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_negPart_70
      (coe
         du_depositsChange_2628 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2074 (coe v2)))
-- Ledger.Conway.Utxo._._.newDeposits
d_newDeposits_2856 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_newDeposits_2856 v0 ~v1 v2 v3 v4
  = du_newDeposits_2856 v0 v2 v3 v4
du_newDeposits_2856 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
du_newDeposits_2856 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_posPart_58
      (coe
         du_depositsChange_2628 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2074 (coe v2)))
-- Ledger.Conway.Utxo._._.consumed
d_consumed_2864 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_consumed_2864 v0 ~v1 v2 v3 v4 = du_consumed_2864 v0 v2 v3 v4
du_consumed_2864 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
du_consumed_2864 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                     (coe v0))))
            (coe
               du_balance_2122 (coe v0)
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
                        (coe
                           MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                           (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                           (coe v0))))
                  (coe d_utxo_2070 (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982 (coe v3))))
            (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2990 (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
            (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v0))
            (coe du_depositRefunds_2848 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
            (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
            (coe
               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
               (coe
                  MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
            (coe (\ v4 -> v4))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2996 (coe v3))))
-- Ledger.Conway.Utxo._._.produced
d_produced_2872 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_produced_2872 v0 ~v1 v2 v3 v4 = du_produced_2872 v0 v2 v3 v4
du_produced_2872 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
du_produced_2872 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                     (coe v0))))
            (coe du_balance_2122 (coe v0) (coe du_outs_2116 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
               (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                  (coe v0))
               (MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2988 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
            (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v0))
            (coe du_newDeposits_2856 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3002
            (coe v3)))
-- Ledger.Conway.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2896 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2896
  = C_Scripts'45'Yes_2954 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_3012 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Utxo._.isValid
d_isValid_2902 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_183685 -> Bool
d_isValid_2902 ~v0 ~v1 v2 = du_isValid_2902 v2
du_isValid_2902 :: T_GeneralizeTel_183685 -> Bool
du_isValid_2902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148
      (coe d_'46'generalizedField'45'tx_183675 (coe v0))
-- Ledger.Conway.Utxo._.body
d_body_2906 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_183685 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_2906 ~v0 ~v1 v2 = du_body_2906 v2
du_body_2906 ::
  T_GeneralizeTel_183685 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
du_body_2906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
      (coe d_'46'generalizedField'45'tx_183675 (coe v0))
-- Ledger.Conway.Utxo._.txcerts
d_txcerts_2930 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_183685 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcerts_2930 ~v0 ~v1 v2 = du_txcerts_2930 v2
du_txcerts_2930 ::
  T_GeneralizeTel_183685 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
du_txcerts_2930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2994
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_183675 (coe v0)))
-- Ledger.Conway.Utxo._.txdonation
d_txdonation_2932 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_183685 -> Integer
d_txdonation_2932 ~v0 ~v1 v2 = du_txdonation_2932 v2
du_txdonation_2932 :: T_GeneralizeTel_183685 -> Integer
du_txdonation_2932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3002
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_183675 (coe v0)))
-- Ledger.Conway.Utxo._.txfee
d_txfee_2934 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_183685 -> Integer
d_txfee_2934 ~v0 ~v1 v2 = du_txfee_2934 v2
du_txfee_2934 :: T_GeneralizeTel_183685 -> Integer
du_txfee_2934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2988
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_183675 (coe v0)))
-- Ledger.Conway.Utxo._.txins
d_txins_2938 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_183685 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2938 ~v0 ~v1 v2 = du_txins_2938 v2
du_txins_2938 ::
  T_GeneralizeTel_183685 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_183675 (coe v0)))
-- Ledger.Conway.Utxo._.isValid
d_isValid_2960 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_190597 -> Bool
d_isValid_2960 ~v0 ~v1 v2 = du_isValid_2960 v2
du_isValid_2960 :: T_GeneralizeTel_190597 -> Bool
du_isValid_2960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148
      (coe d_'46'generalizedField'45'tx_190587 (coe v0))
-- Ledger.Conway.Utxo._.body
d_body_2964 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_190597 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_2964 ~v0 ~v1 v2 = du_body_2964 v2
du_body_2964 ::
  T_GeneralizeTel_190597 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
du_body_2964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
      (coe d_'46'generalizedField'45'tx_190587 (coe v0))
-- Ledger.Conway.Utxo._.collateral
d_collateral_2972 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_190597 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2972 ~v0 ~v1 v2 = du_collateral_2972 v2
du_collateral_2972 ::
  T_GeneralizeTel_190597 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3014
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_190587 (coe v0)))
-- Ledger.Conway.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_3014 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_UTxOEnv_2042 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_3014 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            du_Dec'45'ValidCertDeposits_2434 (coe v0)
            (coe d_pparams_2052 (coe v2)) (coe v5)
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2994
               (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v3))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.Script.Validation.du_evalP2Scripts_2408
                  v1
                  (MAlonzo.Code.Ledger.Conway.Script.Validation.d_collectP2ScriptsWithContext_2368
                     (coe v0) (coe v1) (coe d_pparams_2052 (coe v2)) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v3))
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
-- Ledger.Conway.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_3016 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_UTxOEnv_2042 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_3016 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Validation.du_evalP2Scripts_2408
               v1
               (MAlonzo.Code.Ledger.Conway.Script.Validation.d_collectP2ScriptsWithContext_2368
                  (coe v0) (coe v1) (coe d_pparams_2052 (coe v2)) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v3)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Utxo._.body
d_body_3032 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_203119 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_3032 ~v0 ~v1 v2 = du_body_3032 v2
du_body_3032 ::
  T_GeneralizeTel_203119 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
du_body_3032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
      (coe d_'46'generalizedField'45'tx_203115 (coe v0))
-- Ledger.Conway.Utxo._.txsize
d_txsize_3034 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_203119 -> Integer
d_txsize_3034 ~v0 ~v1 v2 = du_txsize_3034 v2
du_txsize_3034 :: T_GeneralizeTel_203119 -> Integer
du_txsize_3034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3146
      (coe d_'46'generalizedField'45'tx_203115 (coe v0))
-- Ledger.Conway.Utxo._.wits
d_wits_3036 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_203119 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110
d_wits_3036 ~v0 ~v1 v2 = du_wits_3036 v2
du_wits_3036 ::
  T_GeneralizeTel_203119 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110
du_wits_3036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144
      (coe d_'46'generalizedField'45'tx_203115 (coe v0))
-- Ledger.Conway.Utxo._.curTreasury
d_curTreasury_3042 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_203119 -> Maybe Integer
d_curTreasury_3042 ~v0 ~v1 v2 = du_curTreasury_3042 v2
du_curTreasury_3042 :: T_GeneralizeTel_203119 -> Maybe Integer
du_curTreasury_3042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3010
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_203115 (coe v0)))
-- Ledger.Conway.Utxo._.mint
d_mint_3044 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_203119 -> AgdaAny
d_mint_3044 ~v0 ~v1 v2 = du_mint_3044 v2
du_mint_3044 :: T_GeneralizeTel_203119 -> AgdaAny
du_mint_3044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2990
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_203115 (coe v0)))
-- Ledger.Conway.Utxo._.refInputs
d_refInputs_3046 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_203119 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3046 ~v0 ~v1 v2 = du_refInputs_3046 v2
du_refInputs_3046 ::
  T_GeneralizeTel_203119 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2984
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_203115 (coe v0)))
-- Ledger.Conway.Utxo._.txNetworkId
d_txNetworkId_3054 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_203119 -> Maybe AgdaAny
d_txNetworkId_3054 ~v0 ~v1 v2 = du_txNetworkId_3054 v2
du_txNetworkId_3054 :: T_GeneralizeTel_203119 -> Maybe AgdaAny
du_txNetworkId_3054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3008
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_203115 (coe v0)))
-- Ledger.Conway.Utxo._.txfee
d_txfee_3060 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_203119 -> Integer
d_txfee_3060 ~v0 ~v1 v2 = du_txfee_3060 v2
du_txfee_3060 :: T_GeneralizeTel_203119 -> Integer
du_txfee_3060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2988
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_203115 (coe v0)))
-- Ledger.Conway.Utxo._.txins
d_txins_3064 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_203119 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3064 ~v0 ~v1 v2 = du_txins_3064 v2
du_txins_3064 ::
  T_GeneralizeTel_203119 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_203115 (coe v0)))
-- Ledger.Conway.Utxo._.txouts
d_txouts_3066 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_203119 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3066 ~v0 ~v1 v2 = du_txouts_3066 v2
du_txouts_3066 ::
  T_GeneralizeTel_203119 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_203115 (coe v0)))
-- Ledger.Conway.Utxo._.txvldt
d_txvldt_3072 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_203119 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3072 ~v0 ~v1 v2 = du_txvldt_3072 v2
du_txvldt_3072 ::
  T_GeneralizeTel_203119 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2992
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_203115 (coe v0)))
-- Ledger.Conway.Utxo._.txwdrls
d_txwdrls_3076 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_203119 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3076 ~v0 ~v1 v2 = du_txwdrls_3076 v2
du_txwdrls_3076 ::
  T_GeneralizeTel_203119 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2996
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_203115 (coe v0)))
-- Ledger.Conway.Utxo._.txrdmrs
d_txrdmrs_3086 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_203119 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3086 ~v0 ~v1 v2 = du_txrdmrs_3086 v2
du_txrdmrs_3086 ::
  T_GeneralizeTel_203119 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_3086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3126
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144
         (coe d_'46'generalizedField'45'tx_203115 (coe v0)))
-- Ledger.Conway.Utxo.UTXO-premises
d_UTXO'45'premises_3160 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_UTxOEnv_2042 ->
  T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3160 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v4)))
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
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe d_utxo_2070 (coe v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982
                     (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v4)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2984
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v4)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                           (coe v0))))
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
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v4)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2984
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v4))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_2658 (coe v0) (coe d_slot_2050 (coe v2))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2992
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v4))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                        (d_minfee_2138
                           (coe v0) (coe v1) (coe d_pparams_2052 (coe v2))
                           (coe d_utxo_2070 (coe v3)) (coe v4))
                        (MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2988
                           (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v4))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
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
                                          erased
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Tag_20
                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3126
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144
                                          (coe v4))))
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
                                         MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
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
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                                                (coe v0))))
                                       (coe d_utxo_2070 (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3014
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                             (coe v4))))))
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
                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                     (coe v0)))
                                               (coe v5) (coe du_coinPolicies_2764 (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                             (coe v0))
                                          (coe
                                             du_balance'8242'_2834 (coe v0) (coe v4)
                                             (coe d_utxo_2070 (coe v3)))))
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
                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
                                                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                                     (coe v0))
                                                  (coe
                                                     du_balance'8242'_2834 (coe v0) (coe v4)
                                                     (coe d_utxo_2070 (coe v3))))))
                                       (coe du_coinPolicies_2764 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2988
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_418
                                             (coe d_pparams_2052 (coe v2))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coin_200
                                             (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                                (coe v0))
                                             (coe
                                                du_balance'8242'_2834 (coe v0) (coe v4)
                                                (coe d_utxo_2070 (coe v3))))
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
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3014
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8709'_442
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_DecEq'45'Value_214
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                    (coe v0)))
                              (coe
                                 du_consumed_2864 (coe v0) (coe d_pparams_2052 (coe v2)) (coe v3)
                                 (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v4)))
                              (coe
                                 du_produced_2872 (coe v0) (coe d_pparams_2052 (coe v2)) (coe v3)
                                 (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v4))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coin_200
                                    (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                       (coe v0))
                                    (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2990
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                          (coe v4))))
                                 (coe (0 :: Integer)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3146 (coe v4))
                                    (MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_370
                                       (coe d_pparams_2052 (coe v2))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (d_refScriptsSize_2132
                                          (coe v0) (coe v1) (coe d_utxo_2070 (coe v3)) (coe v4))
                                       (MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_402
                                          (coe d_pparams_2052 (coe v2))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Dec'45''8804''7511'_216
                                                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
                                                     (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                                        (coe v0))
                                                     (mulInt
                                                        (coe
                                                           addInt (coe (160 :: Integer))
                                                           (coe
                                                              du_utxoEntrySize_2038 (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_396
                                                           (coe d_pparams_2052 (coe v2)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3182
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v5)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                             (coe
                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3172
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
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
                                                        MAlonzo.Code.Ledger.Conway.Abstract.d_serSize_1970
                                                        v1
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3182
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_378
                                                        (coe d_pparams_2052 (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3172
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
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
                                                                (MAlonzo.Code.Ledger.Conway.Address.d_attrsSize_94
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
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3172
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
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
                                                              MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Address.du_netId_158
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v5)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
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
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3172
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
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
                                                                 MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Address.d_net_102
                                                                 (coe v5))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
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
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2996
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                                               (coe v4)))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3008
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                                               (coe v4)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3010
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                                               (coe v4)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe d_treasury_2054 (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))
-- Ledger.Conway.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_183673 ::
  T_GeneralizeTel_183685 -> T_UTxOEnv_2042
d_'46'generalizedField'45'Γ_183673 v0
  = case coe v0 of
      C_mkGeneralizeTel_183687 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_183675 ::
  T_GeneralizeTel_183685 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130
d_'46'generalizedField'45'tx_183675 v0
  = case coe v0 of
      C_mkGeneralizeTel_183687 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_183677 ::
  T_GeneralizeTel_183685 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_183677 v0
  = case coe v0 of
      C_mkGeneralizeTel_183687 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_183679 ::
  T_GeneralizeTel_183685 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_183679 v0
  = case coe v0 of
      C_mkGeneralizeTel_183687 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_183681 ::
  T_GeneralizeTel_183685 -> Integer
d_'46'generalizedField'45'fees_183681 v0
  = case coe v0 of
      C_mkGeneralizeTel_183687 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_183683 ::
  T_GeneralizeTel_183685 -> Integer
d_'46'generalizedField'45'donations_183683 v0
  = case coe v0 of
      C_mkGeneralizeTel_183687 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.GeneralizeTel
d_GeneralizeTel_183685 a0 a1 = ()
data T_GeneralizeTel_183685
  = C_mkGeneralizeTel_183687 T_UTxOEnv_2042
                             MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer Integer
-- Ledger.Conway.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_190585 ::
  T_GeneralizeTel_190597 -> T_UTxOEnv_2042
d_'46'generalizedField'45'Γ_190585 v0
  = case coe v0 of
      C_mkGeneralizeTel_190599 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_190587 ::
  T_GeneralizeTel_190597 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130
d_'46'generalizedField'45'tx_190587 v0
  = case coe v0 of
      C_mkGeneralizeTel_190599 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_190589 ::
  T_GeneralizeTel_190597 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_190589 v0
  = case coe v0 of
      C_mkGeneralizeTel_190599 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_190591 ::
  T_GeneralizeTel_190597 -> Integer
d_'46'generalizedField'45'fees_190591 v0
  = case coe v0 of
      C_mkGeneralizeTel_190599 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_190593 ::
  T_GeneralizeTel_190597 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_190593 v0
  = case coe v0 of
      C_mkGeneralizeTel_190599 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_190595 ::
  T_GeneralizeTel_190597 -> Integer
d_'46'generalizedField'45'donations_190595 v0
  = case coe v0 of
      C_mkGeneralizeTel_190599 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.GeneralizeTel
d_GeneralizeTel_190597 a0 a1 = ()
data T_GeneralizeTel_190597
  = C_mkGeneralizeTel_190599 T_UTxOEnv_2042
                             MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Conway.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_203111 ::
  T_GeneralizeTel_203119 -> T_UTxOEnv_2042
d_'46'generalizedField'45'Γ_203111 v0
  = case coe v0 of
      C_mkGeneralizeTel_203121 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-s
d_'46'generalizedField'45's_203113 ::
  T_GeneralizeTel_203119 -> T_UTxOState_2060
d_'46'generalizedField'45's_203113 v0
  = case coe v0 of
      C_mkGeneralizeTel_203121 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_203115 ::
  T_GeneralizeTel_203119 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130
d_'46'generalizedField'45'tx_203115 v0
  = case coe v0 of
      C_mkGeneralizeTel_203121 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_203117 ::
  T_GeneralizeTel_203119 -> T_UTxOState_2060
d_'46'generalizedField'45's''_203117 v0
  = case coe v0 of
      C_mkGeneralizeTel_203121 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.GeneralizeTel
d_GeneralizeTel_203119 a0 a1 = ()
data T_GeneralizeTel_203119
  = C_mkGeneralizeTel_203121 T_UTxOEnv_2042 T_UTxOState_2060
                             MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 T_UTxOState_2060
