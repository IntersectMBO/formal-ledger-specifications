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

module MAlonzo.Code.Ledger.Conway.Specification.Utxo where

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
import qualified MAlonzo.Code.Class.Decidable.WithoutK
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.ListAction
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Fees
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Ledger.Prelude.Instances
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _._≤ᵗ_
d__'8804''7511'__20 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__20 = erased
-- _.Dec-isVKey
d_Dec'45'isVKey_96 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_96 ~v0 = du_Dec'45'isVKey_96
du_Dec'45'isVKey_96 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_96
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- _.DecEq-BaseAddr
d_DecEq'45'BaseAddr_108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_108 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1372
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
            (coe v0)))
-- _.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_110 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1372
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
            (coe v0)))
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_148 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1372
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
            (coe v0)))
-- _.ExUnits
d_ExUnits_192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_192 = erased
-- _.GovProposal
d_GovProposal_216 a0 = ()
-- _.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_336 ~v0
  = du_HasNetworkId'45'RewardAddress_336
du_HasNetworkId'45'RewardAddress_336 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_336
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- _.HasPParams
d_HasPParams_338 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_368 a0 a1 a2 = ()
-- _.MemoryEstimate
d_MemoryEstimate_444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_444 = erased
-- _.NetworkId
d_NetworkId_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_452 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_342
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1372
         (coe v0))
-- _.PParams
d_PParams_478 a0 = ()
-- _.PParamsOf
d_PParamsOf_486 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.ScriptHash
d_ScriptHash_544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_544 = erased
-- _.Slot
d_Slot_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_596 = erased
-- _.Tx
d_Tx_624 a0 = ()
-- _.TxBody
d_TxBody_628 a0 = ()
-- _.TxOutʰ
d_TxOut'688'_642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut'688'_642 = erased
-- _.UTxO
d_UTxO_648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_648 = erased
-- _.UTxOOf
d_UTxOOf_650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3422 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3430
      (coe v0)
-- _.Value
d_Value_670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_670 = erased
-- _.coin
d_coin_698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
         (coe v0))
-- _.getValueʰ
d_getValue'688'_726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_726 ~v0 = du_getValue'688'_726
du_getValue'688'_726 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_726
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3696
-- _.inject
d_inject_738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
         (coe v0))
-- _.netId
d_netId_790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_790 ~v0 = du_netId_790
du_netId_790 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_790
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- _.txOutHash
d_txOutHash_846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3686
      (coe v0)
-- _.GovActions.GovProposal
d_GovProposal_1028 a0 = ()
-- _.GovActions.GovProposal.action
d_action_1170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1102 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_888
d_action_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1116
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1102 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1010
d_anchor_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1126
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1102 ->
  Integer
d_deposit_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1122
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1102 ->
  Maybe AgdaAny
d_policy_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1120
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1102 ->
  AgdaAny
d_prevAction_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1118
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1102 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1124
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1308 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3422 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3430
      (coe v0)
-- _.PParams.Emax
d_Emax_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_Emax_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_402
      (coe v0)
-- _.PParams.a
d_a_1430 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_a_1430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v0)
-- _.PParams.a0
d_a0_1432 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_406 (coe v0)
-- _.PParams.b
d_b_1434 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_b_1434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1436 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMaxTermLength_1436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_418
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1438 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMinSize_1438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_416
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1440 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_coinsPerUTxOByte_1440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1442 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_collateralPercentage_1442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1446 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440
d_costmdlsAssoc_1446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_410
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1448 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_drepActivity_1448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_426
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1450 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepDeposit_1450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_424
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1452 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_1452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_414
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1454 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionDeposit_1454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1456 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionLifetime_1456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_420
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1458 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_keyDeposit_1458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1460 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_maxBlockExUnits_1460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_366
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1462 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxBlockSize_1462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_358
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1464 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxCollateralInputs_1464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_370
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1466 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxHeaderSize_1466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_362
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1468 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerBlock_1468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1470 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerTx_1470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1472 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_maxTxExUnits_1472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_364
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1474 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxTxSize_1474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1476 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxValSize_1476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1478 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_390
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1480 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_minUTxOValue_1480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_400
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1482 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_382
      (coe v0)
-- _.PParams.nopt
d_nopt_1484 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_nopt_1484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_404
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1486 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_poolDeposit_1486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1488 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_1488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_412
      (coe v0)
-- _.PParams.prices
d_prices_1490 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_prices_1490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
      (coe v0)
-- _.PParams.pv
d_pv_1492 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_372 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1494 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_398
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1496 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_396
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1498 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_384
      (coe v0)
-- _.Tx.body
d_body_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438
d_body_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
      (coe v0)
-- _.Tx.isValid
d_isValid_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  Bool
d_isValid_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3656
      (coe v0)
-- _.Tx.txAD
d_txAD_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  Maybe AgdaAny
d_txAD_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3658
      (coe v0)
-- _.Tx.txsize
d_txsize_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  Integer
d_txsize_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3654
      (coe v0)
-- _.Tx.wits
d_wits_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3616
d_wits_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3480
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  Maybe Integer
d_currentTreasury_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3504
      (coe v0)
-- _.TxBody.mint
d_mint_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  AgdaAny
d_mint_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3506
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3478
      (coe v0)
-- _.TxBody.reqSignerHashes
d_reqSignerHashes_1964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  [AgdaAny]
d_reqSignerHashes_1964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3508
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_1966 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  Maybe AgdaAny
d_scriptIntegrityHash_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3510
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  Maybe AgdaAny
d_txADhash_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3494
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354]
d_txCerts_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3486
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  Integer
d_txDonation_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3496
      (coe v0)
