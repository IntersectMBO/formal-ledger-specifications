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
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Fees
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script
import qualified MAlonzo.Code.Ledger.Conway.ScriptValidation
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Prelude
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
-- _.Addr
d_Addr_30 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Addr_30 = erased
-- _.THash
d_THash_54 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_THash_54 = erased
-- _.Dec-isScript
d_Dec'45'isScript_62 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_62 ~v0 = du_Dec'45'isScript_62
du_Dec'45'isScript_62 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_62
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
-- _.Dec-isVKey
d_Dec'45'isVKey_66 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_66 ~v0 = du_Dec'45'isVKey_66
du_Dec'45'isVKey_66 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_66
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
-- _.DecEq-BaseAddr
d_DecEq'45'BaseAddr_76 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BaseAddr_236
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0)))
-- _.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_78 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0)))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_110 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0)))
-- _.ExUnits
d_ExUnits_152 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ExUnits_152 = erased
-- _.GovProposal
d_GovProposal_166 a0 = ()
-- _.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_196 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'RwdAddr_196 ~v0 = du_HasNetworkId'45'RwdAddr_196
du_HasNetworkId'45'RwdAddr_196 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'RwdAddr_196
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128
-- _.HasPParams
d_HasPParams_198 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_204 a0 a1 a2 = ()
-- _.HasgovActionDeposit
d_HasgovActionDeposit_212 a0 a1 a2 = ()
-- _.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_214 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428
d_HasgovActionDeposit'45'PParams_214 ~v0
  = du_HasgovActionDeposit'45'PParams_214
du_HasgovActionDeposit'45'PParams_214 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428
du_HasgovActionDeposit'45'PParams_214
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_460
-- _.MemoryEstimate
d_MemoryEstimate_264 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_MemoryEstimate_264 = erased
-- _.NetworkId
d_NetworkId_272 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny
d_NetworkId_272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
         (coe v0))
-- _.PParams
d_PParams_294 a0 = ()
-- _.PParamsOf
d_PParamsOf_298 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_298 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- _.ScriptHash
d_ScriptHash_352 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_352 = erased
-- _.Slot
d_Slot_396 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Slot_396 = erased
-- _.Tx
d_Tx_424 a0 = ()
-- _.TxBody
d_TxBody_426 a0 = ()
-- _.TxOut
d_TxOut_434 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxOut_434 = erased
-- _.TxOutʰ
d_TxOut'688'_436 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxOut'688'_436 = erased
-- _.UTxO
d_UTxO_440 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_UTxO_440 = erased
-- _.UTxOOf
d_UTxOOf_442 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2976 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_442 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2984 (coe v0)
-- _.Value
d_Value_460 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Value_460 = erased
-- _.coin
d_coin_486 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> Integer
d_coin_486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
         (coe v0))
-- _.getValueʰ
d_getValue'688'_528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_528 ~v0 = du_getValue'688'_528
du_getValue'688'_528 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_528
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3230
-- _.govActionDepositOf
d_govActionDepositOf_532 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428 ->
  AgdaAny -> Integer
d_govActionDepositOf_532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_436
      (coe v0)
-- _.inject
d_inject_540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  Integer -> AgdaAny
d_inject_540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
         (coe v0))
-- _.netId
d_netId_582 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_582 ~v0 = du_netId_582
du_netId_582 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_582 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- _.txOutHash
d_txOutHash_642 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3220 (coe v0)
-- _.GovProposal.action
d_action_786 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778
d_action_786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_846 (coe v0)
-- _.GovProposal.anchor
d_anchor_788 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_750
d_anchor_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_856 (coe v0)
-- _.GovProposal.deposit
d_deposit_790 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  Integer
d_deposit_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_852 (coe v0)
-- _.GovProposal.policy
d_policy_792 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  Maybe AgdaAny
d_policy_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_850 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_794 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  AgdaAny
d_prevAction_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_848
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_796 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_854
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_844 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_930 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_930 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_938 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2976 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_938 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2984 (coe v0)
-- _.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_946 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428 ->
  AgdaAny -> Integer
d_govActionDepositOf_946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_436
      (coe v0)
