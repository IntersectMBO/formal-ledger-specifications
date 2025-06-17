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
            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0)))
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
            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0)))
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
            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0)))
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
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446
d_HasgovActionDeposit'45'PParams_214 ~v0
  = du_HasgovActionDeposit'45'PParams_214
du_HasgovActionDeposit'45'PParams_214 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446
du_HasgovActionDeposit'45'PParams_214
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_478
-- _.MemoryEstimate
d_MemoryEstimate_266 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_MemoryEstimate_266 = erased
-- _.NetworkId
d_NetworkId_274 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny
d_NetworkId_274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
         (coe v0))
-- _.PParams
d_PParams_296 a0 = ()
-- _.PParamsOf
d_PParamsOf_300 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_PParamsOf_300 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_436 (coe v0)
-- _.ScriptHash
d_ScriptHash_356 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_356 = erased
-- _.Slot
d_Slot_400 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Slot_400 = erased
-- _.Tx
d_Tx_428 a0 = ()
-- _.TxBody
d_TxBody_430 a0 = ()
-- _.TxOut
d_TxOut_438 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxOut_438 = erased
-- _.TxOutʰ
d_TxOut'688'_440 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxOut'688'_440 = erased
-- _.UTxO
d_UTxO_444 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_UTxO_444 = erased
-- _.UTxOOf
d_UTxOOf_446 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2992 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_446 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_3000 (coe v0)
-- _.Value
d_Value_464 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Value_464 = erased
-- _.coin
d_coin_490 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> Integer
d_coin_490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
         (coe v0))
-- _.getValueʰ
d_getValue'688'_532 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_532 ~v0 = du_getValue'688'_532
du_getValue'688'_532 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_532
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3246
-- _.govActionDepositOf
d_govActionDepositOf_536 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446 ->
  AgdaAny -> Integer
d_govActionDepositOf_536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_454
      (coe v0)
-- _.inject
d_inject_544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  Integer -> AgdaAny
d_inject_544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
         (coe v0))
-- _.netId
d_netId_586 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_586 ~v0 = du_netId_586
du_netId_586 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_586 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- _.txOutHash
d_txOutHash_646 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3236 (coe v0)
-- _.GovProposal.action
d_action_790 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_786
d_action_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_854 (coe v0)
-- _.GovProposal.anchor
d_anchor_792 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_758
d_anchor_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_864 (coe v0)
-- _.GovProposal.deposit
d_deposit_794 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  Integer
d_deposit_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_860 (coe v0)
-- _.GovProposal.policy
d_policy_796 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  Maybe AgdaAny
d_policy_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_858 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_798 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  AgdaAny
d_prevAction_798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_856
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_800 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_862
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_848 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_934 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_PParamsOf_934 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_436 (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_942 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2992 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_942 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_3000 (coe v0)
-- _.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_950 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446 ->
  AgdaAny -> Integer
d_govActionDepositOf_950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_454
      (coe v0)
-- _.PParams.Emax
d_Emax_1062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_Emax_1062 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_398 (coe v0)
-- _.PParams.a
d_a_1064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_a_1064 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_370 (coe v0)
-- _.PParams.a0
d_a0_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1066 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_402 (coe v0)
-- _.PParams.b
d_b_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_b_1068 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_372 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_ccMaxTermLength_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_414 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_ccMinSize_1072 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_412 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_coinsPerUTxOByte_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_382 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_collateralPercentage_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_404
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_costmdls_1078 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_406 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_drepActivity_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_422 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_drepDeposit_1082 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_420 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218
d_drepThresholds_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_410 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_govActionDeposit_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_418 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_govActionLifetime_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_416 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_keyDeposit_1090 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_374 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_maxBlockExUnits_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_362 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxBlockSize_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_354 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxCollateralInputs_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_366
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxHeaderSize_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_358 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxRefScriptSizePerBlock_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_390
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxRefScriptSizePerTx_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_388
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_maxTxExUnits_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_360 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxTxSize_1106 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_356 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxValSize_1108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_364 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1110 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_386
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_minUTxOValue_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_396 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1114 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_378 (coe v0)
-- _.PParams.nopt
d_nopt_1116 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_nopt_1116 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_400 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1118 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_poolDeposit_1118 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_376 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1120 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260
d_poolThresholds_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_408 (coe v0)
-- _.PParams.prices
d_prices_1122 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_prices_1122 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_384 (coe v0)
-- _.PParams.pv
d_pv_1124 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1124 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_368 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1126 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_394
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1128 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_392
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1130 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1130 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_380 (coe v0)
-- _.Tx.body
d_body_1544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
d_body_1544 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v0)
-- _.Tx.isValid
d_isValid_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Bool
d_isValid_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v0)
-- _.Tx.txAD
d_txAD_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Maybe AgdaAny
d_txAD_1548 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3214 (coe v0)
-- _.Tx.wits
d_wits_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3178
d_wits_1550 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210 (coe v0)
-- _.TxBody.collateral
d_collateral_1554 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3082 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  Maybe Integer
d_curTreasury_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3076 (coe v0)
-- _.TxBody.mint
d_mint_1558 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> AgdaAny
d_mint_1558 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3056 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3050 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> [AgdaAny]
d_reqSigHash_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3084 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  Maybe AgdaAny
d_scriptIntHash_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3086
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  Maybe AgdaAny
d_txADhash_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3072 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  Maybe AgdaAny
d_txNetworkId_1568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3074 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008]
d_txcerts_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3060 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1572 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
d_txdonation_1572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3068 (coe v0)
-- _.TxBody.txfee
d_txfee_1574 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
d_txfee_1574 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3054 (coe v0)
-- _.TxBody.txid
d_txid_1576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> AgdaAny
d_txid_1576 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3080 (coe v0)
-- _.TxBody.txins
d_txins_1578 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1578 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048 (coe v0)
-- _.TxBody.txouts
d_txouts_1580 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1580 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052 (coe v0)
-- _.TxBody.txprop
d_txprop_1582 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840]
d_txprop_1582 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3066 (coe v0)
-- _.TxBody.txsize
d_txsize_1584 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
d_txsize_1584 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3078 (coe v0)
-- _.TxBody.txup
d_txup_1586 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1586 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3070 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1588 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1588 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3058 (coe v0)
-- _.TxBody.txvote
d_txvote_1590 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822]
d_txvote_1590 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3064 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1592 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3062 (coe v0)
-- Ledger.Conway.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1678 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1678 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.ScriptValidation.d_collectPhaseTwoScriptInputs_2634
      (coe v0) (coe v1)