-- _.TxBody.txFee
d_txFee_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  Integer
d_txFee_1974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3488
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1102]
d_txGovProposals_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3500
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1022]
d_txGovVotes_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3498
      (coe v0)
-- _.TxBody.txId
d_txId_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  AgdaAny
d_txId_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3484
      (coe v0)
-- _.TxBody.txIns
d_txIns_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_1982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3476
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  Maybe AgdaAny
d_txNetworkId_1984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3502
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3482
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3492
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3490
      (coe v0)
-- Ledger.Conway.Specification.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_2038 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2914
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Utxo._.evalP2Scripts
d_evalP2Scripts_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_2044 v0 ~v1 = du_evalP2Scripts_2044 v0
du_evalP2Scripts_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2944
      (coe v0)
-- Ledger.Conway.Specification.Utxo._.DCert
d_DCert_2096 a0 a1 = ()
-- Ledger.Conway.Specification.Utxo._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2114 v0 ~v1
  = du_DecEq'45'DepositPurpose_2114 v0
du_DecEq'45'DepositPurpose_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
         (coe v0))
-- Ledger.Conway.Specification.Utxo._.DepositPurpose
d_DepositPurpose_2122 a0 a1 = ()
-- Ledger.Conway.Specification.Utxo._.Deposits
d_Deposits_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  ()
d_Deposits_2124 = erased
-- Ledger.Conway.Specification.Utxo._.DepositsOf
d_DepositsOf_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1210
      (coe v0)
-- Ledger.Conway.Specification.Utxo._.HasDeposits
d_HasDeposits_2178 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Utxo._.HasDeposits.DepositsOf
d_DepositsOf_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1210
      (coe v0)
-- Ledger.Conway.Specification.Utxo.totExUnits
d_totExUnits_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  AgdaAny
d_totExUnits_2472 v0 ~v1 v2 = du_totExUnits_2472 v0 v2
du_totExUnits_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  AgdaAny
du_totExUnits_2472 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_246
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_228
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
               (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3632
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
            (coe v1)))
-- Ledger.Conway.Specification.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  Integer
d_utxoEntrySizeWithoutVal_2484 ~v0
  = du_utxoEntrySizeWithoutVal_2484
du_utxoEntrySizeWithoutVal_2484 :: Integer
du_utxoEntrySizeWithoutVal_2484 = coe (8 :: Integer)
-- Ledger.Conway.Specification.Utxo.utxoEntrySize
d_utxoEntrySize_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2486 v0 ~v1 v2 = du_utxoEntrySize_2486 v0 v2
du_utxoEntrySize_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2486 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3696
            (coe v1)))
-- Ledger.Conway.Specification.Utxo.UTxOEnv
d_UTxOEnv_2490 a0 a1 = ()
data T_UTxOEnv_2490
  = C_constructor_2504 AgdaAny
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
                       Integer
-- Ledger.Conway.Specification.Utxo.UTxOEnv.slot
d_slot_2498 :: T_UTxOEnv_2490 -> AgdaAny
d_slot_2498 v0
  = case coe v0 of
      C_constructor_2504 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOEnv.pparams
d_pparams_2500 ::
  T_UTxOEnv_2490 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2500 v0
  = case coe v0 of
      C_constructor_2504 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOEnv.treasury
d_treasury_2502 :: T_UTxOEnv_2490 -> Integer
d_treasury_2502 v0
  = case coe v0 of
      C_constructor_2504 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState
d_UTxOState_2506 a0 a1 = ()
data T_UTxOState_2506
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_2524 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Conway.Specification.Utxo.UTxOState.utxo
d_utxo_2516 ::
  T_UTxOState_2506 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2516 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2524 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState.fees
d_fees_2518 :: T_UTxOState_2506 -> Integer
d_fees_2518 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2524 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState.deposits
d_deposits_2520 ::
  T_UTxOState_2506 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2520 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2524 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState.donations
d_donations_2522 :: T_UTxOState_2506 -> Integer
d_donations_2522 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2524 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.HasUTxOState
d_HasUTxOState_2530 a0 a1 a2 a3 = ()
newtype T_HasUTxOState_2530
  = C_constructor_2540 (AgdaAny -> T_UTxOState_2506)
-- Ledger.Conway.Specification.Utxo.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2538 ::
  T_HasUTxOState_2530 -> AgdaAny -> T_UTxOState_2506
d_UTxOStateOf_2538 v0
  = case coe v0 of
      C_constructor_2540 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo._.UTxOStateOf
d_UTxOStateOf_2544 ::
  T_HasUTxOState_2530 -> AgdaAny -> T_UTxOState_2506