-- _.PParams.Emax
d_Emax_1054 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_Emax_1054 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_380 (coe v0)
-- _.PParams.a
d_a_1056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_a_1056 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_352 (coe v0)
-- _.PParams.a0
d_a0_1058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1058 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_384 (coe v0)
-- _.PParams.b
d_b_1060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_b_1060 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_354 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMaxTermLength_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_396 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMinSize_1064 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_394 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_coinsPerUTxOByte_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_364 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_collateralPercentage_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_386
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_costmdls_1070 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_388 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_drepActivity_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_404 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_drepDeposit_1074 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_402 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionDeposit_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_400 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionLifetime_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_398 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_keyDeposit_1082 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_356 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxBlockExUnits_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_344 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxBlockSize_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_336 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxCollateralInputs_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_348
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxHeaderSize_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_340 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerBlock_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_372
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerTx_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_370
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxTxExUnits_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_342 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxTxSize_1098 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_338 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxValSize_1100 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_346 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_368
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_minUTxOValue_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_378 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_360 (coe v0)
-- _.PParams.nopt
d_nopt_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_nopt_1108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_382 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1110 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_poolDeposit_1110 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_358 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v0)
-- _.PParams.prices
d_prices_1114 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_prices_1114 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_366 (coe v0)
-- _.PParams.pv
d_pv_1116 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1116 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_350 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1118 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_376
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1120 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_refScriptCostStride_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_374
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1122 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1122 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_362 (coe v0)
-- _.Tx.body
d_body_1536 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990
d_body_1536 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v0)
-- _.Tx.isValid
d_isValid_1538 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 -> Bool
d_isValid_1538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3196 (coe v0)
-- _.Tx.txAD
d_txAD_1540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 -> Maybe AgdaAny
d_txAD_1540 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3198 (coe v0)
-- _.Tx.wits
d_wits_1542 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3162
d_wits_1542 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194 (coe v0)
-- _.TxBody.collateral
d_collateral_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3066 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe Integer
d_curTreasury_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3060 (coe v0)
-- _.TxBody.mint
d_mint_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> AgdaAny
d_mint_1550 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3040 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3034 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1554 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> [AgdaAny]
d_reqSigHash_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3068 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe AgdaAny
d_scriptIntHash_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3070
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1558 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe AgdaAny
d_txADhash_1558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3056 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe AgdaAny
d_txNetworkId_1560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3058 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
d_txcerts_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3044 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
d_txdonation_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3052 (coe v0)
-- _.TxBody.txfee
d_txfee_1566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
d_txfee_1566 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3038 (coe v0)
-- _.TxBody.txid
d_txid_1568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> AgdaAny
d_txid_1568 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3064 (coe v0)
-- _.TxBody.txins
d_txins_1570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1570 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032 (coe v0)
-- _.TxBody.txouts
d_txouts_1572 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1572 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3036 (coe v0)
-- _.TxBody.txprop
d_txprop_1574 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832]
d_txprop_1574 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3050 (coe v0)
-- _.TxBody.txsize
d_txsize_1576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
d_txsize_1576 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3062 (coe v0)
-- _.TxBody.txup
d_txup_1578 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1578 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3054 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1580 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1580 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3042 (coe v0)
-- _.TxBody.txvote
d_txvote_1582 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814]
d_txvote_1582 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3048 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1584 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3046 (coe v0)
-- Ledger.Conway.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1670 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1670 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.ScriptValidation.d_collectPhaseTwoScriptInputs_2626
      (coe v0) (coe v1)
-- Ledger.Conway.Utxo._.evalScripts
d_evalScripts_1680 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1680 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.ScriptValidation.d_evalScripts_2644
      (coe v0) (coe v1)
-- Ledger.Conway.Utxo._.DCert
d_DCert_1788 a0 a1 = ()
-- Ledger.Conway.Utxo._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1806 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1806 v0 ~v1
  = du_DecEq'45'DepositPurpose_1806 v0
du_DecEq'45'DepositPurpose_1806 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
         (coe v0))
-- Ledger.Conway.Utxo._.DepositPurpose
d_DepositPurpose_1810 a0 a1 = ()
-- Ledger.Conway.Utxo._.Deposits
d_Deposits_1812 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 -> ()
d_Deposits_1812 = erased
-- Ledger.Conway.Utxo._.DepositsOf
d_DepositsOf_1814 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_926 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1814 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_934 (coe v0)
-- Ledger.Conway.Utxo._.HasDeposits
d_HasDeposits_1856 a0 a1 a2 a3 = ()
-- Ledger.Conway.Utxo._.HasDeposits.DepositsOf
d_DepositsOf_2046 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_926 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2046 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_934 (coe v0)
-- Ledger.Conway.Utxo.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_2088 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isTwoPhaseScriptAddress_2088 = erased
-- Ledger.Conway.Utxo.isTwoPhaseScriptAddress?
d_isTwoPhaseScriptAddress'63'_2106 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'63'_2106 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress'63'_2106 v0 v2 v3 v4
du_isTwoPhaseScriptAddress'63'_2106 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'63'_2106 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (let v4
             = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
                    (coe
                       MAlonzo.Code.Ledger.Conway.Address.du_payCred_154 (coe v3))) in
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
                                         (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
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
                                                  MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
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
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
                                                                    (coe v0) (coe v1) (coe v2))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
                                                                    (coe v3) (coe v7))
                                                                 (coe v11) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3334
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
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
                                                                        (coe v0) (coe v1) (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
                                                                        (coe v3) (coe v7))
                                                                     (coe v12) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3334
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
                                             (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
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
                                                      MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
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
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
                                                                        (coe v0) (coe v1) (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
                                                                        (coe v3) (coe v8))
                                                                     (coe v12) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3334
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
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
                                                                            (coe v0) (coe v1)
                                                                            (coe v2))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
                                                                            (coe v3) (coe v8))
                                                                         (coe v13) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3334
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
-- Ledger.Conway.Utxo.isTwoPhaseScriptAddress′
d_isTwoPhaseScriptAddress'8242'_2160 a0 a1 a2 a3 a4 = ()
newtype T_isTwoPhaseScriptAddress'8242'_2160 = C_wrap_2172 AgdaAny
-- Ledger.Conway.Utxo.isTwoPhaseScriptAddress′.unwrap
d_unwrap_2170 :: T_isTwoPhaseScriptAddress'8242'_2160 -> AgdaAny
d_unwrap_2170 v0
  = case coe v0 of
      C_wrap_2172 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.isTwoPhaseScriptAddress′?
d_isTwoPhaseScriptAddress'8242''63'_2180 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'8242''63'_2180 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress'8242''63'_2180 v0 v2 v3 v4
du_isTwoPhaseScriptAddress'8242''63'_2180 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'8242''63'_2180 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe C_wrap_2172) (coe (\ v4 -> d_unwrap_2170 (coe v4)))
         (let v4
                = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                    (coe
                       MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
                       (coe
                          MAlonzo.Code.Ledger.Conway.Address.du_payCred_154 (coe v3))) in
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
                                            (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
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
                                                     MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
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
                                                                       MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
                                                                       (coe v0) (coe v1) (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
                                                                       (coe v3) (coe v7))
                                                                    (coe v11) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3334
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
                                                                           MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
                                                                           (coe v0) (coe v1)
                                                                           (coe v2))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
                                                                           (coe v3) (coe v7))
                                                                        (coe v12) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3334
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
                                                (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
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
                                                                           MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
                                                                           (coe v0) (coe v1)
                                                                           (coe v2))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
                                                                           (coe v3) (coe v8))
                                                                        (coe v12) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3334
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
                                                                               MAlonzo.Code.Ledger.Conway.Transaction.du_m_3328
                                                                               (coe v0) (coe v1)
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
                                                                               (coe v3) (coe v8))
                                                                            (coe v13) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3334
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
-- Ledger.Conway.Utxo.getDataHashes
d_getDataHashes_2192 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2192 ~v0 ~v1 v2 = du_getDataHashes_2192 v2
du_getDataHashes_2192 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2192 v0
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
-- Ledger.Conway.Utxo.getInputHashes
d_getInputHashes_2196 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2196 v0 ~v1 v2 v3
  = du_getInputHashes_2196 v0 v2 v3