-- Ledger.Conway.Utxo._.evalScripts
d_evalScripts_1688 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1688 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.ScriptValidation.d_evalScripts_2652
      (coe v0) (coe v1)
-- Ledger.Conway.Utxo._.DCert
d_DCert_1796 a0 a1 = ()
-- Ledger.Conway.Utxo._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1814 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1814 v0 ~v1
  = du_DecEq'45'DepositPurpose_1814 v0
du_DecEq'45'DepositPurpose_1814 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
         (coe v0))
-- Ledger.Conway.Utxo._.DepositPurpose
d_DepositPurpose_1818 a0 a1 = ()
-- Ledger.Conway.Utxo._.Deposits
d_Deposits_1820 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 -> ()
d_Deposits_1820 = erased
-- Ledger.Conway.Utxo._.DepositsOf
d_DepositsOf_1822 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_934 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1822 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_942 (coe v0)
-- Ledger.Conway.Utxo._.HasDeposits
d_HasDeposits_1864 a0 a1 a2 a3 = ()
-- Ledger.Conway.Utxo._.HasDeposits.DepositsOf
d_DepositsOf_2054 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_934 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2054 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_942 (coe v0)
-- Ledger.Conway.Utxo.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_2096 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isTwoPhaseScriptAddress_2096 = erased
-- Ledger.Conway.Utxo.isTwoPhaseScriptAddress?
d_isTwoPhaseScriptAddress'63'_2114 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'63'_2114 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress'63'_2114 v0 v2 v3 v4
du_isTwoPhaseScriptAddress'63'_2114 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'63'_2114 v0 v1 v2 v3
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
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
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
                                                  MAlonzo.Code.Ledger.Conway.Transaction.du_m_3344
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
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.du_m_3344
                                                                    (coe v0) (coe v1) (coe v2))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
                                                                    (coe v3) (coe v7))
                                                                 (coe v11) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3350
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
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.du_m_3344
                                                                        (coe v0) (coe v1) (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
                                                                        (coe v3) (coe v7))
                                                                     (coe v12) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3350
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
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
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
                                                      MAlonzo.Code.Ledger.Conway.Transaction.du_m_3344
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
                                                                        MAlonzo.Code.Ledger.Conway.Transaction.du_m_3344
                                                                        (coe v0) (coe v1) (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
                                                                        (coe v3) (coe v8))
                                                                     (coe v12) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3350
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
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.du_m_3344
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
                                                                       MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3350
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
d_isTwoPhaseScriptAddress'8242'_2168 a0 a1 a2 a3 a4 = ()
newtype T_isTwoPhaseScriptAddress'8242'_2168 = C_wrap_2180 AgdaAny
-- Ledger.Conway.Utxo.isTwoPhaseScriptAddress′.unwrap
d_unwrap_2178 :: T_isTwoPhaseScriptAddress'8242'_2168 -> AgdaAny
d_unwrap_2178 v0
  = case coe v0 of
      C_wrap_2180 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.isTwoPhaseScriptAddress′?
d_isTwoPhaseScriptAddress'8242''63'_2188 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'8242''63'_2188 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress'8242''63'_2188 v0 v2 v3 v4
du_isTwoPhaseScriptAddress'8242''63'_2188 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'8242''63'_2188 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe C_wrap_2180) (coe (\ v4 -> d_unwrap_2178 (coe v4)))
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
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
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
                                                     MAlonzo.Code.Ledger.Conway.Transaction.du_m_3344
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
                                                                       MAlonzo.Code.Ledger.Conway.Transaction.du_m_3344
                                                                       (coe v0) (coe v1) (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
                                                                       (coe v3) (coe v7))
                                                                    (coe v11) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3350
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
                                                                           MAlonzo.Code.Ledger.Conway.Transaction.du_m_3344
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
                                                                      MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3350
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
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.du_m_3344
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
                                                                           MAlonzo.Code.Ledger.Conway.Transaction.du_m_3344
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
                                                                      MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3350
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
                                                                               MAlonzo.Code.Ledger.Conway.Transaction.du_m_3344
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
                                                                          MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3350
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
d_getDataHashes_2200 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2200 ~v0 ~v1 v2 = du_getDataHashes_2200 v2
du_getDataHashes_2200 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2200 v0
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
d_getInputHashes_2204 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2204 v0 ~v1 v2 v3
  = du_getInputHashes_2204 v0 v2 v3
du_getInputHashes_2204 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2204 v0 v1 v2
  = coe
      du_getDataHashes_2200
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
         (\ v3 ->
            coe
              du_isTwoPhaseScriptAddress'8242''63'_2188 (coe v0) (coe v1)
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
                        MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                        (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v1))))))