d_UTxOStateOf_2544 v0 = coe d_UTxOStateOf_2538 (coe v0)
-- Ledger.Conway.Specification.Utxo.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'UTxOEnv_2546 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2546
du_HasPParams'45'UTxOEnv_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'UTxOEnv_2546
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_446
      (coe (\ v0 -> d_pparams_2500 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3422
d_HasUTxO'45'UTxOState_2548 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2548
du_HasUTxO'45'UTxOState_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3422
du_HasUTxO'45'UTxOState_2548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3432
      (coe (\ v0 -> d_utxo_2516 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasFee-UTxOState
d_HasFee'45'UTxOState_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2550 ~v0 ~v1 = du_HasFee'45'UTxOState_2550
du_HasFee'45'UTxOState_2550 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2550
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe (\ v0 -> d_fees_2518 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1202
d_HasDeposits'45'UTxOState_2552 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2552
du_HasDeposits'45'UTxOState_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1202
du_HasDeposits'45'UTxOState_2552
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1212
      (coe (\ v0 -> d_deposits_2520 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2554 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2554
du_HasDonations'45'UTxOState_2554 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2554
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_donations_2522 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2556 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2556
du_HasCast'45'UTxOEnv_2556 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2556
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
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
                                 (2490 :: Integer) (18240141987391769988 :: Integer)
                                 "Ledger.Conway.Specification.Utxo.UTxOEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (596 :: Integer) (18240141987391769988 :: Integer) "_.Slot"
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
                                    (2490 :: Integer) (18240141987391769988 :: Integer)
                                    "Ledger.Conway.Specification.Utxo.UTxOEnv"
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
                                    (478 :: Integer) (18240141987391769988 :: Integer) "_.PParams"
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
                                       (2490 :: Integer) (18240141987391769988 :: Integer)
                                       "Ledger.Conway.Specification.Utxo.UTxOEnv"
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
                                       (14 :: Integer) (14798748958053396954 :: Integer)
                                       "Ledger.Prelude.Base.Treasury"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_2504))
-- Ledger.Conway.Specification.Utxo.HasCast-UTxOState
d_HasCast'45'UTxOState_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2558 ~v0 ~v1 = du_HasCast'45'UTxOState_2558
du_HasCast'45'UTxOState_2558 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2558
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
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
                                 (2506 :: Integer) (18240141987391769988 :: Integer)
                                 "Ledger.Conway.Specification.Utxo.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (648 :: Integer) (18240141987391769988 :: Integer) "_.UTxO"
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
                                    (2506 :: Integer) (18240141987391769988 :: Integer)
                                    "Ledger.Conway.Specification.Utxo.UTxOState"
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
                                    (10 :: Integer) (14798748958053396954 :: Integer)
                                    "Ledger.Prelude.Base.Fees"
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
                                       (2506 :: Integer) (18240141987391769988 :: Integer)
                                       "Ledger.Conway.Specification.Utxo.UTxOState"
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
                                       (2124 :: Integer) (18240141987391769988 :: Integer)
                                       "Ledger.Conway.Specification.Utxo._.Deposits"
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
                                          (2506 :: Integer) (18240141987391769988 :: Integer)
                                          "Ledger.Conway.Specification.Utxo.UTxOState"
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
                                          (8 :: Integer) (14798748958053396954 :: Integer)
                                          "Ledger.Prelude.Base.Donations"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7512'_2524))
-- Ledger.Conway.Specification.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2560 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2560
  = C_UTXO'45'inductive_3556 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Utxo._._.outs
d_outs_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2570 ~v0 ~v1 v2 = du_outs_2570 v2
du_outs_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2570 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3484
                 (coe v0))
              (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3482
         (coe v0))
-- Ledger.Conway.Specification.Utxo._._.balance
d_balance_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2576 v0 ~v1 v2 = du_balance_2576 v0 v2
du_balance_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2576 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1356
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_188
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1372
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1372
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                     (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
                  (coe v0)))
            (coe
               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_188
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                        (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3696)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3686
            (coe v0))
         (coe v1))
-- Ledger.Conway.Specification.Utxo._._.cbalance
d_cbalance_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2582 v0 ~v1 v2 = du_cbalance_2582 v0 v2
du_cbalance_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2582 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
         (coe v0))
      (coe du_balance_2576 (coe v0) (coe v1))
-- Ledger.Conway.Specification.Utxo._._.refScriptsSize
d_refScriptsSize_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  Integer
d_refScriptsSize_2586 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_scriptSize_2544
            (coe v1))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3720
            (coe v0) (coe v3) (coe v2)))
-- Ledger.Conway.Specification.Utxo._._.minfee
d_minfee_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  Integer
d_minfee_2592 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_txscriptfee_2538
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
                  (coe v2))
               (coe du_totExUnits_2472 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v2)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Fees.d_scriptsCost_22
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
               (coe v0))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1790
               (coe v0))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
               (coe v0))
            (coe v2)
            (coe d_refScriptsSize_2586 (coe v0) (coe v1) (coe v3) (coe v4))))
      (coe
         mulInt
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3654
            (coe v4)))
-- Ledger.Conway.Specification.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2600 v0 ~v1 = du_HasCoin'45'UTxO_2600 v0
du_HasCoin'45'UTxO_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2600 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe du_cbalance_2582 (coe v0))
-- Ledger.Conway.Specification.Utxo.certDeposit
d_certDeposit_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2602 ~v0 ~v1 v2 v3 = du_certDeposit_2602 v2 v3
du_certDeposit_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2602 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1356 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1188
                      (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1360 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1190
                      (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
                      (coe v1)))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1364 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1192
                      (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1370 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1188
                      (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
                      (coe v1)))
         _ -> coe v2)