du_getInputHashes_2196 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2196 v0 v1 v2
  = coe
      du_getDataHashes_2192
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
         (\ v3 ->
            coe
              du_isTwoPhaseScriptAddress'8242''63'_2180 (coe v0) (coe v1)
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
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
                        (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v1))))))
-- Ledger.Conway.Utxo.totExUnits
d_totExUnits_2252 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 -> AgdaAny
d_totExUnits_2252 v0 ~v1 v2 = du_totExUnits_2252 v0 v2
du_totExUnits_2252 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 -> AgdaAny
du_totExUnits_2252 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Tag_20)
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
               (coe
                  MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                  (coe
                     MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
               (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3178
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194 (coe v1)))
-- Ledger.Conway.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2264 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  Integer
d_utxoEntrySizeWithoutVal_2264 ~v0
  = du_utxoEntrySizeWithoutVal_2264
du_utxoEntrySizeWithoutVal_2264 :: Integer
du_utxoEntrySizeWithoutVal_2264 = coe (8 :: Integer)
-- Ledger.Conway.Utxo.utxoEntrySize
d_utxoEntrySize_2266 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2266 v0 ~v1 v2 = du_utxoEntrySize_2266 v0 v2
du_utxoEntrySize_2266 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2266 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_size_204
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3230
            (coe v1)))
-- Ledger.Conway.Utxo.UTxOEnv
d_UTxOEnv_2270 a0 a1 = ()
data T_UTxOEnv_2270
  = C_UTxOEnv'46'constructor_17679 AgdaAny
                                   MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 Integer
-- Ledger.Conway.Utxo.UTxOEnv.slot
d_slot_2278 :: T_UTxOEnv_2270 -> AgdaAny
d_slot_2278 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_17679 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOEnv.pparams
d_pparams_2280 ::
  T_UTxOEnv_2270 -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_pparams_2280 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_17679 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOEnv.treasury
d_treasury_2282 :: T_UTxOEnv_2270 -> Integer
d_treasury_2282 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_17679 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2284 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410
d_HasPParams'45'UTxOEnv_2284 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2284
du_HasPParams'45'UTxOEnv_2284 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410
du_HasPParams'45'UTxOEnv_2284
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.C_HasPParams'46'constructor_9199
      (coe (\ v0 -> d_pparams_2280 (coe v0)))
-- Ledger.Conway.Utxo.HasgovActionDeposit-UTxOEnv
d_HasgovActionDeposit'45'UTxOEnv_2286 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428
d_HasgovActionDeposit'45'UTxOEnv_2286 ~v0 ~v1
  = du_HasgovActionDeposit'45'UTxOEnv_2286
du_HasgovActionDeposit'45'UTxOEnv_2286 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428
du_HasgovActionDeposit'45'UTxOEnv_2286
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.C_HasgovActionDeposit'46'constructor_9331
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_436
              (coe
                 MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_460)
              (d_pparams_2280 (coe v0))))
-- Ledger.Conway.Utxo.UTxOState
d_UTxOState_2288 a0 a1 = ()
data T_UTxOState_2288
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_2306 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Conway.Utxo.UTxOState.utxo
d_utxo_2298 ::
  T_UTxOState_2288 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2298 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2306 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOState.fees
d_fees_2300 :: T_UTxOState_2288 -> Integer
d_fees_2300 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2306 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOState.deposits
d_deposits_2302 ::
  T_UTxOState_2288 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2302 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2306 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOState.donations
d_donations_2304 :: T_UTxOState_2288 -> Integer
d_donations_2304 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2306 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.HasUTxOState
d_HasUTxOState_2312 a0 a1 a2 a3 = ()
newtype T_HasUTxOState_2312
  = C_HasUTxOState'46'constructor_18433 (AgdaAny -> T_UTxOState_2288)
-- Ledger.Conway.Utxo.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2320 ::
  T_HasUTxOState_2312 -> AgdaAny -> T_UTxOState_2288
d_UTxOStateOf_2320 v0
  = case coe v0 of
      C_HasUTxOState'46'constructor_18433 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo._.UTxOStateOf
d_UTxOStateOf_2324 ::
  T_HasUTxOState_2312 -> AgdaAny -> T_UTxOState_2288
d_UTxOStateOf_2324 v0 = coe d_UTxOStateOf_2320 (coe v0)
-- Ledger.Conway.Utxo.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2326 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_926
d_HasDeposits'45'UTxOState_2326 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2326
du_HasDeposits'45'UTxOState_2326 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_926
du_HasDeposits'45'UTxOState_2326
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasDeposits'46'constructor_2989
      (coe (\ v0 -> d_deposits_2302 (coe v0)))
-- Ledger.Conway.Utxo.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2328 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2976
d_HasUTxO'45'UTxOState_2328 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2328
du_HasUTxO'45'UTxOState_2328 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2976
du_HasUTxO'45'UTxOState_2328
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.C_HasUTxO'46'constructor_18503
      (coe (\ v0 -> d_utxo_2298 (coe v0)))