-- Ledger.Conway.Utxo.totExUnits
d_totExUnits_2260 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> AgdaAny
d_totExUnits_2260 v0 ~v1 v2 = du_totExUnits_2260 v0 v2
du_totExUnits_2260 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> AgdaAny
du_totExUnits_2260 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Tag_20)
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
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
                        MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
               (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3194
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210 (coe v1)))
-- Ledger.Conway.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2272 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  Integer
d_utxoEntrySizeWithoutVal_2272 ~v0
  = du_utxoEntrySizeWithoutVal_2272
du_utxoEntrySizeWithoutVal_2272 :: Integer
du_utxoEntrySizeWithoutVal_2272 = coe (8 :: Integer)
-- Ledger.Conway.Utxo.utxoEntrySize
d_utxoEntrySize_2274 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2274 v0 ~v1 v2 = du_utxoEntrySize_2274 v0 v2
du_utxoEntrySize_2274 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2274 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_size_204
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3246
            (coe v1)))
-- Ledger.Conway.Utxo.UTxOEnv
d_UTxOEnv_2278 a0 a1 = ()
data T_UTxOEnv_2278
  = C_UTxOEnv'46'constructor_17423 AgdaAny
                                   MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 Integer
-- Ledger.Conway.Utxo.UTxOEnv.slot
d_slot_2286 :: T_UTxOEnv_2278 -> AgdaAny
d_slot_2286 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_17423 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOEnv.pparams
d_pparams_2288 ::
  T_UTxOEnv_2278 -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2288 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_17423 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOEnv.treasury
d_treasury_2290 :: T_UTxOEnv_2278 -> Integer
d_treasury_2290 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_17423 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2292 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428
d_HasPParams'45'UTxOEnv_2292 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2292
du_HasPParams'45'UTxOEnv_2292 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428
du_HasPParams'45'UTxOEnv_2292
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.C_HasPParams'46'constructor_9331
      (coe (\ v0 -> d_pparams_2288 (coe v0)))
-- Ledger.Conway.Utxo.HasgovActionDeposit-UTxOEnv
d_HasgovActionDeposit'45'UTxOEnv_2294 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446
d_HasgovActionDeposit'45'UTxOEnv_2294 ~v0 ~v1
  = du_HasgovActionDeposit'45'UTxOEnv_2294
du_HasgovActionDeposit'45'UTxOEnv_2294 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446
du_HasgovActionDeposit'45'UTxOEnv_2294
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.C_HasgovActionDeposit'46'constructor_9463
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_454
              (coe
                 MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_478)
              (d_pparams_2288 (coe v0))))
-- Ledger.Conway.Utxo.UTxOState
d_UTxOState_2296 a0 a1 = ()
data T_UTxOState_2296
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_2314 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Conway.Utxo.UTxOState.utxo
d_utxo_2306 ::
  T_UTxOState_2296 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2306 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2314 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOState.fees
d_fees_2308 :: T_UTxOState_2296 -> Integer
d_fees_2308 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2314 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOState.deposits
d_deposits_2310 ::
  T_UTxOState_2296 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2310 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2314 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.UTxOState.donations
d_donations_2312 :: T_UTxOState_2296 -> Integer
d_donations_2312 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2314 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.HasUTxOState
d_HasUTxOState_2320 a0 a1 a2 a3 = ()
newtype T_HasUTxOState_2320
  = C_HasUTxOState'46'constructor_18177 (AgdaAny -> T_UTxOState_2296)
-- Ledger.Conway.Utxo.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2328 ::
  T_HasUTxOState_2320 -> AgdaAny -> T_UTxOState_2296
d_UTxOStateOf_2328 v0
  = case coe v0 of
      C_HasUTxOState'46'constructor_18177 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo._.UTxOStateOf
d_UTxOStateOf_2332 ::
  T_HasUTxOState_2320 -> AgdaAny -> T_UTxOState_2296
d_UTxOStateOf_2332 v0 = coe d_UTxOStateOf_2328 (coe v0)
-- Ledger.Conway.Utxo.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2334 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_934
d_HasDeposits'45'UTxOState_2334 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2334
du_HasDeposits'45'UTxOState_2334 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_934
du_HasDeposits'45'UTxOState_2334
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasDeposits'46'constructor_3021
      (coe (\ v0 -> d_deposits_2310 (coe v0)))
-- Ledger.Conway.Utxo.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2336 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2992
d_HasUTxO'45'UTxOState_2336 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2336
du_HasUTxO'45'UTxOState_2336 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2992
du_HasUTxO'45'UTxOState_2336
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.C_HasUTxO'46'constructor_18617
      (coe (\ v0 -> d_utxo_2306 (coe v0)))
-- Ledger.Conway.Utxo.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2338 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2338 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2338
du_HasCast'45'UTxOEnv_2338 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2338
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
                                 (2278 :: Integer) (762436563079004261 :: Integer)
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
                                 (400 :: Integer) (762436563079004261 :: Integer) "_.Slot"
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
                                    (2278 :: Integer) (762436563079004261 :: Integer)
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
                                    (296 :: Integer) (762436563079004261 :: Integer) "_.PParams"
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
                                       (2278 :: Integer) (762436563079004261 :: Integer)
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
         (coe C_UTxOEnv'46'constructor_17423))
-- Ledger.Conway.Utxo.HasCast-UTxOState
d_HasCast'45'UTxOState_2340 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2340 ~v0 ~v1 = du_HasCast'45'UTxOState_2340
du_HasCast'45'UTxOState_2340 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2340
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
                                 (2296 :: Integer) (762436563079004261 :: Integer)
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
                                 (444 :: Integer) (762436563079004261 :: Integer) "_.UTxO"
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
                                    (2296 :: Integer) (762436563079004261 :: Integer)
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
                                       (2296 :: Integer) (762436563079004261 :: Integer)
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
                                       (1820 :: Integer) (762436563079004261 :: Integer)
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
                                          (2296 :: Integer) (762436563079004261 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'44'_'10215''7512'_2314))
