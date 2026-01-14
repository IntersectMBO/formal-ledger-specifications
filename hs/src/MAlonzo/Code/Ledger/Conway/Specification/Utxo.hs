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
d_Dec'45'isVKey_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_82 ~v0 = du_Dec'45'isVKey_82
du_Dec'45'isVKey_82 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_82
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- _.DecEq-BaseAddr
d_DecEq'45'BaseAddr_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_92 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_270
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
            (coe v0)))
-- _.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_94 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_272
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
            (coe v0)))
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_128 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
            (coe v0)))
-- _.ExUnits
d_ExUnits_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_170 = erased
-- _.GovProposal
d_GovProposal_194 a0 = ()
-- _.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RewardAddress_296 ~v0
  = du_HasNetworkId'45'RewardAddress_296
du_HasNetworkId'45'RewardAddress_296 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'RewardAddress_296
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_162
-- _.HasPParams
d_HasPParams_298 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_324 a0 a1 a2 = ()
-- _.MemoryEstimate
d_MemoryEstimate_384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_384 = erased
-- _.NetworkId
d_NetworkId_392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_392 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
         (coe v0))
-- _.PParams
d_PParams_416 a0 = ()
-- _.PParamsOf
d_PParamsOf_424 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_PParamsOf_424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_430
      (coe v0)
-- _.ScriptHash
d_ScriptHash_482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_482 = erased
-- _.Slot
d_Slot_532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_532 = erased
-- _.Tx
d_Tx_560 a0 = ()
-- _.TxBody
d_TxBody_564 a0 = ()
-- _.TxOutʰ
d_TxOut'688'_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut'688'_578 = erased
-- _.UTxO
d_UTxO_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_584 = erased
-- _.UTxOOf
d_UTxOOf_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3238 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3246
      (coe v0)
-- _.Value
d_Value_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_604 = erased
-- _.coin
d_coin_636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
         (coe v0))
-- _.getValueʰ
d_getValue'688'_662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_662 ~v0 = du_getValue'688'_662
du_getValue'688'_662 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_662
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3490
-- _.inject
d_inject_674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
         (coe v0))
-- _.netId
d_netId_724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_724 ~v0 = du_netId_724
du_netId_724 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_724
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- _.txOutHash
d_txOutHash_784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3480
      (coe v0)
-- _.GovActions.GovProposal
d_GovProposal_952 a0 = ()
-- _.GovActions.GovProposal.action
d_action_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828
d_action_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_990
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_884
d_anchor_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1000
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976 ->
  Integer
d_deposit_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_996
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976 ->
  Maybe AgdaAny
d_policy_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_994
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976 ->
  AgdaAny
d_prevAction_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_992
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_998
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1220 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_PParamsOf_1220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_430
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3238 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3246
      (coe v0)
-- _.PParams.Emax
d_Emax_1324 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_Emax_1324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_390
      (coe v0)
-- _.PParams.a
d_a_1326 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_a_1326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_362 (coe v0)
-- _.PParams.a0
d_a0_1328 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_394 (coe v0)
-- _.PParams.b
d_b_1330 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_b_1330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_364 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1332 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_ccMaxTermLength_1332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_406
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1334 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_ccMinSize_1334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_404
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1336 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_coinsPerUTxOByte_1336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_374
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1338 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_collateralPercentage_1338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_396
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1340 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_costmdls_1340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_398
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_drepActivity_1342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_414
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_drepDeposit_1344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_412
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206
d_drepThresholds_1346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_govActionDeposit_1348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_govActionLifetime_1350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_408
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_keyDeposit_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_maxBlockExUnits_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_354
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxBlockSize_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_346
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxCollateralInputs_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_358
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxHeaderSize_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_350
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxRefScriptSizePerBlock_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_382
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxRefScriptSizePerTx_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_380
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_maxTxExUnits_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_352
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxTxSize_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_348
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxValSize_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_356
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_378
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_minUTxOValue_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_388
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_370
      (coe v0)
-- _.PParams.nopt
d_nopt_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_nopt_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_392
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_poolDeposit_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_250
d_poolThresholds_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_400
      (coe v0)
-- _.PParams.prices
d_prices_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_prices_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_376
      (coe v0)
-- _.PParams.pv
d_pv_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_360 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_386
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_384
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_372
      (coe v0)
-- _.Tx.body
d_body_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
d_body_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
      (coe v0)
-- _.Tx.isValid
d_isValid_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Bool
d_isValid_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
      (coe v0)
-- _.Tx.txAD
d_txAD_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Maybe AgdaAny
d_txAD_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3454
      (coe v0)
-- _.Tx.txsize
d_txsize_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Integer
d_txsize_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3450
      (coe v0)
-- _.Tx.wits
d_wits_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412
d_wits_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3296
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Maybe Integer
d_currentTreasury_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3320
      (coe v0)