-- Ledger.Conway.Utxo.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2330 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2330 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2330
du_HasCast'45'UTxOEnv_2330 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2330
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
                                 (2270 :: Integer) (762436563079004261 :: Integer)
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
                                 (396 :: Integer) (762436563079004261 :: Integer) "_.Slot"
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
                                    (2270 :: Integer) (762436563079004261 :: Integer)
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
                                    (294 :: Integer) (762436563079004261 :: Integer) "_.PParams"
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
                                       (2270 :: Integer) (762436563079004261 :: Integer)
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
         (coe C_UTxOEnv'46'constructor_17679))
-- Ledger.Conway.Utxo.HasCast-UTxOState
d_HasCast'45'UTxOState_2332 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2332 ~v0 ~v1 = du_HasCast'45'UTxOState_2332
du_HasCast'45'UTxOState_2332 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2332
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
                                 (2288 :: Integer) (762436563079004261 :: Integer)
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
                                 (440 :: Integer) (762436563079004261 :: Integer) "_.UTxO"
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
                                    (2288 :: Integer) (762436563079004261 :: Integer)
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
                                       (2288 :: Integer) (762436563079004261 :: Integer)
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
                                       (1812 :: Integer) (762436563079004261 :: Integer)
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
                                          (2288 :: Integer) (762436563079004261 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'44'_'10215''7512'_2306))
-- Ledger.Conway.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2334 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2334
  = C_UTXO'45'inductive_3420 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Utxo._._.outs
d_outs_2344 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2344 ~v0 ~v1 v2 = du_outs_2344 v2
du_outs_2344 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2344 v0
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
              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3064 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3036 (coe v0))
-- Ledger.Conway.Utxo._._.balance
d_balance_2350 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2350 v0 ~v1 v2 = du_balance_2350 v0 v2
du_balance_2350 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2350 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
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
                     MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
               (coe
                  MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
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
                              MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                        (coe
                           MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                           (coe
                              MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
            (coe v0)))
      (coe MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3230)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3220 (coe v0))
         (coe v1))
-- Ledger.Conway.Utxo._._.cbalance
d_cbalance_2356 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2356 v0 ~v1 v2 = du_cbalance_2356 v0 v2
du_cbalance_2356 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2356 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
      (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
         (coe v0))
      (coe du_balance_2350 (coe v0) (coe v1))
-- Ledger.Conway.Utxo._._.refScriptsSize
d_refScriptsSize_2360 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 -> Integer
d_refScriptsSize_2360 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Base.d_sum_280
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Abstract.d_scriptSize_2004 (coe v1))
         (MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3254
            (coe v0) (coe v3) (coe v2)))
-- Ledger.Conway.Utxo._._.minfee
d_minfee_2366 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 -> Integer
d_minfee_2366 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Conway.Abstract.d_txscriptfee_1996 v1
               (MAlonzo.Code.Ledger.Conway.PParams.d_prices_366 (coe v2))
               (coe du_totExUnits_2252 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Fees.d_scriptsCost_1638 (coe v0)
               (coe v2)
               (coe d_refScriptsSize_2360 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe MAlonzo.Code.Ledger.Conway.PParams.d_b_354 (coe v2)))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.Conway.PParams.d_a_352 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3062
            (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v4))))
-- Ledger.Conway.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2374 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2374 v0 ~v1 = du_HasCoin'45'UTxO_2374 v0
du_HasCoin'45'UTxO_2374 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2374 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_2356 (coe v0))
-- Ledger.Conway.Utxo.certDeposit
d_certDeposit_2376 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2376 ~v0 ~v1 v2 v3 = du_certDeposit_2376 v2 v3
du_certDeposit_2376 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2376 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1002 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_908 (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1006 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Conway.Certs.C_PoolDeposit_910 (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_358 (coe v1)))
         MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1010 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_912 (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Conway.Certs.C_reg_1016 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_908 (coe v3))
                   (coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_356 (coe v1)))
         _ -> coe v2)