-- Ledger.Conway.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2342 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2342
  = C_UTXO'45'inductive_3428 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Utxo._._.outs
d_outs_2352 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2352 ~v0 ~v1 v2 = du_outs_2352 v2
du_outs_2352 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2352 v0
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
              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3080 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052 (coe v0))
-- Ledger.Conway.Utxo._._.balance
d_balance_2358 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2358 v0 ~v1 v2 = du_balance_2358 v0 v2
du_balance_2358 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2358 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
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
                     MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
               (coe
                  MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
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
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
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
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
            (coe v0)))
      (coe MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3246)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3236 (coe v0))
         (coe v1))
-- Ledger.Conway.Utxo._._.cbalance
d_cbalance_2364 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2364 v0 ~v1 v2 = du_cbalance_2364 v0 v2
du_cbalance_2364 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2364 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
      (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
         (coe v0))
      (coe du_balance_2358 (coe v0) (coe v1))
-- Ledger.Conway.Utxo._._.refScriptsSize
d_refScriptsSize_2368 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Integer
d_refScriptsSize_2368 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Base.d_sum_280
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Abstract.d_scriptSize_2012 (coe v1))
         (MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3270
            (coe v0) (coe v3) (coe v2)))
-- Ledger.Conway.Utxo._._.minfee
d_minfee_2374 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Integer
d_minfee_2374 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Conway.Abstract.d_txscriptfee_2004 v1
               (MAlonzo.Code.Ledger.Conway.PParams.d_prices_384 (coe v2))
               (coe du_totExUnits_2260 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Fees.d_scriptsCost_1646 (coe v0)
               (coe v2)
               (coe d_refScriptsSize_2368 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe MAlonzo.Code.Ledger.Conway.PParams.d_b_372 (coe v2)))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.Conway.PParams.d_a_370 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3078
            (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v4))))
-- Ledger.Conway.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2382 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2382 v0 ~v1 = du_HasCoin'45'UTxO_2382 v0
du_HasCoin'45'UTxO_2382 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2382 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_2364 (coe v0))
-- Ledger.Conway.Utxo.certDeposit
d_certDeposit_2384 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2384 ~v0 ~v1 v2 v3 = du_certDeposit_2384 v2 v3
du_certDeposit_2384 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2384 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1010 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916 (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1014 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Conway.Certs.C_PoolDeposit_918 (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_376 (coe v1)))
         MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1018 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_920 (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Conway.Certs.C_reg_1024 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916 (coe v3))
                   (coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_374 (coe v1)))
         _ -> coe v2)
-- Ledger.Conway.Utxo.certRefund
d_certRefund_2402 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_914]
d_certRefund_2402 ~v0 ~v1 v2 = du_certRefund_2402 v2
du_certRefund_2402 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_914]
du_certRefund_2402 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_442
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1012 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916 (coe v2))
         MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1020 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                (MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_920 (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Utxo.ValidCertDeposits
d_ValidCertDeposits_2412 a0 a1 a2 a3 a4 = ()
data T_ValidCertDeposits_2412
  = C_'91''93'_2418 | C_delegate_2430 T_ValidCertDeposits_2412 |
    C_regpool_2438 T_ValidCertDeposits_2412 |
    C_regdrep_2448 T_ValidCertDeposits_2412 |
    C_reg_2456 T_ValidCertDeposits_2412 |
    C_dereg_2466 Integer
                 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_ValidCertDeposits_2412 |
    C_deregdrep_2474 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                     T_ValidCertDeposits_2412 |
    C_ccreghot_2482 T_ValidCertDeposits_2412 |
    C_retirepool_2490 T_ValidCertDeposits_2412
-- Ledger.Conway.Utxo.validCertDeposits?
d_validCertDeposits'63'_2498 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCertDeposits'63'_2498 v0 ~v1 v2 v3 v4
  = du_validCertDeposits'63'_2498 v0 v2 v3 v4
du_validCertDeposits'63'_2498 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCertDeposits'63'_2498 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe C_'91''93'_2418))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1010 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_delegate_2430)
                    (coe
                       (\ v10 ->
                          case coe v10 of
                            C_delegate_2430 v16 -> coe v16
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2498 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
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
                                   MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
                                   (coe v6))
                                (coe v9))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1012 v6 v7
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
                                         (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
                                               (coe v0)))
                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
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
                                                      C_dereg_2466 v8 v12
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                         erased))
                                                   (coe
                                                      (\ v13 ->
                                                         case coe v13 of
                                                           C_dereg_2466 v16 v18 v19 v20 -> coe v20
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2498 (coe v0)
                                                      (coe v1)
                                                      (let v13
                                                             = MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
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
                                                                  MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
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
                                         MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
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
                                                      C_dereg_2466
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
                                                                  MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
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
                                                                  MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
                                                                  (coe v6)))
                                                            v11))
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                         erased))
                                                   (coe
                                                      (\ v12 ->
                                                         case coe v12 of
                                                           C_dereg_2466 v15 v17 v18 v19 -> coe v19
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2498 (coe v0)
                                                      (coe v1)
                                                      (let v12
                                                             = MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
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
                                                                  MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
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
             MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1014 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regpool_2438)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_regpool_2438 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2498 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
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
                                (coe MAlonzo.Code.Ledger.Conway.Certs.C_PoolDeposit_918 (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_376 (coe v1)))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_retirepool_1016 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_retirepool_2490)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_retirepool_2490 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2498 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1018 v6 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_regdrep_2448)
                    (coe
                       (\ v9 ->
                          case coe v9 of
                            C_regdrep_2448 v14 -> coe v14
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2498 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
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
                                (coe MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_920 (coe v6))
                                (coe v7))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1020 v6 v7
               -> let v8
                        = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                            (coe
                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe
                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                  (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
                                        (coe v0)))
                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_920 (coe v6))
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
                                            (coe C_deregdrep_2474 v11)
                                            (coe
                                               (\ v12 ->
                                                  case coe v12 of
                                                    C_deregdrep_2474 v16 v17 -> coe v17
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               du_validCertDeposits'63'_2498 (coe v0) (coe v1)
                                               (let v12
                                                      = MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
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
                                                           MAlonzo.Code.Ledger.Conway.Certs.C_DRepDeposit_920
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
             MAlonzo.Code.Ledger.Conway.Certs.C_ccreghot_1022 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_ccreghot_2482)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_ccreghot_2482 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2498 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Certs.C_reg_1024 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe C_reg_2456)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_reg_2456 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2498 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
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
                                   MAlonzo.Code.Ledger.Conway.Certs.C_CredentialDeposit_916
                                   (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_374 (coe v1)))))
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_2670 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_2670 v0 ~v1 v2 v3 v4
  = du_Dec'45'ValidCertDeposits_2670 v0 v2 v3 v4