-- Ledger.Conway.Specification.Utxo.certRefund
d_certRefund_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1186]
d_certRefund_2620 ~v0 ~v1 v2 = du_certRefund_2620 v2
du_certRefund_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1186]
du_certRefund_2620 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_470
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1358 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                (MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1188
                   (coe v2))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1366 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                (MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1192
                   (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Specification.Utxo.ValidCertDeposits
d_ValidCertDeposits_2630 a0 a1 a2 a3 a4 = ()
data T_ValidCertDeposits_2630
  = C_'91''93'_2636 | C_delegate_2648 T_ValidCertDeposits_2630 |
    C_regpool_2656 T_ValidCertDeposits_2630 |
    C_regdrep_2666 T_ValidCertDeposits_2630 |
    C_reg_2674 T_ValidCertDeposits_2630 |
    C_dereg_2684 Integer
                 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_ValidCertDeposits_2630 |
    C_deregdrep_2692 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                     T_ValidCertDeposits_2630 |
    C_ccreghot_2700 T_ValidCertDeposits_2630 |
    C_retirepool_2708 T_ValidCertDeposits_2630
-- Ledger.Conway.Specification.Utxo.validCertDeposits?
d_validCertDeposits'63'_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCertDeposits'63'_2716 v0 ~v1 v2 v3 v4
  = du_validCertDeposits'63'_2716 v0 v2 v3 v4
du_validCertDeposits'63'_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCertDeposits'63'_2716 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe C_'91''93'_2636))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1356 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_delegate_2648)
                    (coe
                       (\ v10 ->
                          case coe v10 of
                            C_delegate_2648 v16 -> coe v16
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2716 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                (coe v0)))
                          v2
                          (coe
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1188
                                   (coe v6))
                                (coe v9))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1358 v6 v7
               -> case coe v7 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> let v9
                               = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                         erased
                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                               (coe v0)))
                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1188
                                            (coe v6))
                                         (coe v8))
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))) in
                         coe
                           (case coe v9 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                -> if coe v10
                                     then case coe v11 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                              -> coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                                   (coe
                                                      C_dereg_2684 v8 v12
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                         erased))
                                                   (coe
                                                      (\ v13 ->
                                                         case coe v13 of
                                                           C_dereg_2684 v16 v18 v19 v20 -> coe v20
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2716 (coe v0)
                                                      (coe v1)
                                                      (let v13
                                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                                                    (coe v0)) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v13)
                                                            (coe v2)
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1188
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
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1188
                                         (coe v6))
                                      (coe
                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                         (coe v2))) in
                         coe
                           (case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                -> if coe v9
                                     then case coe v10 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                              -> coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                                   (coe
                                                      C_dereg_2684
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Function.Bundles.d_from_1870
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1188
                                                                  (coe v6)))
                                                            v11))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                         (coe
                                                            MAlonzo.Code.Function.Bundles.d_from_1870
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_460
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1188
                                                                  (coe v6)))
                                                            v11))
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                         erased))
                                                   (coe
                                                      (\ v12 ->
                                                         case coe v12 of
                                                           C_dereg_2684 v15 v17 v18 v19 -> coe v19
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2716 (coe v0)
                                                      (coe v1)
                                                      (let v12
                                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                                                    (coe v0)) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v12)
                                                            (coe v2)
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1188
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
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1360 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_regpool_2656)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_regpool_2656 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2716 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                (coe v0)))
                          v2
                          (coe
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1190
                                   (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
                                   (coe v1)))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1362 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_retirepool_2708)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_retirepool_2708 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2716 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1364 v6 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_regdrep_2666)
                    (coe
                       (\ v9 ->
                          case coe v9 of
                            C_regdrep_2666 v14 -> coe v14
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2716 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                (coe v0)))
                          v2
                          (coe
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1192
                                   (coe v6))
                                (coe v7))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1366 v6 v7
               -> let v8
                        = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                            (coe
                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe
                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                        (coe v0)))
                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1192
                                     (coe v6))
                                  (coe v7))
                               (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))) in
                  coe
                    (case coe v8 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                         -> if coe v9
                              then case coe v10 of
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                       -> coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                            (coe C_deregdrep_2692 v11)
                                            (coe
                                               (\ v12 ->
                                                  case coe v12 of
                                                    C_deregdrep_2692 v16 v17 -> coe v17
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               du_validCertDeposits'63'_2716 (coe v0) (coe v1)
                                               (let v12
                                                      = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                                             (coe v0)) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                        erased v12)
                                                     (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1192
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
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1368 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_ccreghot_2700)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_ccreghot_2700 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2716 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1370 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_reg_2674)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_reg_2674 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2716 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                (coe v0)))
                          v2
                          (coe
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1188
                                   (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
                                   (coe v1)))))
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_2888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_2888 v0 ~v1 v2 v3 v4
  = du_Dec'45'ValidCertDeposits_2888 v0 v2 v3 v4
du_Dec'45'ValidCertDeposits_2888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_2888 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         du_validCertDeposits'63'_2716 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Utxo.updateCertDeposits
d_updateCertDeposits_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2890 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_2890 v0 v2 v3 v4
du_updateCertDeposits_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2890 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> let v6
                 = coe
                     du_updateCertDeposits_2890 (coe v0) (coe v1) (coe v5) (coe v3) in
           coe
             (case coe v4 of
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1356 v7 v8 v9 v10
                  -> coe
                       du_updateCertDeposits_2890 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                (coe v0)))
                          v3 (coe du_certDeposit_2602 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1358 v7 v8
                  -> coe
                       du_updateCertDeposits_2890 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased
                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2620 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1360 v7 v8
                  -> coe
                       du_updateCertDeposits_2890 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased
                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                   (coe v0))))
                          (coe v3) (coe du_certDeposit_2602 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1364 v7 v8 v9
                  -> coe
                       du_updateCertDeposits_2890 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                (coe v0)))
                          v3 (coe du_certDeposit_2602 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1366 v7 v8
                  -> coe
                       du_updateCertDeposits_2890 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased
                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2620 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1370 v7 v8
                  -> coe
                       du_updateCertDeposits_2890 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                                (coe v0)))
                          v3 (coe du_certDeposit_2602 (coe v4) (coe v1)))
                _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.updateProposalDeposits