-- _.TxBody.mint
d_mint_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  AgdaAny
d_mint_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3322
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3294
      (coe v0)
-- _.TxBody.reqSignerHashes
d_reqSignerHashes_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [AgdaAny]
d_reqSignerHashes_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3324
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Maybe AgdaAny
d_scriptIntegrityHash_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3326
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Maybe AgdaAny
d_txADhash_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3310
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_1836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282]
d_txCerts_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3302
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_txDonation_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3312
      (coe v0)
-- _.TxBody.txFee
d_txFee_1840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_txFee_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976]
d_txGovProposals_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3316
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_1844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_896]
d_txGovVotes_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3314
      (coe v0)
-- _.TxBody.txId
d_txId_1846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  AgdaAny
d_txId_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3300
      (coe v0)
-- _.TxBody.txIns
d_txIns_1848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Maybe AgdaAny
d_txNetworkId_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3318
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3308
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3306
      (coe v0)
-- Ledger.Conway.Specification.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_1906 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2768
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Utxo._.evalP2Scripts
d_evalP2Scripts_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_1910 ~v0 v1 = du_evalP2Scripts_1910 v1
du_evalP2Scripts_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2808
      (coe v0)
-- Ledger.Conway.Specification.Utxo._.DCert
d_DCert_1970 a0 a1 = ()
-- Ledger.Conway.Specification.Utxo._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1986 v0 ~v1
  = du_DecEq'45'DepositPurpose_1986 v0
du_DecEq'45'DepositPurpose_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
         (coe v0))
-- Ledger.Conway.Specification.Utxo._.DepositPurpose
d_DepositPurpose_1992 a0 a1 = ()
-- Ledger.Conway.Specification.Utxo._.Deposits
d_Deposits_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  ()
d_Deposits_1994 = erased
-- Ledger.Conway.Specification.Utxo._.DepositsOf
d_DepositsOf_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1130 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1138
      (coe v0)
-- Ledger.Conway.Specification.Utxo._.HasDeposits
d_HasDeposits_2048 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Utxo._.HasDeposits.DepositsOf
d_DepositsOf_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1130 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1138
      (coe v0)
-- Ledger.Conway.Specification.Utxo.totExUnits
d_totExUnits_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  AgdaAny
d_totExUnits_2346 v0 ~v1 v2 = du_totExUnits_2346 v0 v2
du_totExUnits_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  AgdaAny
du_totExUnits_2346 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_234
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_220
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
               (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3428
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
            (coe v1)))
-- Ledger.Conway.Specification.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  Integer
d_utxoEntrySizeWithoutVal_2358 ~v0
  = du_utxoEntrySizeWithoutVal_2358
du_utxoEntrySizeWithoutVal_2358 :: Integer
du_utxoEntrySizeWithoutVal_2358 = coe (8 :: Integer)
-- Ledger.Conway.Specification.Utxo.utxoEntrySize
d_utxoEntrySize_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2360 v0 ~v1 v2 = du_utxoEntrySize_2360 v0 v2
du_utxoEntrySize_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2360 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3490
            (coe v1)))
-- Ledger.Conway.Specification.Utxo.UTxOEnv
d_UTxOEnv_2364 a0 a1 = ()
data T_UTxOEnv_2364
  = C_constructor_2378 AgdaAny
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
                       Integer
-- Ledger.Conway.Specification.Utxo.UTxOEnv.slot
d_slot_2372 :: T_UTxOEnv_2364 -> AgdaAny
d_slot_2372 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOEnv.pparams
d_pparams_2374 ::
  T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2374 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOEnv.treasury
d_treasury_2376 :: T_UTxOEnv_2364 -> Integer
d_treasury_2376 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState
d_UTxOState_2380 a0 a1 = ()
data T_UTxOState_2380
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_2398 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Conway.Specification.Utxo.UTxOState.utxo
d_utxo_2390 ::
  T_UTxOState_2380 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2390 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2398 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState.fees
d_fees_2392 :: T_UTxOState_2380 -> Integer
d_fees_2392 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2398 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState.deposits
d_deposits_2394 ::
  T_UTxOState_2380 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2394 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2398 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState.donations
d_donations_2396 :: T_UTxOState_2380 -> Integer
d_donations_2396 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2398 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.HasUTxOState
d_HasUTxOState_2404 a0 a1 a2 a3 = ()
newtype T_HasUTxOState_2404
  = C_constructor_2414 (AgdaAny -> T_UTxOState_2380)
-- Ledger.Conway.Specification.Utxo.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2412 ::
  T_HasUTxOState_2404 -> AgdaAny -> T_UTxOState_2380
d_UTxOStateOf_2412 v0
  = case coe v0 of
      C_constructor_2414 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo._.UTxOStateOf