du_Dec'45'ValidCertDeposits_2670 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_2670 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         du_validCertDeposits'63'_2498 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Utxo.updateCertDeposits
d_updateCertDeposits_2672 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2672 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_2672 v0 v2 v3 v4
du_updateCertDeposits_2672 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2672 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> let v6
                 = coe
                     du_updateCertDeposits_2672 (coe v0) (coe v1) (coe v5) (coe v3) in
           coe
             (case coe v4 of
                MAlonzo.Code.Ledger.Conway.Certs.C_delegate_1010 v7 v8 v9 v10
                  -> coe
                       du_updateCertDeposits_2672 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
                                (coe v0)))
                          v3 (coe du_certDeposit_2384 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Certs.C_dereg_1012 v7 v8
                  -> coe
                       du_updateCertDeposits_2672 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2402 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Certs.C_regpool_1014 v7 v8
                  -> coe
                       du_updateCertDeposits_2672 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
                                (coe v0)))
                          v3 (coe du_certDeposit_2384 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Certs.C_regdrep_1018 v7 v8 v9
                  -> coe
                       du_updateCertDeposits_2672 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
                                (coe v0)))
                          v3 (coe du_certDeposit_2384 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Certs.C_deregdrep_1020 v7 v8
                  -> coe
                       du_updateCertDeposits_2672 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2402 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Certs.C_reg_1024 v7 v8
                  -> coe
                       du_updateCertDeposits_2672 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
                                (coe v0)))
                          v3 (coe du_certDeposit_2384 (coe v4) (coe v1)))
                _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.updateProposalDeposits
d_updateProposalDeposits_2750 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2750 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_2750 v0 v2 v3 v4 v5
du_updateProposalDeposits_2750 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2750 v0 v1 v2 v3 v4
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
             (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                (coe
                   MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
                   (coe v0)))
             (coe
                du_updateProposalDeposits_2750 (coe v0) (coe v6) (coe v2) (coe v3)
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
                      MAlonzo.Code.Ledger.Conway.Certs.C_GovActionDeposit_922
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_284 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.updateDeposits
d_updateDeposits_2762 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2762 v0 ~v1 v2 v3 v4
  = du_updateDeposits_2762 v0 v2 v3 v4
du_updateDeposits_2762 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2762 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_2672 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3060 (coe v2))
      (coe
         du_updateProposalDeposits_2750 (coe v0)
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3066 (coe v2))
         (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3080 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_418 (coe v1))
         (coe v3))
-- Ledger.Conway.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_2814 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840] ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2814 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_2814 v0 v2 v3 v4
du_proposalDepositsΔ_2814 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840] ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2814 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_2750 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3080 (coe v3))
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_418 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Conway.Utxo.depositsChange
d_depositsChange_2868 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2868 v0 ~v1 v2 v3 v4
  = du_depositsChange_2868 v0 v2 v3 v4
du_depositsChange_2868 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2868 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
               (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_2762 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
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
d_inInterval_2878 a0 a1 a2 a3 = ()
data T_inInterval_2878
  = C_both_2886 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2890 AgdaAny | C_upper_2894 AgdaAny | C_none_2896
-- Ledger.Conway.Utxo.Dec-inInterval
d_Dec'45'inInterval_2898 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2898 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2898 v0 v2 v3
du_Dec'45'inInterval_2898 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2898 v0 v1 v2
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
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1604
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_266
                                            (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1604
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
                                                                                    C_both_2886
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
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1604
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
                                                         (coe C_lower_2890 v9))
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
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1604
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
                                                         (coe C_upper_2894 v9))
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
                                 (coe C_none_2896))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_3000 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_3000 v0 ~v1
  = du_HasCoin'45'UTxOState_3000 v0
du_HasCoin'45'UTxOState_3000 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_3000 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2364 (coe v0) (coe d_utxo_2306 (coe v1)))
                    (coe d_donations_2312 (coe v1)))
                 (coe d_fees_2308 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                 (coe
                    MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                    (coe
                       MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                 (coe (\ v2 -> v2)) (coe d_deposits_2310 (coe v1)))))