-- Ledger.Conway.Utxo.certRefund
d_certRefund_2394 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_906]
d_certRefund_2394 ~v0 ~v1 v2 = du_certRefund_2394 v2
du_certRefund_2394 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_906]
du_certRefund_2394 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_442
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1004 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_908 (coe v2))
         MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1012 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_912 (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Utxo.ValidCertDeposits
d_ValidCertDeposits_2404 a0 a1 a2 a3 a4 = ()
data T_ValidCertDeposits_2404
  = C_'91''93'_2410 | C_delegate_2422 T_ValidCertDeposits_2404 |
    C_regpool_2430 T_ValidCertDeposits_2404 |
    C_regdrep_2440 T_ValidCertDeposits_2404 |
    C_reg_2448 T_ValidCertDeposits_2404 |
    C_dereg_2458 Integer
                 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_ValidCertDeposits_2404 |
    C_deregdrep_2466 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                     T_ValidCertDeposits_2404 |
    C_ccreghot_2474 T_ValidCertDeposits_2404 |
    C_retirepool_2482 T_ValidCertDeposits_2404
-- Ledger.Conway.Utxo.validCertDeposits?
d_validCertDeposits'63'_2490 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCertDeposits'63'_2490 v0 ~v1 v2 v3 v4
  = du_validCertDeposits'63'_2490 v0 v2 v3 v4
du_validCertDeposits'63'_2490 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCertDeposits'63'_2490 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe C_'91''93'_2410))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1002 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_delegate_2422)
                    (coe
                       (\ v10 ->
                          case coe v10 of
                            C_delegate_2422 v16 -> coe v16
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2490 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
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
                                   MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_908
                                   (coe v6))
                                (coe v9))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1004 v6 v7
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
                                         (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                                               (coe v0)))
                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_908
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
                                                      C_dereg_2458 v8 v12
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                         erased))
                                                   (coe
                                                      (\ v13 ->
                                                         case coe v13 of
                                                           C_dereg_2458 v16 v18 v19 v20 -> coe v20
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2490 (coe v0)
                                                      (coe v1)
                                                      (let v13
                                                             = MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
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
                                                                  MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_908
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
                                         MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_908
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
                                                      C_dereg_2458
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
                                                                  MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_908
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
                                                                  MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_908
                                                                  (coe v6)))
                                                            v11))
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                         erased))
                                                   (coe
                                                      (\ v12 ->
                                                         case coe v12 of
                                                           C_dereg_2458 v15 v17 v18 v19 -> coe v19
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2490 (coe v0)
                                                      (coe v1)
                                                      (let v12
                                                             = MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
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
                                                                  MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_908
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
             MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1006 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regpool_2430)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_regpool_2430 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2490 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
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
                                (coe MAlonzo.Code.Ledger.Conway.Certs.C_PoolDeposit_910 (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_358 (coe v1)))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_retirepool_1008 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_retirepool_2482)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_retirepool_2482 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2490 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1010 v6 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regdrep_2440)
                    (coe
                       (\ v9 ->
                          case coe v9 of
                            C_regdrep_2440 v14 -> coe v14
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2490 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
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
                                (coe MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_912 (coe v6))
                                (coe v7))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1012 v6 v7
               -> let v8
                        = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                            (coe
                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe
                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                  (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                                        (coe v0)))
                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_912 (coe v6))
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
                                            (coe C_deregdrep_2466 v11)
                                            (coe
                                               (\ v12 ->
                                                  case coe v12 of
                                                    C_deregdrep_2466 v16 v17 -> coe v17
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               du_validCertDeposits'63'_2490 (coe v0) (coe v1)
                                               (let v12
                                                      = MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
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
                                                           MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_912
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
             MAlonzo.Code.Ledger.Conway.Certs.C_ccreghot_1014 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_ccreghot_2474)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_ccreghot_2474 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2490 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_reg_1016 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_reg_2448)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_reg_2448 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2490 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
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
                                   MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_908
                                   (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_356 (coe v1)))))
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_2662 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_2662 v0 ~v1 v2 v3 v4
  = du_Dec'45'ValidCertDeposits_2662 v0 v2 v3 v4
du_Dec'45'ValidCertDeposits_2662 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_2662 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         du_validCertDeposits'63'_2490 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Utxo.updateCertDeposits
d_updateCertDeposits_2664 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2664 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_2664 v0 v2 v3 v4
du_updateCertDeposits_2664 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2664 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> let v6
                 = coe
                     du_updateCertDeposits_2664 (coe v0) (coe v1) (coe v5) (coe v3) in
           coe
             (case coe v4 of
                MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1002 v7 v8 v9 v10
                  -> coe
                       du_updateCertDeposits_2664 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                                (coe v0)))
                          v3 (coe du_certDeposit_2376 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1004 v7 v8
                  -> coe
                       du_updateCertDeposits_2664 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2394 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1006 v7 v8
                  -> coe
                       du_updateCertDeposits_2664 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                                (coe v0)))
                          v3 (coe du_certDeposit_2376 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1010 v7 v8 v9
                  -> coe
                       du_updateCertDeposits_2664 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                                (coe v0)))
                          v3 (coe du_certDeposit_2376 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1012 v7 v8
                  -> coe
                       du_updateCertDeposits_2664 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2394 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Certs.C_reg_1016 v7 v8
                  -> coe
                       du_updateCertDeposits_2664 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                                (coe v0)))
                          v3 (coe du_certDeposit_2376 (coe v4) (coe v1)))
                _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.updateProposalDeposits
d_updateProposalDeposits_2742 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2742 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_2742 v0 v2 v3 v4 v5
du_updateProposalDeposits_2742 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2742 v0 v1 v2 v3 v4
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
             (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                (coe
                   MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                   (coe v0)))
             (coe
                du_updateProposalDeposits_2742 (coe v0) (coe v6) (coe v2) (coe v3)
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
                      MAlonzo.Code.Ledger.Conway.Certs.C_GovActionDeposit_914
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_284 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.updateDeposits
d_updateDeposits_2754 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2754 v0 ~v1 v2 v3 v4
  = du_updateDeposits_2754 v0 v2 v3 v4
du_updateDeposits_2754 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2754 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_2664 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3044 (coe v2))
      (coe
         du_updateProposalDeposits_2742 (coe v0)
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3050 (coe v2))
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3064 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_400 (coe v1))
         (coe v3))
-- Ledger.Conway.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_2806 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832] ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2806 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_2806 v0 v2 v3 v4
du_proposalDepositsΔ_2806 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832] ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2806 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_2742 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3064 (coe v3))
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_400 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Conway.Utxo.depositsChange
d_depositsChange_2860 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2860 v0 ~v1 v2 v3 v4
  = du_depositsChange_2860 v0 v2 v3 v4
du_depositsChange_2860 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2860 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
               (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_2754 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
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
d_inInterval_2870 a0 a1 a2 a3 = ()
data T_inInterval_2870
  = C_both_2878 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2882 AgdaAny | C_upper_2886 AgdaAny | C_none_2888
-- Ledger.Conway.Utxo.Dec-inInterval
d_Dec'45'inInterval_2890 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2890 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2890 v0 v2 v3
du_Dec'45'inInterval_2890 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2890 v0 v1 v2
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
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_266
                                            (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
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
                                                                                    C_both_2878
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
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
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
                                                         (coe C_lower_2882 v9))
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
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
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
                                                         (coe C_upper_2886 v9))
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
                                 (coe C_none_2888))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2992 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2992 v0 ~v1
  = du_HasCoin'45'UTxOState_2992 v0
du_HasCoin'45'UTxOState_2992 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2992 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2356 (coe v0) (coe d_utxo_2298 (coe v1)))
                    (coe d_donations_2304 (coe v1)))
                 (coe d_fees_2300 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                 (coe
                    MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
                    (coe
                       MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                 (coe (\ v2 -> v2)) (coe d_deposits_2302 (coe v1)))))