d_UTxOStateOf_2418 ::
  T_HasUTxOState_2404 -> AgdaAny -> T_UTxOState_2380
d_UTxOStateOf_2418 v0 = coe d_UTxOStateOf_2412 (coe v0)
-- Ledger.Conway.Specification.Utxo.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
d_HasPParams'45'UTxOEnv_2420 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2420
du_HasPParams'45'UTxOEnv_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
du_HasPParams'45'UTxOEnv_2420
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_432
      (coe (\ v0 -> d_pparams_2374 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3238
d_HasUTxO'45'UTxOState_2422 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2422
du_HasUTxO'45'UTxOState_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3238
du_HasUTxO'45'UTxOState_2422
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3248
      (coe (\ v0 -> d_utxo_2390 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasFee-UTxOState
d_HasFee'45'UTxOState_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2424 ~v0 ~v1 = du_HasFee'45'UTxOState_2424
du_HasFee'45'UTxOState_2424 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2424
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe (\ v0 -> d_fees_2392 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1130
d_HasDeposits'45'UTxOState_2426 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2426
du_HasDeposits'45'UTxOState_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1130
du_HasDeposits'45'UTxOState_2426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1140
      (coe (\ v0 -> d_deposits_2394 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2428 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2428
du_HasDonations'45'UTxOState_2428 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2428
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_donations_2396 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2430 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2430
du_HasCast'45'UTxOEnv_2430 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2430
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
                                 (2364 :: Integer) (18240141987391769988 :: Integer)
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
                                 (532 :: Integer) (18240141987391769988 :: Integer) "_.Slot"
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
                                    (2364 :: Integer) (18240141987391769988 :: Integer)
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
                                    (416 :: Integer) (18240141987391769988 :: Integer) "_.PParams"
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
                                       (2364 :: Integer) (18240141987391769988 :: Integer)
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
         (coe C_constructor_2378))
-- Ledger.Conway.Specification.Utxo.HasCast-UTxOState
d_HasCast'45'UTxOState_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2432 ~v0 ~v1 = du_HasCast'45'UTxOState_2432
du_HasCast'45'UTxOState_2432 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2432
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
                                 (2380 :: Integer) (18240141987391769988 :: Integer)
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
                                 (584 :: Integer) (18240141987391769988 :: Integer) "_.UTxO"
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
                                    (2380 :: Integer) (18240141987391769988 :: Integer)
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
                                       (2380 :: Integer) (18240141987391769988 :: Integer)
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
                                       (1994 :: Integer) (18240141987391769988 :: Integer)
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
                                          (2380 :: Integer) (18240141987391769988 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'44'_'10215''7512'_2398))
-- Ledger.Conway.Specification.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2434 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2434
  = C_UTXO'45'inductive_3430 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Utxo._._.outs
d_outs_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2444 ~v0 ~v1 v2 = du_outs_2444 v2
du_outs_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2444 v0
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
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3300
                 (coe v0))
              (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
         (coe v0))
-- Ledger.Conway.Specification.Utxo._._.balance
d_balance_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2450 v0 ~v1 v2 = du_balance_2450 v0 v2
du_balance_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2450 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_188
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_270
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_272
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                     (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
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
                              MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                        (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3490)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3480
            (coe v0))
         (coe v1))
-- Ledger.Conway.Specification.Utxo._._.cbalance
d_cbalance_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2456 v0 ~v1 v2 = du_cbalance_2456 v0 v2
du_cbalance_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2456 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
         (coe v0))
      (coe du_balance_2450 (coe v0) (coe v1))
-- Ledger.Conway.Specification.Utxo._._.refScriptsSize
d_refScriptsSize_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Integer
d_refScriptsSize_2460 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_scriptSize_2410
            (coe v1))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3514
            (coe v0) (coe v3) (coe v2)))
-- Ledger.Conway.Specification.Utxo._._.minfee
d_minfee_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Integer
d_minfee_2466 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_txscriptfee_2402
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_376
                  (coe v2))
               (coe du_totExUnits_2346 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Fees.d_scriptsCost_1896
               (coe v0) (coe v2)
               (coe d_refScriptsSize_2460 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_364 (coe v2)))
      (coe
         mulInt
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_362 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3450
            (coe v4)))
-- Ledger.Conway.Specification.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2474 v0 ~v1 = du_HasCoin'45'UTxO_2474 v0
du_HasCoin'45'UTxO_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2474 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe du_cbalance_2456 (coe v0))
-- Ledger.Conway.Specification.Utxo.certDeposit
d_certDeposit_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2476 ~v0 ~v1 v2 v3 = du_certDeposit_2476 v2 v3
du_certDeposit_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2476 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1284 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1116
                      (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1288 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1118
                      (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
                      (coe v1)))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1292 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1120
                      (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1298 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1116
                      (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                      (coe v1)))
         _ -> coe v2)