-- Ledger.Conway.Utxo.coinPolicies
d_coinPolicies_3004 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  [AgdaAny]
d_coinPolicies_3004 v0 ~v1 = du_coinPolicies_3004 v0
du_coinPolicies_3004 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [AgdaAny]
du_coinPolicies_3004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
      (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
            (coe v0))
         (1 :: Integer))
-- Ledger.Conway.Utxo.isAdaOnly
d_isAdaOnly_3006 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  AgdaAny -> ()
d_isAdaOnly_3006 = erased
-- Ledger.Conway.Utxo.feesOK
d_feesOK_3010 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_3010 = erased
-- Ledger.Conway.Utxo._.collateralRange
d_collateralRange_3158 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_3158 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_3158 v0 v3 v4
du_collateralRange_3158 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_3158 v0 v1 v2
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
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                  (coe v0))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3236 (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3082
            (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v1))))
-- Ledger.Conway.Utxo._.bal
d_bal_3160 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_3160 v0 ~v1 ~v2 v3 v4 = du_bal_3160 v0 v3 v4
du_bal_3160 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_3160 v0 v1 v2
  = coe
      du_balance_2358 (coe v0)
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
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                  (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3082
            (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v1))))
-- Ledger.Conway.Utxo._._.depositRefunds
d_depositRefunds_3174 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
d_depositRefunds_3174 v0 ~v1 v2 v3 v4
  = du_depositRefunds_3174 v0 v2 v3 v4
du_depositRefunds_3174 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
du_depositRefunds_3174 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_negPart_70
      (coe
         du_depositsChange_2868 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2310 (coe v2)))
-- Ledger.Conway.Utxo._._.newDeposits
d_newDeposits_3182 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
d_newDeposits_3182 v0 ~v1 v2 v3 v4
  = du_newDeposits_3182 v0 v2 v3 v4
du_newDeposits_3182 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
du_newDeposits_3182 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_posPart_58
      (coe
         du_depositsChange_2868 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2310 (coe v2)))
-- Ledger.Conway.Utxo._._.consumed
d_consumed_3190 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> AgdaAny
d_consumed_3190 v0 ~v1 v2 v3 v4 = du_consumed_3190 v0 v2 v3 v4
du_consumed_3190 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> AgdaAny
du_consumed_3190 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                     (coe v0))))
            (coe
               du_balance_2358 (coe v0)
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
                           MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                           (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                           (coe v0))))
                  (coe d_utxo_2306 (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048 (coe v3))))
            (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3056 (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
            (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
               (coe v0))
            (coe du_depositRefunds_3174 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
            (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
            (coe
               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
               (coe
                  MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
            (coe (\ v4 -> v4))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3062 (coe v3))))
-- Ledger.Conway.Utxo._._.produced
d_produced_3198 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> AgdaAny
d_produced_3198 v0 ~v1 v2 v3 v4 = du_produced_3198 v0 v2 v3 v4
du_produced_3198 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> AgdaAny
du_produced_3198 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                     (coe v0))))
            (coe du_balance_2358 (coe v0) (coe du_outs_2352 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
               (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                  (coe v0))
               (MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3054 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
            (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
               (coe v0))
            (coe du_newDeposits_3182 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
         (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3068
            (coe v3)))
-- Ledger.Conway.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__3222 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__3222
  = C_Scripts'45'Yes_3280 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_3338 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Utxo._.isValid
d_isValid_3228 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_196779 -> Bool
d_isValid_3228 ~v0 ~v1 v2 = du_isValid_3228 v2
du_isValid_3228 :: T_GeneralizeTel_196779 -> Bool
du_isValid_3228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212
      (coe d_'46'generalizedField'45'tx_196769 (coe v0))
-- Ledger.Conway.Utxo._.body
d_body_3232 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_196779 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
d_body_3232 ~v0 ~v1 v2 = du_body_3232 v2
du_body_3232 ::
  T_GeneralizeTel_196779 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
du_body_3232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
      (coe d_'46'generalizedField'45'tx_196769 (coe v0))
-- Ledger.Conway.Utxo._.txcerts
d_txcerts_3254 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_196779 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008]
d_txcerts_3254 ~v0 ~v1 v2 = du_txcerts_3254 v2
du_txcerts_3254 ::
  T_GeneralizeTel_196779 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008]
du_txcerts_3254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3060
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_196769 (coe v0)))
-- Ledger.Conway.Utxo._.txdonation
d_txdonation_3256 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_196779 -> Integer
d_txdonation_3256 ~v0 ~v1 v2 = du_txdonation_3256 v2
du_txdonation_3256 :: T_GeneralizeTel_196779 -> Integer
du_txdonation_3256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3068
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_196769 (coe v0)))
-- Ledger.Conway.Utxo._.txfee
d_txfee_3258 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_196779 -> Integer
d_txfee_3258 ~v0 ~v1 v2 = du_txfee_3258 v2
du_txfee_3258 :: T_GeneralizeTel_196779 -> Integer
du_txfee_3258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3054
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_196769 (coe v0)))
-- Ledger.Conway.Utxo._.txins
d_txins_3262 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_196779 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3262 ~v0 ~v1 v2 = du_txins_3262 v2
du_txins_3262 ::
  T_GeneralizeTel_196779 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_196769 (coe v0)))
-- Ledger.Conway.Utxo._.isValid
d_isValid_3286 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_203693 -> Bool
d_isValid_3286 ~v0 ~v1 v2 = du_isValid_3286 v2
du_isValid_3286 :: T_GeneralizeTel_203693 -> Bool
du_isValid_3286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212
      (coe d_'46'generalizedField'45'tx_203683 (coe v0))