-- Ledger.Conway.Utxo.coinPolicies
d_coinPolicies_2996 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  [AgdaAny]
d_coinPolicies_2996 v0 ~v1 = du_coinPolicies_2996 v0
du_coinPolicies_2996 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [AgdaAny]
du_coinPolicies_2996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
      (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
            (coe v0))
         (1 :: Integer))
-- Ledger.Conway.Utxo.isAdaOnly
d_isAdaOnly_2998 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  AgdaAny -> ()
d_isAdaOnly_2998 = erased
-- Ledger.Conway.Utxo.feesOK
d_feesOK_3002 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_3002 = erased
-- Ledger.Conway.Utxo._.collateralRange
d_collateralRange_3150 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_3150 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_3150 v0 v3 v4
du_collateralRange_3150 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_3150 v0 v1 v2
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
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
                  (coe v0))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3220 (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3066
            (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v1))))
-- Ledger.Conway.Utxo._.bal
d_bal_3152 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_3152 v0 ~v1 ~v2 v3 v4 = du_bal_3152 v0 v3 v4
du_bal_3152 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_3152 v0 v1 v2
  = coe
      du_balance_2350 (coe v0)
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
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
                  (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3066
            (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v1))))
-- Ledger.Conway.Utxo._._.depositRefunds
d_depositRefunds_3166 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  T_UTxOState_2288 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
d_depositRefunds_3166 v0 ~v1 v2 v3 v4
  = du_depositRefunds_3166 v0 v2 v3 v4
du_depositRefunds_3166 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  T_UTxOState_2288 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
du_depositRefunds_3166 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_negPart_70
      (coe
         du_depositsChange_2860 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2302 (coe v2)))
-- Ledger.Conway.Utxo._._.newDeposits
d_newDeposits_3174 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  T_UTxOState_2288 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
d_newDeposits_3174 v0 ~v1 v2 v3 v4
  = du_newDeposits_3174 v0 v2 v3 v4
du_newDeposits_3174 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  T_UTxOState_2288 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
du_newDeposits_3174 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_posPart_58
      (coe
         du_depositsChange_2860 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2302 (coe v2)))
-- Ledger.Conway.Utxo._._.consumed
d_consumed_3182 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  T_UTxOState_2288 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> AgdaAny
d_consumed_3182 v0 ~v1 v2 v3 v4 = du_consumed_3182 v0 v2 v3 v4
du_consumed_3182 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  T_UTxOState_2288 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> AgdaAny
du_consumed_3182 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                     (coe v0))))
            (coe
               du_balance_2350 (coe v0)
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
                           MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                           (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
                           (coe v0))))
                  (coe d_utxo_2298 (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032 (coe v3))))
            (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3040 (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
            (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v0))
            (coe du_depositRefunds_3166 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
            (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
            (coe
               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
               (coe
                  MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
            (coe (\ v4 -> v4))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3046 (coe v3))))
-- Ledger.Conway.Utxo._._.produced
d_produced_3190 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  T_UTxOState_2288 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> AgdaAny
d_produced_3190 v0 ~v1 v2 v3 v4 = du_produced_3190 v0 v2 v3 v4
du_produced_3190 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  T_UTxOState_2288 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> AgdaAny
du_produced_3190 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                     (coe v0))))
            (coe du_balance_2350 (coe v0) (coe du_outs_2344 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
               (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                  (coe v0))
               (MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3038 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
            (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v0))
            (coe du_newDeposits_3174 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3052
            (coe v3)))
-- Ledger.Conway.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__3214 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__3214
  = C_Scripts'45'Yes_3272 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_3330 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Utxo._.isValid
d_isValid_3220 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_196987 -> Bool
d_isValid_3220 ~v0 ~v1 v2 = du_isValid_3220 v2
du_isValid_3220 :: T_GeneralizeTel_196987 -> Bool
du_isValid_3220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3196
      (coe d_'46'generalizedField'45'tx_196977 (coe v0))
-- Ledger.Conway.Utxo._.body
d_body_3224 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_196987 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990
d_body_3224 ~v0 ~v1 v2 = du_body_3224 v2
du_body_3224 ::
  T_GeneralizeTel_196987 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990
du_body_3224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
      (coe d_'46'generalizedField'45'tx_196977 (coe v0))
-- Ledger.Conway.Utxo._.txcerts
d_txcerts_3246 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_196987 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
d_txcerts_3246 ~v0 ~v1 v2 = du_txcerts_3246 v2
du_txcerts_3246 ::
  T_GeneralizeTel_196987 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
du_txcerts_3246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3044
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_196977 (coe v0)))
-- Ledger.Conway.Utxo._.txdonation
d_txdonation_3248 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_196987 -> Integer
d_txdonation_3248 ~v0 ~v1 v2 = du_txdonation_3248 v2
du_txdonation_3248 :: T_GeneralizeTel_196987 -> Integer
du_txdonation_3248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3052
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_196977 (coe v0)))
-- Ledger.Conway.Utxo._.txfee
d_txfee_3250 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_196987 -> Integer
d_txfee_3250 ~v0 ~v1 v2 = du_txfee_3250 v2
du_txfee_3250 :: T_GeneralizeTel_196987 -> Integer
du_txfee_3250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3038
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_196977 (coe v0)))
-- Ledger.Conway.Utxo._.txins
d_txins_3254 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_196987 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3254 ~v0 ~v1 v2 = du_txins_3254 v2
du_txins_3254 ::
  T_GeneralizeTel_196987 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_196977 (coe v0)))
-- Ledger.Conway.Utxo._.isValid
d_isValid_3278 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_203901 -> Bool
d_isValid_3278 ~v0 ~v1 v2 = du_isValid_3278 v2
du_isValid_3278 :: T_GeneralizeTel_203901 -> Bool
du_isValid_3278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3196
      (coe d_'46'generalizedField'45'tx_203891 (coe v0))