-- Ledger.Conway.Specification.Utxo.certRefund
d_certRefund_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1114]
d_certRefund_2494 ~v0 ~v1 v2 = du_certRefund_2494 v2
du_certRefund_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1114]
du_certRefund_2494 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_470
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1286 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                (MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1116
                   (coe v2))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1294 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                (MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1120
                   (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Specification.Utxo.ValidCertDeposits
d_ValidCertDeposits_2504 a0 a1 a2 a3 a4 = ()
data T_ValidCertDeposits_2504
  = C_'91''93'_2510 | C_delegate_2522 T_ValidCertDeposits_2504 |
    C_regpool_2530 T_ValidCertDeposits_2504 |
    C_regdrep_2540 T_ValidCertDeposits_2504 |
    C_reg_2548 T_ValidCertDeposits_2504 |
    C_dereg_2558 Integer
                 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_ValidCertDeposits_2504 |
    C_deregdrep_2566 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                     T_ValidCertDeposits_2504 |
    C_ccreghot_2574 T_ValidCertDeposits_2504 |
    C_retirepool_2582 T_ValidCertDeposits_2504
-- Ledger.Conway.Specification.Utxo.validCertDeposits?
d_validCertDeposits'63'_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCertDeposits'63'_2590 v0 ~v1 v2 v3 v4
  = du_validCertDeposits'63'_2590 v0 v2 v3 v4
du_validCertDeposits'63'_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCertDeposits'63'_2590 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe C_'91''93'_2510))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1284 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_delegate_2522)
                    (coe
                       (\ v10 ->
                          case coe v10 of
                            C_delegate_2522 v16 -> coe v16
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2590 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1116
                                   (coe v6))
                                (coe v9))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1286 v6 v7
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
                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                               (coe v0)))
                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1116
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
                                                      C_dereg_2558 v8 v12
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                         erased))
                                                   (coe
                                                      (\ v13 ->
                                                         case coe v13 of
                                                           C_dereg_2558 v16 v18 v19 v20 -> coe v20
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2590 (coe v0)
                                                      (coe v1)
                                                      (let v13
                                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
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
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1116
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
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1116
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
                                                      C_dereg_2558
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
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1116
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
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1116
                                                                  (coe v6)))
                                                            v11))
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                         erased))
                                                   (coe
                                                      (\ v12 ->
                                                         case coe v12 of
                                                           C_dereg_2558 v15 v17 v18 v19 -> coe v19
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2590 (coe v0)
                                                      (coe v1)
                                                      (let v12
                                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
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
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1116
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
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1288 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_regpool_2530)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_regpool_2530 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2590 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1118
                                   (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
                                   (coe v1)))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1290 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_retirepool_2582)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_retirepool_2582 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2590 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1292 v6 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_regdrep_2540)
                    (coe
                       (\ v9 ->
                          case coe v9 of
                            C_regdrep_2540 v14 -> coe v14
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2590 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1120
                                   (coe v6))
                                (coe v7))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1294 v6 v7
               -> let v8
                        = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                            (coe
                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe
                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                        (coe v0)))
                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1120
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
                                            (coe C_deregdrep_2566 v11)
                                            (coe
                                               (\ v12 ->
                                                  case coe v12 of
                                                    C_deregdrep_2566 v16 v17 -> coe v17
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               du_validCertDeposits'63'_2590 (coe v0) (coe v1)
                                               (let v12
                                                      = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1120
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
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1296 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_ccreghot_2574)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_ccreghot_2574 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2590 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1298 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_reg_2548)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_reg_2548 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2590 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1116
                                   (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                                   (coe v1)))))
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_2762 v0 ~v1 v2 v3 v4
  = du_Dec'45'ValidCertDeposits_2762 v0 v2 v3 v4
du_Dec'45'ValidCertDeposits_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_2762 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         du_validCertDeposits'63'_2590 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Utxo.updateCertDeposits
d_updateCertDeposits_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2764 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_2764 v0 v2 v3 v4
du_updateCertDeposits_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2764 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> let v6
                 = coe
                     du_updateCertDeposits_2764 (coe v0) (coe v1) (coe v5) (coe v3) in
           coe
             (case coe v4 of
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1284 v7 v8 v9 v10
                  -> coe
                       du_updateCertDeposits_2764 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                (coe v0)))
                          v3 (coe du_certDeposit_2476 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1286 v7 v8
                  -> coe
                       du_updateCertDeposits_2764 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2494 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1288 v7 v8
                  -> coe
                       du_updateCertDeposits_2764 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                   (coe v0))))
                          (coe v3) (coe du_certDeposit_2476 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1292 v7 v8 v9
                  -> coe
                       du_updateCertDeposits_2764 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                (coe v0)))
                          v3 (coe du_certDeposit_2476 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1294 v7 v8
                  -> coe
                       du_updateCertDeposits_2764 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2494 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1298 v7 v8
                  -> coe
                       du_updateCertDeposits_2764 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                (coe v0)))
                          v3 (coe du_certDeposit_2476 (coe v4) (coe v1)))
                _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.updateProposalDeposits