-- Ledger.Conway.Utxo._.body
d_body_3290 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_203693 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
d_body_3290 ~v0 ~v1 v2 = du_body_3290 v2
du_body_3290 ::
  T_GeneralizeTel_203693 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
du_body_3290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
      (coe d_'46'generalizedField'45'tx_203683 (coe v0))
-- Ledger.Conway.Utxo._.collateral
d_collateral_3296 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_203693 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3296 ~v0 ~v1 v2 = du_collateral_3296 v2
du_collateral_3296 ::
  T_GeneralizeTel_203693 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_3296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3082
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_203683 (coe v0)))
-- Ledger.Conway.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_3340 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_3340 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            du_Dec'45'ValidCertDeposits_2670 (coe v0)
            (coe d_pparams_2288 (coe v2)) (coe v5)
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3060
               (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v3))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.ScriptValidation.d_evalScripts_2652
                  (coe v0) (coe v1) (coe v3)
                  (coe
                     MAlonzo.Code.Ledger.Conway.ScriptValidation.d_collectPhaseTwoScriptInputs_2634
                     (coe v0) (coe v1) (coe d_pparams_2288 (coe v2)) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v3))
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
-- Ledger.Conway.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_3342 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_3342 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.ScriptValidation.d_evalScripts_2652
               (coe v0) (coe v1) (coe v3)
               (coe
                  MAlonzo.Code.Ledger.Conway.ScriptValidation.d_collectPhaseTwoScriptInputs_2634
                  (coe v0) (coe v1) (coe d_pparams_2288 (coe v2)) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v3)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Utxo._.body
d_body_3358 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_215913 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
d_body_3358 ~v0 ~v1 v2 = du_body_3358 v2
du_body_3358 ::
  T_GeneralizeTel_215913 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
du_body_3358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
      (coe d_'46'generalizedField'45'tx_215909 (coe v0))
-- Ledger.Conway.Utxo._.curTreasury
d_curTreasury_3366 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_215913 -> Maybe Integer
d_curTreasury_3366 ~v0 ~v1 v2 = du_curTreasury_3366 v2
du_curTreasury_3366 :: T_GeneralizeTel_215913 -> Maybe Integer
du_curTreasury_3366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3076
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_215909 (coe v0)))
-- Ledger.Conway.Utxo._.mint
d_mint_3368 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_215913 -> AgdaAny
d_mint_3368 ~v0 ~v1 v2 = du_mint_3368 v2
du_mint_3368 :: T_GeneralizeTel_215913 -> AgdaAny
du_mint_3368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3056
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_215909 (coe v0)))
-- Ledger.Conway.Utxo._.refInputs
d_refInputs_3370 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_215913 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3370 ~v0 ~v1 v2 = du_refInputs_3370 v2
du_refInputs_3370 ::
  T_GeneralizeTel_215913 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3050
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_215909 (coe v0)))
-- Ledger.Conway.Utxo._.txNetworkId
d_txNetworkId_3378 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_215913 -> Maybe AgdaAny
d_txNetworkId_3378 ~v0 ~v1 v2 = du_txNetworkId_3378 v2
du_txNetworkId_3378 :: T_GeneralizeTel_215913 -> Maybe AgdaAny
du_txNetworkId_3378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3074
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_215909 (coe v0)))
-- Ledger.Conway.Utxo._.txins
d_txins_3388 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_215913 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3388 ~v0 ~v1 v2 = du_txins_3388 v2
du_txins_3388 ::
  T_GeneralizeTel_215913 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_215909 (coe v0)))
-- Ledger.Conway.Utxo._.txouts
d_txouts_3390 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_215913 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3390 ~v0 ~v1 v2 = du_txouts_3390 v2
du_txouts_3390 ::
  T_GeneralizeTel_215913 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_215909 (coe v0)))