d_updateProposalDeposits_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1102] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2968 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_2968 v0 v2 v3 v4 v5
du_updateProposalDeposits_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1102] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2968 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                   (coe v0)))
             (coe
                du_updateProposalDeposits_2968 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1194
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.updateDeposits
d_updateDeposits_2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2980 v0 ~v1 v2 v3 v4
  = du_updateDeposits_2980 v0 v2 v3 v4
du_updateDeposits_2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2980 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_2890 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3486
         (coe v2))
      (coe
         du_updateProposalDeposits_2968 (coe v0)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3500
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3484
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
            (coe v1))
         (coe v3))
-- Ledger.Conway.Specification.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_3028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1102] ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_3028 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_3028 v0 v2 v3 v4
du_proposalDepositsΔ_3028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1102] ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_3028 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_2968 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3484
         (coe v3))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
         (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Conway.Specification.Utxo.depositsChange
d_depositsChange_3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_3078 v0 ~v1 v2 v3 v4
  = du_depositsChange_3078 v0 v2 v3 v4
du_depositsChange_3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_3078 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__266
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
               (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_2980 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
               (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Conway.Specification.Utxo.inInterval
d_inInterval_3088 a0 a1 a2 a3 = ()
data T_inInterval_3088
  = C_both_3096 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_3100 AgdaAny | C_upper_3104 AgdaAny | C_none_3106
-- Ledger.Conway.Specification.Utxo.Dec-inInterval
d_Dec'45'inInterval_3108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_3108 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_3108 v0 v2 v3
du_Dec'45'inInterval_3108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_3108 v0 v1 v2
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
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                                         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1790
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                                            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1790
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
                                                                                    C_both_3096
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
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                                         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1790
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
                                                         (coe C_lower_3100 v9))
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
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                                         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1790
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
                                                         (coe C_upper_3104 v9))
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
                                 (coe C_none_3106))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_3210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_3210 v0 ~v1
  = du_HasCoin'45'UTxOState_3210 v0
du_HasCoin'45'UTxOState_3210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_3210 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2582 (coe v0) (coe d_utxo_2516 (coe v1)))
                    (coe d_donations_2522 (coe v1)))
                 (coe d_fees_2518 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1218
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                 (coe (\ v2 -> v2)) (coe d_deposits_2520 (coe v1)))))
-- Ledger.Conway.Specification.Utxo.coinPolicies
d_coinPolicies_3214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  [AgdaAny]
d_coinPolicies_3214 v0 ~v1 = du_coinPolicies_3214 v0
du_coinPolicies_3214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny]
du_coinPolicies_3214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
            (coe v0))
         (1 :: Integer))
-- Ledger.Conway.Specification.Utxo.isAdaOnly
d_isAdaOnly_3216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  AgdaAny -> ()
d_isAdaOnly_3216 = erased
-- Ledger.Conway.Specification.Utxo.collateralCheck
d_collateralCheck_3220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_3220 = erased
-- Ledger.Conway.Specification.Utxo._.balance′
d_balance'8242'_3282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance'8242'_3282 v0 ~v1 ~v2 v3 v4
  = du_balance'8242'_3282 v0 v3 v4
du_balance'8242'_3282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance'8242'_3282 v0 v1 v2
  = coe
      du_balance_2576 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1356
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                  (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3480
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
               (coe v1))))
-- Ledger.Conway.Specification.Utxo._._.depositRefunds
d_depositRefunds_3296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  T_UTxOState_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  Integer
d_depositRefunds_3296 v0 ~v1 v2 v3 v4
  = du_depositRefunds_3296 v0 v2 v3 v4
du_depositRefunds_3296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  T_UTxOState_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  Integer
du_depositRefunds_3296 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_negPart_70
      (coe
         du_depositsChange_3078 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2520 (coe v2)))
-- Ledger.Conway.Specification.Utxo._._.newDeposits
d_newDeposits_3304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  T_UTxOState_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  Integer
d_newDeposits_3304 v0 ~v1 v2 v3 v4
  = du_newDeposits_3304 v0 v2 v3 v4
du_newDeposits_3304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  T_UTxOState_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  Integer
du_newDeposits_3304 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_posPart_58
      (coe
         du_depositsChange_3078 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2520 (coe v2)))
-- Ledger.Conway.Specification.Utxo._._.consumed
d_consumed_3312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  T_UTxOState_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  AgdaAny
d_consumed_3312 v0 ~v1 v2 v3 v4 = du_consumed_3312 v0 v2 v3 v4
du_consumed_3312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  T_UTxOState_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  AgdaAny
du_consumed_3312 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
                     (coe v0))))
            (coe
               du_balance_2576 (coe v0)
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased
                     (coe
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1356
                           (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                           (coe v0))))
                  (coe d_utxo_2516 (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3476
                     (coe v3))))
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3506
               (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
               (coe v0))
            (coe du_depositRefunds_3296 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
            (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1372
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                     (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_constructor_32
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
            (coe (\ v4 -> v4))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3490
               (coe v3))))