d_updateProposalDeposits_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2842 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_2842 v0 v2 v3 v4 v5
du_updateProposalDeposits_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2842 v0 v1 v2 v3 v4
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
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                   (coe v0)))
             (coe
                du_updateProposalDeposits_2842 (coe v0) (coe v6) (coe v2) (coe v3)
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
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1122
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.updateDeposits
d_updateDeposits_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2854 v0 ~v1 v2 v3 v4
  = du_updateDeposits_2854 v0 v2 v3 v4
du_updateDeposits_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2854 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_2764 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3302
         (coe v2))
      (coe
         du_updateProposalDeposits_2842 (coe v0)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3316
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3300
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
            (coe v1))
         (coe v3))
-- Ledger.Conway.Specification.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976] ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2902 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_2902 v0 v2 v3 v4
du_proposalDepositsΔ_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976] ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2902 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_2842 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3300
         (coe v3))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
         (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Conway.Specification.Utxo.depositsChange
d_depositsChange_2952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2952 v0 ~v1 v2 v3 v4
  = du_depositsChange_2952 v0 v2 v3 v4
du_depositsChange_2952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2952 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__266
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
               (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_2854 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
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
d_inInterval_2962 a0 a1 a2 a3 = ()
data T_inInterval_2962
  = C_both_2970 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2974 AgdaAny | C_upper_2978 AgdaAny | C_none_2980
-- Ledger.Conway.Specification.Utxo.Dec-inInterval
d_Dec'45'inInterval_2982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2982 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2982 v0 v2 v3
du_Dec'45'inInterval_2982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2982 v0 v1 v2
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                                            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
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
                                                                                    C_both_2970
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
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
                                                         (coe C_lower_2974 v9))
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
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
                                                         (coe C_upper_2978 v9))
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
                                 (coe C_none_2980))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_3084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_3084 v0 ~v1
  = du_HasCoin'45'UTxOState_3084 v0
du_HasCoin'45'UTxOState_3084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_3084 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2456 (coe v0) (coe d_utxo_2390 (coe v1)))
                    (coe d_donations_2396 (coe v1)))
                 (coe d_fees_2392 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                 (coe (\ v2 -> v2)) (coe d_deposits_2394 (coe v1)))))
-- Ledger.Conway.Specification.Utxo.coinPolicies
d_coinPolicies_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  [AgdaAny]
d_coinPolicies_3088 v0 ~v1 = du_coinPolicies_3088 v0
du_coinPolicies_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny]
du_coinPolicies_3088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
            (coe v0))
         (1 :: Integer))
-- Ledger.Conway.Specification.Utxo.isAdaOnly
d_isAdaOnly_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  AgdaAny -> ()
d_isAdaOnly_3090 = erased
-- Ledger.Conway.Specification.Utxo.collateralCheck
d_collateralCheck_3094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_3094 = erased
-- Ledger.Conway.Specification.Utxo._.balance′
d_balance'8242'_3156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance'8242'_3156 v0 ~v1 ~v2 v3 v4
  = du_balance'8242'_3156 v0 v3 v4
du_balance'8242'_3156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance'8242'_3156 v0 v1 v2
  = coe
      du_balance_2450 (coe v0)
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
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                  (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3296
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
               (coe v1))))
-- Ledger.Conway.Specification.Utxo._._.depositRefunds
d_depositRefunds_3170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_depositRefunds_3170 v0 ~v1 v2 v3 v4
  = du_depositRefunds_3170 v0 v2 v3 v4
du_depositRefunds_3170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
du_depositRefunds_3170 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_negPart_70
      (coe
         du_depositsChange_2952 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2394 (coe v2)))
-- Ledger.Conway.Specification.Utxo._._.newDeposits
d_newDeposits_3178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_newDeposits_3178 v0 ~v1 v2 v3 v4
  = du_newDeposits_3178 v0 v2 v3 v4
du_newDeposits_3178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
du_newDeposits_3178 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_posPart_58
      (coe
         du_depositsChange_2952 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2394 (coe v2)))
-- Ledger.Conway.Specification.Utxo._._.consumed
d_consumed_3186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  AgdaAny
d_consumed_3186 v0 ~v1 v2 v3 v4 = du_consumed_3186 v0 v2 v3 v4
du_consumed_3186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  AgdaAny
du_consumed_3186 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                     (coe v0))))
            (coe
               du_balance_2450 (coe v0)
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
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                           (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                           (coe v0))))
                  (coe d_utxo_2390 (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
                     (coe v3))))
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3322
               (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v0))
            (coe du_depositRefunds_3170 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
            (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3306
               (coe v3))))