-- Ledger.Conway.Utxo._.txsize
d_txsize_3394 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_215913 -> Integer
d_txsize_3394 ~v0 ~v1 v2 = du_txsize_3394 v2
du_txsize_3394 :: T_GeneralizeTel_215913 -> Integer
du_txsize_3394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3078
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_215909 (coe v0)))
-- Ledger.Conway.Utxo._.txvldt
d_txvldt_3398 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_215913 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3398 ~v0 ~v1 v2 = du_txvldt_3398 v2
du_txvldt_3398 ::
  T_GeneralizeTel_215913 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3058
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_215909 (coe v0)))
-- Ledger.Conway.Utxo._.txwdrls
d_txwdrls_3402 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_215913 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3402 ~v0 ~v1 v2 = du_txwdrls_3402 v2
du_txwdrls_3402 ::
  T_GeneralizeTel_215913 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3062
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_215909 (coe v0)))
-- Ledger.Conway.Utxo.UTXO-premises
d_UTXO'45'premises_3472 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_UTxOEnv_2278 ->
  T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3472 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v4)))
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
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe d_utxo_2306 (coe v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048
                     (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v4)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3050
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v4)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
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
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v4)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3050
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v4))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_2898 (coe v0) (coe d_slot_2286 (coe v2))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3058
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v4))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (d_minfee_2374
                              (coe v0) (coe v1) (coe d_pparams_2288 (coe v2))
                              (coe d_utxo_2306 (coe v3)) (coe v4))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3054
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v4))))
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
                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3194
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
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
                                    du_collateralRange_3158 (coe v0) (coe v4)
                                    (coe d_utxo_2306 (coe v3))))
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
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
                                                     (coe v0)))
                                               (coe v5) (coe du_coinPolicies_3004 (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                             (coe v0))
                                          (coe
                                             du_bal_3160 (coe v0) (coe v4)
                                             (coe d_utxo_2306 (coe v3)))))
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
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
                                                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                                     (coe v0))
                                                  (coe
                                                     du_bal_3160 (coe v0) (coe v4)
                                                     (coe d_utxo_2306 (coe v3))))))
                                       (coe du_coinPolicies_3004 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3054
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_404
                                             (coe d_pparams_2288 (coe v2))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
                                             (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                                (coe v0))
                                             (coe
                                                du_bal_3160 (coe v0) (coe v4)
                                                (coe d_utxo_2306 (coe v3))))
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
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3082
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
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
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                 (coe v0)))
                           (coe
                              du_consumed_3190 (coe v0) (coe d_pparams_2288 (coe v2)) (coe v3)
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v4)))
                           (coe
                              du_produced_3198 (coe v0) (coe d_pparams_2288 (coe v2)) (coe v3)
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v4))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                    (coe v0))
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3056
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                       (coe v4))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3078
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v4)))
                                 (MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_356
                                    (coe d_pparams_2288 (coe v2))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (d_refScriptsSize_2368
                                       (coe v0) (coe v1) (coe d_utxo_2306 (coe v3)) (coe v4))
                                    (MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_388
                                       (coe d_pparams_2288 (coe v2))))
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
                                               (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
                                                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           du_utxoEntrySize_2274 (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_382
                                                        (coe d_pparams_2288 (coe v2)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3246
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
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3236
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
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
                                                     MAlonzo.Code.Ledger.Conway.Abstract.d_serSize_2006
                                                     v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3246
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_364
                                                     (coe d_pparams_2288 (coe v2)))))
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
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3236
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
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
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3236
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
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
                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Address.du_netId_158
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3236
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
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
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Address.d_net_102
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3062
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3074
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                                            (coe v4)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3076
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                                            (coe v4)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe d_treasury_2290 (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_196767 ::
  T_GeneralizeTel_196779 -> T_UTxOEnv_2278
d_'46'generalizedField'45'Γ_196767 v0
  = case coe v0 of
      C_mkGeneralizeTel_196781 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_196769 ::
  T_GeneralizeTel_196779 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
d_'46'generalizedField'45'tx_196769 v0
  = case coe v0 of
      C_mkGeneralizeTel_196781 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_196771 ::
  T_GeneralizeTel_196779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_196771 v0
  = case coe v0 of
      C_mkGeneralizeTel_196781 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_196773 ::
  T_GeneralizeTel_196779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_196773 v0
  = case coe v0 of
      C_mkGeneralizeTel_196781 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_196775 ::
  T_GeneralizeTel_196779 -> Integer
d_'46'generalizedField'45'fees_196775 v0
  = case coe v0 of
      C_mkGeneralizeTel_196781 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_196777 ::
  T_GeneralizeTel_196779 -> Integer
d_'46'generalizedField'45'donations_196777 v0
  = case coe v0 of
      C_mkGeneralizeTel_196781 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.GeneralizeTel
d_GeneralizeTel_196779 a0 a1 = ()
data T_GeneralizeTel_196779
  = C_mkGeneralizeTel_196781 T_UTxOEnv_2278
                             MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer Integer
-- Ledger.Conway.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_203681 ::
  T_GeneralizeTel_203693 -> T_UTxOEnv_2278
d_'46'generalizedField'45'Γ_203681 v0
  = case coe v0 of
      C_mkGeneralizeTel_203695 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_203683 ::
  T_GeneralizeTel_203693 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
d_'46'generalizedField'45'tx_203683 v0
  = case coe v0 of
      C_mkGeneralizeTel_203695 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_203685 ::
  T_GeneralizeTel_203693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_203685 v0
  = case coe v0 of
      C_mkGeneralizeTel_203695 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_203687 ::
  T_GeneralizeTel_203693 -> Integer
d_'46'generalizedField'45'fees_203687 v0
  = case coe v0 of
      C_mkGeneralizeTel_203695 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_203689 ::
  T_GeneralizeTel_203693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_203689 v0
  = case coe v0 of
      C_mkGeneralizeTel_203695 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_203691 ::
  T_GeneralizeTel_203693 -> Integer
d_'46'generalizedField'45'donations_203691 v0
  = case coe v0 of
      C_mkGeneralizeTel_203695 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.GeneralizeTel
d_GeneralizeTel_203693 a0 a1 = ()
data T_GeneralizeTel_203693
  = C_mkGeneralizeTel_203695 T_UTxOEnv_2278
                             MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Conway.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_215905 ::
  T_GeneralizeTel_215913 -> T_UTxOEnv_2278
d_'46'generalizedField'45'Γ_215905 v0
  = case coe v0 of
      C_mkGeneralizeTel_215915 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-s
d_'46'generalizedField'45's_215907 ::
  T_GeneralizeTel_215913 -> T_UTxOState_2296
d_'46'generalizedField'45's_215907 v0
  = case coe v0 of
      C_mkGeneralizeTel_215915 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_215909 ::
  T_GeneralizeTel_215913 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
d_'46'generalizedField'45'tx_215909 v0
  = case coe v0 of
      C_mkGeneralizeTel_215915 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_215911 ::
  T_GeneralizeTel_215913 -> T_UTxOState_2296
d_'46'generalizedField'45's''_215911 v0
  = case coe v0 of
      C_mkGeneralizeTel_215915 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Utxo.GeneralizeTel
d_GeneralizeTel_215913 a0 a1 = ()
data T_GeneralizeTel_215913
  = C_mkGeneralizeTel_215915 T_UTxOEnv_2278 T_UTxOState_2296
                             MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 T_UTxOState_2296