-- Ledger.Conway.Specification.Utxo._._.produced
d_produced_3320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  T_UTxOState_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  AgdaAny
d_produced_3320 v0 ~v1 v2 v3 v4 = du_produced_3320 v0 v2 v3 v4
du_produced_3320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  T_UTxOState_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  AgdaAny
du_produced_3320 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
                     (coe v0))))
            (coe du_balance_2576 (coe v0) (coe du_outs_2570 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
                  (coe v0))
               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3488
                  (coe v3))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
               (coe v0))
            (coe du_newDeposits_3304 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3496
            (coe v3)))
-- Ledger.Conway.Specification.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__3344 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__3344
  = C_Scripts'45'Yes_3400 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_3456 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Utxo._.isValid
d_isValid_3350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_190389 -> Bool
d_isValid_3350 ~v0 ~v1 v2 = du_isValid_3350 v2
du_isValid_3350 :: T_GeneralizeTel_190389 -> Bool
du_isValid_3350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3656
      (coe d_'46'generalizedField'45'tx_190379 (coe v0))
-- Ledger.Conway.Specification.Utxo._.body
d_body_3354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_190389 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438
d_body_3354 ~v0 ~v1 v2 = du_body_3354 v2
du_body_3354 ::
  T_GeneralizeTel_190389 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438
du_body_3354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
      (coe d_'46'generalizedField'45'tx_190379 (coe v0))
-- Ledger.Conway.Specification.Utxo._.txCerts
d_txCerts_3376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_190389 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354]
d_txCerts_3376 ~v0 ~v1 v2 = du_txCerts_3376 v2
du_txCerts_3376 ::
  T_GeneralizeTel_190389 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354]
du_txCerts_3376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3486
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_190379 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txDonation
d_txDonation_3378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_190389 -> Integer
d_txDonation_3378 ~v0 ~v1 v2 = du_txDonation_3378 v2
du_txDonation_3378 :: T_GeneralizeTel_190389 -> Integer
du_txDonation_3378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3496
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_190379 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txFee
d_txFee_3380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_190389 -> Integer
d_txFee_3380 ~v0 ~v1 v2 = du_txFee_3380 v2
du_txFee_3380 :: T_GeneralizeTel_190389 -> Integer
du_txFee_3380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3488
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_190379 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txIns
d_txIns_3388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_190389 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3388 ~v0 ~v1 v2 = du_txIns_3388 v2
du_txIns_3388 ::
  T_GeneralizeTel_190389 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3476
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_190379 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.isValid
d_isValid_3406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_197591 -> Bool
d_isValid_3406 ~v0 ~v1 v2 = du_isValid_3406 v2
du_isValid_3406 :: T_GeneralizeTel_197591 -> Bool
du_isValid_3406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3656
      (coe d_'46'generalizedField'45'tx_197581 (coe v0))
-- Ledger.Conway.Specification.Utxo._.body
d_body_3410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_197591 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438
d_body_3410 ~v0 ~v1 v2 = du_body_3410 v2
du_body_3410 ::
  T_GeneralizeTel_197591 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438
du_body_3410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
      (coe d_'46'generalizedField'45'tx_197581 (coe v0))