-- Ledger.Conway.Specification.Utxo._._.produced
d_produced_3194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  AgdaAny
d_produced_3194 v0 ~v1 v2 v3 v4 = du_produced_3194 v0 v2 v3 v4
du_produced_3194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  AgdaAny
du_produced_3194 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                     (coe v0))))
            (coe du_balance_2450 (coe v0) (coe du_outs_2444 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                  (coe v0))
               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
                  (coe v3))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v0))
            (coe du_newDeposits_3178 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3312
            (coe v3)))
-- Ledger.Conway.Specification.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__3218 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__3218
  = C_Scripts'45'Yes_3274 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_3330 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Utxo._.isValid
d_isValid_3224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_187655 -> Bool
d_isValid_3224 ~v0 ~v1 v2 = du_isValid_3224 v2
du_isValid_3224 :: T_GeneralizeTel_187655 -> Bool
du_isValid_3224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
      (coe d_'46'generalizedField'45'tx_187645 (coe v0))
-- Ledger.Conway.Specification.Utxo._.body
d_body_3228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_187655 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
d_body_3228 ~v0 ~v1 v2 = du_body_3228 v2
du_body_3228 ::
  T_GeneralizeTel_187655 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
du_body_3228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
      (coe d_'46'generalizedField'45'tx_187645 (coe v0))
-- Ledger.Conway.Specification.Utxo._.txCerts
d_txCerts_3250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_187655 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282]
d_txCerts_3250 ~v0 ~v1 v2 = du_txCerts_3250 v2
du_txCerts_3250 ::
  T_GeneralizeTel_187655 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282]
du_txCerts_3250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3302
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_187645 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txDonation
d_txDonation_3252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_187655 -> Integer
d_txDonation_3252 ~v0 ~v1 v2 = du_txDonation_3252 v2
du_txDonation_3252 :: T_GeneralizeTel_187655 -> Integer
du_txDonation_3252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3312
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_187645 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txFee
d_txFee_3254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_187655 -> Integer
d_txFee_3254 ~v0 ~v1 v2 = du_txFee_3254 v2
du_txFee_3254 :: T_GeneralizeTel_187655 -> Integer
du_txFee_3254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_187645 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txIns
d_txIns_3262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_187655 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3262 ~v0 ~v1 v2 = du_txIns_3262 v2
du_txIns_3262 ::
  T_GeneralizeTel_187655 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_187645 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.isValid
d_isValid_3280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_194817 -> Bool
d_isValid_3280 ~v0 ~v1 v2 = du_isValid_3280 v2
du_isValid_3280 :: T_GeneralizeTel_194817 -> Bool
du_isValid_3280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
      (coe d_'46'generalizedField'45'tx_194807 (coe v0))
-- Ledger.Conway.Specification.Utxo._.body
d_body_3284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_194817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
d_body_3284 ~v0 ~v1 v2 = du_body_3284 v2
du_body_3284 ::
  T_GeneralizeTel_194817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
du_body_3284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
      (coe d_'46'generalizedField'45'tx_194807 (coe v0))