-- Ledger.Conway.Utxo._.body
d_body_3282 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_203901 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990
d_body_3282 ~v0 ~v1 v2 = du_body_3282 v2
du_body_3282 ::
  T_GeneralizeTel_203901 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990
du_body_3282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
      (coe d_'46'generalizedField'45'tx_203891 (coe v0))
-- Ledger.Conway.Utxo._.collateral
d_collateral_3288 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_203901 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3288 ~v0 ~v1 v2 = du_collateral_3288 v2
du_collateral_3288 ::
  T_GeneralizeTel_203901 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_3288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3066
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_203891 (coe v0)))
-- Ledger.Conway.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_3332 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_UTxOEnv_2270 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_3332 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            du_Dec'45'ValidCertDeposits_2662 (coe v0)
            (coe d_pparams_2280 (coe v2)) (coe v5)
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3044
               (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v3))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.ScriptValidation.d_evalScripts_2644
                  (coe v0) (coe v1) (coe v3)
                  (coe
                     MAlonzo.Code.Ledger.Conway.ScriptValidation.d_collectPhaseTwoScriptInputs_2626
                     (coe v0) (coe v1) (coe d_pparams_2280 (coe v2)) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3196 (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3196 (coe v3))
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
-- Ledger.Conway.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_3334 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_UTxOEnv_2270 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_3334 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.ScriptValidation.d_evalScripts_2644
               (coe v0) (coe v1) (coe v3)
               (coe
                  MAlonzo.Code.Ledger.Conway.ScriptValidation.d_collectPhaseTwoScriptInputs_2626
                  (coe v0) (coe v1) (coe d_pparams_2280 (coe v2)) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3196 (coe v3)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3196 (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Utxo._.body
d_body_3350 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_216121 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990
d_body_3350 ~v0 ~v1 v2 = du_body_3350 v2
du_body_3350 ::
  T_GeneralizeTel_216121 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990
du_body_3350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
      (coe d_'46'generalizedField'45'tx_216117 (coe v0))
-- Ledger.Conway.Utxo._.curTreasury
d_curTreasury_3358 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_216121 -> Maybe Integer
d_curTreasury_3358 ~v0 ~v1 v2 = du_curTreasury_3358 v2
du_curTreasury_3358 :: T_GeneralizeTel_216121 -> Maybe Integer
du_curTreasury_3358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3060
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_216117 (coe v0)))
-- Ledger.Conway.Utxo._.mint
d_mint_3360 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_216121 -> AgdaAny
d_mint_3360 ~v0 ~v1 v2 = du_mint_3360 v2
du_mint_3360 :: T_GeneralizeTel_216121 -> AgdaAny
du_mint_3360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3040
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_216117 (coe v0)))
-- Ledger.Conway.Utxo._.refInputs
d_refInputs_3362 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_216121 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3362 ~v0 ~v1 v2 = du_refInputs_3362 v2
du_refInputs_3362 ::
  T_GeneralizeTel_216121 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3034
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_216117 (coe v0)))
-- Ledger.Conway.Utxo._.txNetworkId
d_txNetworkId_3370 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_216121 -> Maybe AgdaAny
d_txNetworkId_3370 ~v0 ~v1 v2 = du_txNetworkId_3370 v2
du_txNetworkId_3370 :: T_GeneralizeTel_216121 -> Maybe AgdaAny
du_txNetworkId_3370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3058
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_216117 (coe v0)))
-- Ledger.Conway.Utxo._.txins
d_txins_3380 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_216121 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3380 ~v0 ~v1 v2 = du_txins_3380 v2
du_txins_3380 ::
  T_GeneralizeTel_216121 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_216117 (coe v0)))