-- Ledger.Conway.Specification.Utxo._.collateralInputs
d_collateralInputs_3418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_197591 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_3418 ~v0 ~v1 v2 = du_collateralInputs_3418 v2
du_collateralInputs_3418 ::
  T_GeneralizeTel_197591 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_3418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3480
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_197581 (coe v0)))
-- Ledger.Conway.Specification.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_3458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_UTxOEnv_2490 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_3458 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            du_Dec'45'ValidCertDeposits_2888 (coe v0)
            (coe d_pparams_2500 (coe v2)) (coe v5)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3486
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                  (coe v3))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2944
                  v0
                  (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2914
                     (coe v0) (coe v1) (coe d_pparams_2500 (coe v2)) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3656
                  (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3656
                  (coe v3))
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
-- Ledger.Conway.Specification.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_3460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_UTxOEnv_2490 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_3460 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2944
               v0
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2914
                  (coe v0) (coe v1) (coe d_pparams_2500 (coe v2)) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3656
               (coe v3)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3656
               (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Specification.Utxo._.body
d_body_3476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438
d_body_3476 ~v0 ~v1 v2 = du_body_3476 v2
du_body_3476 ::
  T_GeneralizeTel_212205 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438
du_body_3476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
      (coe d_'46'generalizedField'45'tx_212201 (coe v0))
-- Ledger.Conway.Specification.Utxo._.txsize
d_txsize_3478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 -> Integer
d_txsize_3478 ~v0 ~v1 v2 = du_txsize_3478 v2
du_txsize_3478 :: T_GeneralizeTel_212205 -> Integer
du_txsize_3478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3654
      (coe d_'46'generalizedField'45'tx_212201 (coe v0))
-- Ledger.Conway.Specification.Utxo._.wits
d_wits_3480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3616
d_wits_3480 ~v0 ~v1 v2 = du_wits_3480 v2
du_wits_3480 ::
  T_GeneralizeTel_212205 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3616
du_wits_3480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
      (coe d_'46'generalizedField'45'tx_212201 (coe v0))
-- Ledger.Conway.Specification.Utxo._.collateralInputs
d_collateralInputs_3484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_3484 ~v0 ~v1 v2 = du_collateralInputs_3484 v2
du_collateralInputs_3484 ::
  T_GeneralizeTel_212205 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_3484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3480
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_212201 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.currentTreasury
d_currentTreasury_3486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 -> Maybe Integer
d_currentTreasury_3486 ~v0 ~v1 v2 = du_currentTreasury_3486 v2
du_currentTreasury_3486 :: T_GeneralizeTel_212205 -> Maybe Integer
du_currentTreasury_3486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3504
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_212201 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.mint
d_mint_3488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 -> AgdaAny
d_mint_3488 ~v0 ~v1 v2 = du_mint_3488 v2
du_mint_3488 :: T_GeneralizeTel_212205 -> AgdaAny
du_mint_3488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3506
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_212201 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.refInputs
d_refInputs_3490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3490 ~v0 ~v1 v2 = du_refInputs_3490 v2
du_refInputs_3490 ::
  T_GeneralizeTel_212205 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3478
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_212201 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txFee
d_txFee_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 -> Integer
d_txFee_3502 ~v0 ~v1 v2 = du_txFee_3502 v2
du_txFee_3502 :: T_GeneralizeTel_212205 -> Integer
du_txFee_3502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3488
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_212201 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txIns
d_txIns_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3510 ~v0 ~v1 v2 = du_txIns_3510 v2
du_txIns_3510 ::
  T_GeneralizeTel_212205 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3476
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_212201 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txNetworkId
d_txNetworkId_3512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 -> Maybe AgdaAny
d_txNetworkId_3512 ~v0 ~v1 v2 = du_txNetworkId_3512 v2
du_txNetworkId_3512 :: T_GeneralizeTel_212205 -> Maybe AgdaAny
du_txNetworkId_3512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3502
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_212201 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txOuts
d_txOuts_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3514 ~v0 ~v1 v2 = du_txOuts_3514 v2
du_txOuts_3514 ::
  T_GeneralizeTel_212205 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_3514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3482
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_212201 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txVldt
d_txVldt_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3516 ~v0 ~v1 v2 = du_txVldt_3516 v2
du_txVldt_3516 ::
  T_GeneralizeTel_212205 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_3516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3492
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_212201 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txWithdrawals
d_txWithdrawals_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3518 ~v0 ~v1 v2 = du_txWithdrawals_3518 v2
du_txWithdrawals_3518 ::
  T_GeneralizeTel_212205 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_3518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3490
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_212201 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txrdmrs
d_txrdmrs_3528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_212205 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3528 ~v0 ~v1 v2 = du_txrdmrs_3528 v2
du_txrdmrs_3528 ::
  T_GeneralizeTel_212205 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_3528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3632
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
         (coe d_'46'generalizedField'45'tx_212201 (coe v0)))
-- Ledger.Conway.Specification.Utxo.UTXO-premises
d_UTXO'45'premises_3602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_UTxOEnv_2490 ->
  T_UTxOState_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3602 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1356
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3476
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                     (coe v4)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_470
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1356
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_586
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                          (coe d_utxo_2516 (coe v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3476
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                        (coe v4)))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8746'__708
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3478
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                           (coe v4)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3480
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                           (coe v4))))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  du_Dec'45'inInterval_3108 (coe v0) (coe d_slot_2498 (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3492
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                        (coe v4))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                     (d_minfee_2592
                        (coe v0) (coe v1) (coe d_pparams_2500 (coe v2))
                        (coe d_utxo_2516 (coe v3)) (coe v4))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3488
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                           (coe v4))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                 (coe
                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                    erased
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                                          (coe v0)))
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased
                                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                      (coe v0))))))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_246
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                (coe v0)))))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3632
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
                                       (coe v4))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_'8709'_470
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe
                                 (\ v5 ->
                                    coe
                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_range_588
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       erased
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1356
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                                             (coe v0))))
                                    (coe d_utxo_2516 (coe v3))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3480
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                          (coe v4))))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                                                  (coe v0)))
                                            (coe v5) (coe du_coinPolicies_3214 (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
                                          (coe v0))
                                       (coe
                                          du_balance'8242'_3282 (coe v0) (coe v4)
                                          (coe d_utxo_2516 (coe v3)))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                                                  (coe v0)))
                                            (coe v5)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
                                                  (coe v0))
                                               (coe
                                                  du_balance'8242'_3282 (coe v0) (coe v4)
                                                  (coe d_utxo_2516 (coe v3))))))
                                    (coe du_coinPolicies_3214 (coe v0))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                    (mulInt
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3488
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                             (coe v4)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
                                          (coe d_pparams_2500 (coe v2))))
                                    (mulInt
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
                                             (coe v0))
                                          (coe
                                             du_balance'8242'_3282 (coe v0) (coe v4)
                                             (coe d_utxo_2516 (coe v3))))
                                       (coe (100 :: Integer))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                          (coe
                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased
                                             () erased
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1356
                                                (coe v0))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3480
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                             (coe v4)))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_'8709'_470
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
                                 (coe v0)))
                           (coe
                              du_consumed_3312 (coe v0) (coe d_pparams_2500 (coe v2)) (coe v3)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                 (coe v4)))
                           (coe
                              du_produced_3320 (coe v0) (coe d_pparams_2500 (coe v2)) (coe v3)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                 (coe v4))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
                                    (coe v0))
                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3506
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                       (coe v4))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                           () erased () erased
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                           () erased () erased
                                                           (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                                          (coe v0))))))
                                                           (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_246
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                                    (coe v0))))))
                                                     (coe v5)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3632
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
                                                              (coe v4))))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                           () erased () erased
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                           () erased () erased
                                                           (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                                          (coe v0))))))
                                                           (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_246
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                                    (coe v0))))))
                                                     (coe v5)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3632
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
                                                      (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1790
                                                   (coe v0))))
                                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3492
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                   (coe v4)))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_DecEq'45'UTCTime_2536
                                                (coe v1))))
                                       (coe
                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                          MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                          MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                          (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_epochInfoSlotToUTCTime_2550
                                             (coe v1))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3492
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                   (coe v4)))))
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                    (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3654
                                       (coe v4))
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
                                       (coe d_pparams_2500 (coe v2))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (d_refScriptsSize_2586
                                          (coe v0) (coe v1) (coe d_utxo_2516 (coe v3)) (coe v4))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
                                          (coe d_pparams_2500 (coe v2))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2548
                                                        (coe v0))
                                                     (mulInt
                                                        (coe
                                                           addInt (coe (160 :: Integer))
                                                           (coe
                                                              du_utxoEntrySize_2486 (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
                                                           (coe d_pparams_2500 (coe v2)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3696
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v5)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                             (coe
                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3686
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3482
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                      (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2540
                                                        v1
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3696
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
                                                        (coe d_pparams_2500 (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3686
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3482
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                         (coe v4))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.WithoutK.du_Dec'45''8846'All_42
                                                        (coe
                                                           (\ v6 ->
                                                              MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                        (coe
                                                           (\ v6 ->
                                                              coe
                                                                MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
                                                                   (coe v6))
                                                                (64 :: Integer)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v5))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_range_588
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3686
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3482
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                            (coe v4))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1372
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v5)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_342
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1372
                                                                 (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_range_588
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3686
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3482
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                               (coe v4))))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         (\ v5 ->
                                                            coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1372
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                 (coe v5))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_342
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1372
                                                                    (coe v0)))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3490
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                               (coe v4)))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3502
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                               (coe v4)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_342
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1372
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1372
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3504
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                               (coe v4)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe d_treasury_2502 (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))
-- Ledger.Conway.Specification.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_190377 ::
  T_GeneralizeTel_190389 -> T_UTxOEnv_2490