-- Ledger.Conway.Specification.Utxo._.collateralInputs
d_collateralInputs_3292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_194817 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_3292 ~v0 ~v1 v2 = du_collateralInputs_3292 v2
du_collateralInputs_3292 ::
  T_GeneralizeTel_194817 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_3292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3296
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_194807 (coe v0)))
-- Ledger.Conway.Specification.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_3332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_3332 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            du_Dec'45'ValidCertDeposits_2762 (coe v0)
            (coe d_pparams_2374 (coe v2)) (coe v5)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3302
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                  (coe v3))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2808
                  v1
                  (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2768
                     (coe v0) (coe v1) (coe d_pparams_2374 (coe v2)) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
                  (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
                  (coe v3))
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
-- Ledger.Conway.Specification.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_3334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_3334 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2808
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2768
                  (coe v0) (coe v1) (coe d_pparams_2374 (coe v2)) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
               (coe v3)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
               (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Specification.Utxo._.body
d_body_3350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_208225 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
d_body_3350 ~v0 ~v1 v2 = du_body_3350 v2
du_body_3350 ::
  T_GeneralizeTel_208225 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
du_body_3350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
      (coe d_'46'generalizedField'45'tx_208221 (coe v0))
-- Ledger.Conway.Specification.Utxo._.txsize
d_txsize_3352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_208225 -> Integer
d_txsize_3352 ~v0 ~v1 v2 = du_txsize_3352 v2
du_txsize_3352 :: T_GeneralizeTel_208225 -> Integer
du_txsize_3352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3450
      (coe d_'46'generalizedField'45'tx_208221 (coe v0))
-- Ledger.Conway.Specification.Utxo._.wits
d_wits_3354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_208225 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412
d_wits_3354 ~v0 ~v1 v2 = du_wits_3354 v2
du_wits_3354 ::
  T_GeneralizeTel_208225 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412
du_wits_3354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
      (coe d_'46'generalizedField'45'tx_208221 (coe v0))
-- Ledger.Conway.Specification.Utxo._.currentTreasury
d_currentTreasury_3360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_208225 -> Maybe Integer
d_currentTreasury_3360 ~v0 ~v1 v2 = du_currentTreasury_3360 v2
du_currentTreasury_3360 :: T_GeneralizeTel_208225 -> Maybe Integer
du_currentTreasury_3360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3320
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_208221 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.mint
d_mint_3362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_208225 -> AgdaAny
d_mint_3362 ~v0 ~v1 v2 = du_mint_3362 v2
du_mint_3362 :: T_GeneralizeTel_208225 -> AgdaAny
du_mint_3362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_208221 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.refInputs
d_refInputs_3364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_208225 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3364 ~v0 ~v1 v2 = du_refInputs_3364 v2
du_refInputs_3364 ::
  T_GeneralizeTel_208225 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3294
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_208221 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txFee
d_txFee_3376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_208225 -> Integer
d_txFee_3376 ~v0 ~v1 v2 = du_txFee_3376 v2
du_txFee_3376 :: T_GeneralizeTel_208225 -> Integer
du_txFee_3376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_208221 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txIns
d_txIns_3384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_208225 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3384 ~v0 ~v1 v2 = du_txIns_3384 v2
du_txIns_3384 ::
  T_GeneralizeTel_208225 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_208221 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txNetworkId
d_txNetworkId_3386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_208225 -> Maybe AgdaAny
d_txNetworkId_3386 ~v0 ~v1 v2 = du_txNetworkId_3386 v2
du_txNetworkId_3386 :: T_GeneralizeTel_208225 -> Maybe AgdaAny
du_txNetworkId_3386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3318
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_208221 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txOuts
d_txOuts_3388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_208225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3388 ~v0 ~v1 v2 = du_txOuts_3388 v2
du_txOuts_3388 ::
  T_GeneralizeTel_208225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_3388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_208221 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txVldt
d_txVldt_3390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_208225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3390 ~v0 ~v1 v2 = du_txVldt_3390 v2
du_txVldt_3390 ::
  T_GeneralizeTel_208225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_3390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3308
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_208221 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txWithdrawals
d_txWithdrawals_3392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_208225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3392 ~v0 ~v1 v2 = du_txWithdrawals_3392 v2
du_txWithdrawals_3392 ::
  T_GeneralizeTel_208225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_3392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3306
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_208221 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txrdmrs
d_txrdmrs_3402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_208225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3402 ~v0 ~v1 v2 = du_txrdmrs_3402 v2
du_txrdmrs_3402 ::
  T_GeneralizeTel_208225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_3402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3428
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
         (coe d_'46'generalizedField'45'tx_208221 (coe v0)))
-- Ledger.Conway.Specification.Utxo.UTXO-premises
d_UTXO'45'premises_3476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_UTxOEnv_2364 ->
  T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3476 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_586
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                          (coe d_utxo_2390 (coe v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                        (coe v4)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3294
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                        (coe v4)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__732
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                           (coe v4)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3294
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                           (coe v4))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_470
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     du_Dec'45'inInterval_2982 (coe v0) (coe d_slot_2372 (coe v2))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3308
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                           (coe v4))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                        (d_minfee_2466
                           (coe v0) (coe v1) (coe d_pparams_2374 (coe v2))
                           (coe d_utxo_2390 (coe v3)) (coe v4))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_234
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3428
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
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
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
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
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                                                (coe v0))))
                                       (coe d_utxo_2390 (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3296
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                     (coe v0)))
                                               (coe v5) (coe du_coinPolicies_3088 (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                             (coe v0))
                                          (coe
                                             du_balance'8242'_3156 (coe v0) (coe v4)
                                             (coe d_utxo_2390 (coe v3)))))
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
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                                     (coe v0))
                                                  (coe
                                                     du_balance'8242'_3156 (coe v0) (coe v4)
                                                     (coe d_utxo_2390 (coe v3))))))
                                       (coe du_coinPolicies_3088 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_396
                                             (coe d_pparams_2374 (coe v2))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                                (coe v0))
                                             (coe
                                                du_balance'8242'_3156 (coe v0) (coe v4)
                                                (coe d_utxo_2390 (coe v3))))
                                          (coe (100 :: Integer))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3296
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                    (coe v0)))
                              (coe
                                 du_consumed_3186 (coe v0) (coe d_pparams_2374 (coe v2)) (coe v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                    (coe v4)))
                              (coe
                                 du_produced_3194 (coe v0) (coe d_pparams_2374 (coe v2)) (coe v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                    (coe v4))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                       (coe v0))
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3322
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                          (coe v4))))
                                 (coe (0 :: Integer)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3450
                                       (coe v4))
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_348
                                       (coe d_pparams_2374 (coe v2))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (d_refScriptsSize_2460
                                          (coe v0) (coe v1) (coe d_utxo_2390 (coe v3)) (coe v4))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_380
                                          (coe d_pparams_2374 (coe v2))))
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
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                                        (coe v0))
                                                     (mulInt
                                                        (coe
                                                           addInt (coe (160 :: Integer))
                                                           (coe
                                                              du_utxoEntrySize_2360 (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_374
                                                           (coe d_pparams_2374 (coe v2)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3490
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v5)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                             (coe
                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3480
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2404
                                                        v1
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3490
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_356
                                                        (coe d_pparams_2374 (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3480
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                                                (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3480
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v5)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3480
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110
                                                                 (coe v5))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3306
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                                               (coe v4)))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3318
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                                               (coe v4)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                                               (coe v4)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe d_treasury_2376 (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))
-- Ledger.Conway.Specification.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_187643 ::
  T_GeneralizeTel_187655 -> T_UTxOEnv_2364
d_'46'generalizedField'45'Γ_187643 v0
  = case coe v0 of
      C_mkGeneralizeTel_187657 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_187645 ::
  T_GeneralizeTel_187655 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
d_'46'generalizedField'45'tx_187645 v0
  = case coe v0 of
      C_mkGeneralizeTel_187657 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_187647 ::
  T_GeneralizeTel_187655 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_187647 v0
  = case coe v0 of
      C_mkGeneralizeTel_187657 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_187649 ::
  T_GeneralizeTel_187655 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_187649 v0
  = case coe v0 of
      C_mkGeneralizeTel_187657 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_187651 ::
  T_GeneralizeTel_187655 -> Integer
d_'46'generalizedField'45'fees_187651 v0
  = case coe v0 of
      C_mkGeneralizeTel_187657 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_187653 ::
  T_GeneralizeTel_187655 -> Integer
d_'46'generalizedField'45'donations_187653 v0
  = case coe v0 of
      C_mkGeneralizeTel_187657 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.GeneralizeTel
d_GeneralizeTel_187655 a0 a1 = ()
data T_GeneralizeTel_187655
  = C_mkGeneralizeTel_187657 T_UTxOEnv_2364
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer Integer
-- Ledger.Conway.Specification.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_194805 ::
  T_GeneralizeTel_194817 -> T_UTxOEnv_2364
d_'46'generalizedField'45'Γ_194805 v0
  = case coe v0 of
      C_mkGeneralizeTel_194819 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_194807 ::
  T_GeneralizeTel_194817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
d_'46'generalizedField'45'tx_194807 v0
  = case coe v0 of
      C_mkGeneralizeTel_194819 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_194809 ::
  T_GeneralizeTel_194817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_194809 v0
  = case coe v0 of
      C_mkGeneralizeTel_194819 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_194811 ::
  T_GeneralizeTel_194817 -> Integer
d_'46'generalizedField'45'fees_194811 v0
  = case coe v0 of
      C_mkGeneralizeTel_194819 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_194813 ::
  T_GeneralizeTel_194817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_194813 v0
  = case coe v0 of
      C_mkGeneralizeTel_194819 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_194815 ::
  T_GeneralizeTel_194817 -> Integer
d_'46'generalizedField'45'donations_194815 v0
  = case coe v0 of
      C_mkGeneralizeTel_194819 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.GeneralizeTel
d_GeneralizeTel_194817 a0 a1 = ()
data T_GeneralizeTel_194817
  = C_mkGeneralizeTel_194819 T_UTxOEnv_2364
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Conway.Specification.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_208217 ::
  T_GeneralizeTel_208225 -> T_UTxOEnv_2364
d_'46'generalizedField'45'Γ_208217 v0
  = case coe v0 of
      C_mkGeneralizeTel_208227 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-s
d_'46'generalizedField'45's_208219 ::
  T_GeneralizeTel_208225 -> T_UTxOState_2380
d_'46'generalizedField'45's_208219 v0
  = case coe v0 of
      C_mkGeneralizeTel_208227 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_208221 ::
  T_GeneralizeTel_208225 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
d_'46'generalizedField'45'tx_208221 v0
  = case coe v0 of
      C_mkGeneralizeTel_208227 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_208223 ::
  T_GeneralizeTel_208225 -> T_UTxOState_2380
d_'46'generalizedField'45's''_208223 v0
  = case coe v0 of
      C_mkGeneralizeTel_208227 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.GeneralizeTel
d_GeneralizeTel_208225 a0 a1 = ()
data T_GeneralizeTel_208225
  = C_mkGeneralizeTel_208227 T_UTxOEnv_2364 T_UTxOState_2380
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
                             T_UTxOState_2380