-- Ledger.Conway.Utxo._.txouts
d_txouts_3382 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_216121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3382 ~v0 ~v1 v2 = du_txouts_3382 v2
du_txouts_3382 ::
  T_GeneralizeTel_216121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3036
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_216117 (coe v0)))
-- Ledger.Conway.Utxo._.txsize
d_txsize_3386 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_216121 -> Integer
d_txsize_3386 ~v0 ~v1 v2 = du_txsize_3386 v2
du_txsize_3386 :: T_GeneralizeTel_216121 -> Integer
du_txsize_3386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3062
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_216117 (coe v0)))
-- Ledger.Conway.Utxo._.txvldt
d_txvldt_3390 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_216121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3390 ~v0 ~v1 v2 = du_txvldt_3390 v2
du_txvldt_3390 ::
  T_GeneralizeTel_216121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3042
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_216117 (coe v0)))
-- Ledger.Conway.Utxo._.txwdrls
d_txwdrls_3394 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_GeneralizeTel_216121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3394 ~v0 ~v1 v2 = du_txwdrls_3394 v2
du_txwdrls_3394 ::
  T_GeneralizeTel_216121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3046
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_216117 (coe v0)))
-- Ledger.Conway.Utxo.UTXO-premises
d_UTXO'45'premises_3464 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984 ->
  T_UTxOEnv_2270 ->
  T_UTxOState_2288 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3464 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v4)))
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
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe d_utxo_2298 (coe v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032
                     (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v4)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3034
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v4)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
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
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v4)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3034
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v4))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_2890 (coe v0) (coe d_slot_2278 (coe v2))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3042
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v4))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (d_minfee_2366
                              (coe v0) (coe v1) (coe d_pparams_2280 (coe v2))
                              (coe d_utxo_2298 (coe v3)) (coe v4))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3038
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v4))))
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
                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3178
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194
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
                                    du_collateralRange_3150 (coe v0) (coe v4)
                                    (coe d_utxo_2298 (coe v3))))
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
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                                     (coe v0)))
                                               (coe v5) (coe du_coinPolicies_2996 (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                                             (coe v0))
                                          (coe
                                             du_bal_3152 (coe v0) (coe v4)
                                             (coe d_utxo_2298 (coe v3)))))
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
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
                                                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                                                     (coe v0))
                                                  (coe
                                                     du_bal_3152 (coe v0) (coe v4)
                                                     (coe d_utxo_2298 (coe v3))))))
                                       (coe du_coinPolicies_2996 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3038
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_386
                                             (coe d_pparams_2280 (coe v2))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
                                             (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                                                (coe v0))
                                             (coe
                                                du_bal_3152 (coe v0) (coe v4)
                                                (coe d_utxo_2298 (coe v3))))
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
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3066
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
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
                              MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                                 (coe v0)))
                           (coe
                              du_consumed_3182 (coe v0) (coe d_pparams_2280 (coe v2)) (coe v3)
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v4)))
                           (coe
                              du_produced_3190 (coe v0) (coe d_pparams_2280 (coe v2)) (coe v3)
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v4))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                                    (coe v0))
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3040
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
                                       (coe v4))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3062
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v4)))
                                 (MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_338
                                    (coe d_pparams_2280 (coe v2))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (d_refScriptsSize_2360
                                       (coe v0) (coe v1) (coe d_utxo_2298 (coe v3)) (coe v4))
                                    (MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_370
                                       (coe d_pparams_2280 (coe v2))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Dec'45''8804''7511'_214
                                               (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
                                                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           du_utxoEntrySize_2266 (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_364
                                                        (coe d_pparams_2280 (coe v2)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3230
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5)))))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_116
                                          (coe
                                             MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3220
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3036
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
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
                                                     MAlonzo.Code.Ledger.Conway.Abstract.d_serSize_1998
                                                     v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3230
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_346
                                                     (coe d_pparams_2280 (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_116
                                             (coe
                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3220
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3036
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
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
                                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3220
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3036
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
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
                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Address.du_netId_158
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3220
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3036
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
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
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Address.d_net_102
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3046
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3058
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
                                                            (coe v4)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3060
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192
                                                            (coe v4)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe d_treasury_2282 (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_196975 ::
  T_GeneralizeTel_196987 -> T_UTxOEnv_2270
d_'46'generalizedField'45'Γ_196975 v0
  = case coe v0 of
      C_mkGeneralizeTel_196989 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_196977 ::
  T_GeneralizeTel_196987 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182
d_'46'generalizedField'45'tx_196977 v0
  = case coe v0 of
      C_mkGeneralizeTel_196989 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_196979 ::
  T_GeneralizeTel_196987 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_196979 v0
  = case coe v0 of
      C_mkGeneralizeTel_196989 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_196981 ::
  T_GeneralizeTel_196987 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_196981 v0
  = case coe v0 of
      C_mkGeneralizeTel_196989 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_196983 ::
  T_GeneralizeTel_196987 -> Integer
d_'46'generalizedField'45'fees_196983 v0
  = case coe v0 of
      C_mkGeneralizeTel_196989 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_196985 ::
  T_GeneralizeTel_196987 -> Integer
d_'46'generalizedField'45'donations_196985 v0
  = case coe v0 of
      C_mkGeneralizeTel_196989 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.GeneralizeTel
d_GeneralizeTel_196987 a0 a1 = ()
data T_GeneralizeTel_196987
  = C_mkGeneralizeTel_196989 T_UTxOEnv_2270
                             MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer Integer
-- Ledger.Conway.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_203889 ::
  T_GeneralizeTel_203901 -> T_UTxOEnv_2270
d_'46'generalizedField'45'Γ_203889 v0
  = case coe v0 of
      C_mkGeneralizeTel_203903 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_203891 ::
  T_GeneralizeTel_203901 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182
d_'46'generalizedField'45'tx_203891 v0
  = case coe v0 of
      C_mkGeneralizeTel_203903 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_203893 ::
  T_GeneralizeTel_203901 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_203893 v0
  = case coe v0 of
      C_mkGeneralizeTel_203903 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_203895 ::
  T_GeneralizeTel_203901 -> Integer
d_'46'generalizedField'45'fees_203895 v0
  = case coe v0 of
      C_mkGeneralizeTel_203903 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_203897 ::
  T_GeneralizeTel_203901 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_203897 v0
  = case coe v0 of
      C_mkGeneralizeTel_203903 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_203899 ::
  T_GeneralizeTel_203901 -> Integer
d_'46'generalizedField'45'donations_203899 v0
  = case coe v0 of
      C_mkGeneralizeTel_203903 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.GeneralizeTel
d_GeneralizeTel_203901 a0 a1 = ()
data T_GeneralizeTel_203901
  = C_mkGeneralizeTel_203903 T_UTxOEnv_2270
                             MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Conway.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_216113 ::
  T_GeneralizeTel_216121 -> T_UTxOEnv_2270
d_'46'generalizedField'45'Γ_216113 v0
  = case coe v0 of
      C_mkGeneralizeTel_216123 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-s
d_'46'generalizedField'45's_216115 ::
  T_GeneralizeTel_216121 -> T_UTxOState_2288
d_'46'generalizedField'45's_216115 v0
  = case coe v0 of
      C_mkGeneralizeTel_216123 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_216117 ::
  T_GeneralizeTel_216121 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182
d_'46'generalizedField'45'tx_216117 v0
  = case coe v0 of
      C_mkGeneralizeTel_216123 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_216119 ::
  T_GeneralizeTel_216121 -> T_UTxOState_2288
d_'46'generalizedField'45's''_216119 v0
  = case coe v0 of
      C_mkGeneralizeTel_216123 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.GeneralizeTel
d_GeneralizeTel_216121 a0 a1 = ()
data T_GeneralizeTel_216121
  = C_mkGeneralizeTel_216123 T_UTxOEnv_2270 T_UTxOState_2288
                             MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 T_UTxOState_2288