d_'46'generalizedField'45'Γ_190377 v0
  = case coe v0 of
      C_mkGeneralizeTel_190391 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_190379 ::
  T_GeneralizeTel_190389 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638
d_'46'generalizedField'45'tx_190379 v0
  = case coe v0 of
      C_mkGeneralizeTel_190391 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_190381 ::
  T_GeneralizeTel_190389 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_190381 v0
  = case coe v0 of
      C_mkGeneralizeTel_190391 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_190383 ::
  T_GeneralizeTel_190389 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_190383 v0
  = case coe v0 of
      C_mkGeneralizeTel_190391 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_190385 ::
  T_GeneralizeTel_190389 -> Integer
d_'46'generalizedField'45'fees_190385 v0
  = case coe v0 of
      C_mkGeneralizeTel_190391 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_190387 ::
  T_GeneralizeTel_190389 -> Integer
d_'46'generalizedField'45'donations_190387 v0
  = case coe v0 of
      C_mkGeneralizeTel_190391 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.GeneralizeTel
d_GeneralizeTel_190389 a0 a1 = ()
data T_GeneralizeTel_190389
  = C_mkGeneralizeTel_190391 T_UTxOEnv_2490
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer Integer
-- Ledger.Conway.Specification.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_197579 ::
  T_GeneralizeTel_197591 -> T_UTxOEnv_2490
d_'46'generalizedField'45'Γ_197579 v0
  = case coe v0 of
      C_mkGeneralizeTel_197593 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_197581 ::
  T_GeneralizeTel_197591 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638
d_'46'generalizedField'45'tx_197581 v0
  = case coe v0 of
      C_mkGeneralizeTel_197593 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_197583 ::
  T_GeneralizeTel_197591 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_197583 v0
  = case coe v0 of
      C_mkGeneralizeTel_197593 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_197585 ::
  T_GeneralizeTel_197591 -> Integer
d_'46'generalizedField'45'fees_197585 v0
  = case coe v0 of
      C_mkGeneralizeTel_197593 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_197587 ::
  T_GeneralizeTel_197591 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_197587 v0
  = case coe v0 of
      C_mkGeneralizeTel_197593 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_197589 ::
  T_GeneralizeTel_197591 -> Integer
d_'46'generalizedField'45'donations_197589 v0
  = case coe v0 of
      C_mkGeneralizeTel_197593 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.GeneralizeTel
d_GeneralizeTel_197591 a0 a1 = ()
data T_GeneralizeTel_197591
  = C_mkGeneralizeTel_197593 T_UTxOEnv_2490
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Conway.Specification.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_212197 ::
  T_GeneralizeTel_212205 -> T_UTxOEnv_2490
d_'46'generalizedField'45'Γ_212197 v0
  = case coe v0 of
      C_mkGeneralizeTel_212207 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-s
d_'46'generalizedField'45's_212199 ::
  T_GeneralizeTel_212205 -> T_UTxOState_2506
d_'46'generalizedField'45's_212199 v0
  = case coe v0 of
      C_mkGeneralizeTel_212207 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_212201 ::
  T_GeneralizeTel_212205 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638
d_'46'generalizedField'45'tx_212201 v0
  = case coe v0 of
      C_mkGeneralizeTel_212207 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_212203 ::
  T_GeneralizeTel_212205 -> T_UTxOState_2506
d_'46'generalizedField'45's''_212203 v0
  = case coe v0 of
      C_mkGeneralizeTel_212207 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.GeneralizeTel
d_GeneralizeTel_212205 a0 a1 = ()
data T_GeneralizeTel_212205
  = C_mkGeneralizeTel_212207 T_UTxOEnv_2490 T_UTxOState_2506
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638
                             T_UTxOState_2506
