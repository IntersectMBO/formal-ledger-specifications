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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Decidable.WithoutK
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Fees
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__20 = erased
-- _.CostModel
d_CostModel_82 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_CostModel_82 = erased
-- _.T
d_T_98 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_T_98 = erased
-- _.THash
d_THash_100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_100 = erased
-- _.Datum
d_Datum_106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Datum_106 = erased
-- _.Dec-isVKey
d_Dec'45'isVKey_116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_116 ~v0 = du_Dec'45'isVKey_116
du_Dec'45'isVKey_116 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_116
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_172 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
            (coe v0)))
-- _.ExUnits
d_ExUnits_224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ExUnits_224 = erased
-- _.GovProposal
d_GovProposal_252 a0 = ()
-- _.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_296 ~v0
  = du_HasAttrSize'45'BootstrapAddr_296
du_HasAttrSize'45'BootstrapAddr_296 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_296
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- _.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_3938
d_HasCollateralInputs'45'TopLevelTx_326 ~v0
  = du_HasCollateralInputs'45'TopLevelTx_326
du_HasCollateralInputs'45'TopLevelTx_326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_3938
du_HasCollateralInputs'45'TopLevelTx_326
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4456
-- _.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4348
d_HasCurrentTreasury'45'Tx_338 ~v0
  = du_HasCurrentTreasury'45'Tx_338
du_HasCurrentTreasury'45'Tx_338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4348
du_HasCurrentTreasury'45'Tx_338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4556
-- _.HasDonations-Tx
d_HasDonations'45'Tx_376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_376 ~v0 = du_HasDonations'45'Tx_376
du_HasDonations'45'Tx_376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'Tx_376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4530
-- _.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4428
d_HasIsValidFlag'45'Tx_434 ~v0 = du_HasIsValidFlag'45'Tx_434
du_HasIsValidFlag'45'Tx_434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4428
du_HasIsValidFlag'45'Tx_434
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4450
-- _.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_456 ~v0 = du_HasMaybeNetworkId'45'Tx_456
du_HasMaybeNetworkId'45'Tx_456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'Tx_456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4512
-- _.HasMintedValue-Tx
d_HasMintedValue'45'Tx_464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4128
d_HasMintedValue'45'Tx_464 ~v0 = du_HasMintedValue'45'Tx_464
du_HasMintedValue'45'Tx_464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4128
du_HasMintedValue'45'Tx_464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4500
-- _.HasPParams
d_HasPParams_478 a0 a1 a2 = ()
-- _.HasRedeemers-Tx
d_HasRedeemers'45'Tx_492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3916
d_HasRedeemers'45'Tx_492 ~v0 = du_HasRedeemers'45'Tx_492
du_HasRedeemers'45'Tx_492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3916
du_HasRedeemers'45'Tx_492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4454
-- _.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4108
d_HasReferenceInputs'45'Tx_500 ~v0
  = du_HasReferenceInputs'45'Tx_500
du_HasReferenceInputs'45'Tx_500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4108
du_HasReferenceInputs'45'Tx_500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4496
-- _.HasSize-Tx
d_HasSize'45'Tx_534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4028
d_HasSize'45'Tx_534 ~v0 = du_HasSize'45'Tx_534
du_HasSize'45'Tx_534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4028
du_HasSize'45'Tx_534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4446
-- _.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4088
d_HasSpendInputs'45'Tx_540 ~v0 = du_HasSpendInputs'45'Tx_540
du_HasSpendInputs'45'Tx_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4088
du_HasSpendInputs'45'Tx_540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4492
-- _.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3986
d_HasSubTransactions'45'TopLevelTx_556 ~v0
  = du_HasSubTransactions'45'TopLevelTx_556
du_HasSubTransactions'45'TopLevelTx_556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3986
du_HasSubTransactions'45'TopLevelTx_556
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4460
-- _.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_3962
d_HasTxFees'45'TopLevelTx_578 ~v0 = du_HasTxFees'45'TopLevelTx_578
du_HasTxFees'45'TopLevelTx_578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_3962
du_HasTxFees'45'TopLevelTx_578
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4458
-- _.HasTxId-Tx
d_HasTxId'45'Tx_584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4008
d_HasTxId'45'Tx_584 ~v0 = du_HasTxId'45'Tx_584
du_HasTxId'45'Tx_584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4008
du_HasTxId'45'Tx_584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4526
-- _.HasTxOuts-Tx
d_HasTxOuts'45'Tx_592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4308
d_HasTxOuts'45'Tx_592 ~v0 = du_HasTxOuts'45'Tx_592
du_HasTxOuts'45'Tx_592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4308
du_HasTxOuts'45'Tx_592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4548
-- _.HasUTxO
d_HasUTxO_602 a0 a1 a2 = ()
-- _.HasValidInterval-Tx
d_HasValidInterval'45'Tx_610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4068
d_HasValidInterval'45'Tx_610 ~v0 = du_HasValidInterval'45'Tx_610
du_HasValidInterval'45'Tx_610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4068
du_HasValidInterval'45'Tx_610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4488
-- _.MemoryEstimate
d_MemoryEstimate_694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_MemoryEstimate_694 = erased
-- _.NetworkId
d_NetworkId_706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_NetworkId_706 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
         (coe v0))
-- _.PlutusScript
d_PlutusScript_728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_PlutusScript_728 = erased
-- _.PParams
d_PParams_732 a0 = ()
-- _.PParamsOf
d_PParamsOf_740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- _.Script
d_Script_814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_814 = erased
-- _.ScriptHash
d_ScriptHash_822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_822 = erased
-- _.Slot
d_Slot_878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_878 = erased
-- _.SubLevelTx
d_SubLevelTx_892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_892 = erased
-- _.TopLevelTx
d_TopLevelTx_912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_912 = erased
-- _.Tx
d_Tx_918 a0 a1 = ()
-- _.TxOut
d_TxOut_936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxOut_936 = erased
-- _.UTxO
d_UTxO_946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_946 = erased
-- _.UTxOOf
d_UTxOOf_948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3702
      (coe v0)
-- _.Value
d_Value_978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Value_978 = erased
-- _.allReferenceScripts
d_allReferenceScripts_1010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_1010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4620
      (coe v0)
-- _.coin
d_coin_1022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> Integer
d_coin_1022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
         (coe v0))
-- _.inject
d_inject_1082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny
d_inject_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
         (coe v0))
-- _.netId
d_netId_1136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1136 ~v0 = du_netId_1136
du_netId_1136 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1136
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- _.txOutToValue
d_txOutToValue_1206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txOutToValue_1206 ~v0 = du_txOutToValue_1206
du_txOutToValue_1206 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_txOutToValue_1206
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4566
-- _.GovProposal.action
d_action_1390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884
d_action_1390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_998
      (coe v0)
-- _.GovProposal.anchor
d_anchor_1392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_918
d_anchor_1392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1008
      (coe v0)
-- _.GovProposal.deposit
d_deposit_1394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  Integer
d_deposit_1394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1004
      (coe v0)
-- _.GovProposal.policy
d_policy_1396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  Maybe AgdaAny
d_policy_1396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1002
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_1398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  AgdaAny
d_prevAction_1398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1000
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_1400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1006
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_1494 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1856 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3702
      (coe v0)
-- _.PParams.Emax
d_Emax_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_432
      (coe v0)
-- _.PParams.a
d_a_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402 (coe v0)
-- _.PParams.a0
d_a0_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_436
      (coe v0)
-- _.PParams.b
d_b_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_448
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_446
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_440
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_456
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_454
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_444
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_450
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_406
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_394
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_386
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_398
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_390
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_392
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_420
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_410
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_430
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
      (coe v0)
-- _.PParams.nopt
d_nopt_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_434
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_408
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_442
      (coe v0)
-- _.PParams.prices
d_prices_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
      (coe v0)
-- _.PParams.pv
d_pv_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_400
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_428
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_426
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
      (coe v0)
-- _.Tx.isValid
d_isValid_2526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  AgdaAny
d_isValid_2526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3738
      (coe v0)
-- _.Tx.txAuxData
d_txAuxData_2528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  Maybe AgdaAny
d_txAuxData_2528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3740
      (coe v0)
-- _.Tx.txBody
d_txBody_2530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716
d_txBody_2530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
      (coe v0)
-- _.Tx.txSize
d_txSize_2532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  Integer
d_txSize_2532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3736
      (coe v0)
-- _.Tx.txWitnesses
d_txWitnesses_2534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3718
d_txWitnesses_2534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3734
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.HasPools
d_HasPools_2786 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Utxo._.Pools
d_Pools_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  ()
d_Pools_2852 = erased
-- Ledger.Dijkstra.Specification.Utxo._.PoolsOf
d_PoolsOf_2854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1576
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.HasPools.PoolsOf
d_PoolsOf_3044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1576
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.evalP2Scripts
d_evalP2Scripts_3108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_3108 v0 ~v1 = du_evalP2Scripts_3108 v0
du_evalP2Scripts_3108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_3108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3492
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.totExUnits
d_totExUnits_3126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  AgdaAny
d_totExUnits_3126 v0 ~v1 ~v2 v3 = du_totExUnits_3126 v0 v3
du_totExUnits_3126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  AgdaAny
du_totExUnits_3126 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2162
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2162
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2162
               (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3856
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3734
            (coe v1)))
-- Ledger.Dijkstra.Specification.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_3134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  Integer
d_utxoEntrySizeWithoutVal_3134 ~v0
  = du_utxoEntrySizeWithoutVal_3134
du_utxoEntrySizeWithoutVal_3134 :: Integer
du_utxoEntrySizeWithoutVal_3134 = coe (8 :: Integer)
-- Ledger.Dijkstra.Specification.Utxo.utxoEntrySize
d_utxoEntrySize_3136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_3136 v0 ~v1 v2 = du_utxoEntrySize_3136 v0 v2
du_utxoEntrySize_3136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_3136 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    addInt (coe (8 :: Integer))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                          (coe v0))
                       v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv
d_UTxOEnv_3140 a0 a1 = ()
data T_UTxOEnv_3140
  = C_constructor_3170 AgdaAny
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] Bool
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.slot
d_slot_3156 :: T_UTxOEnv_3140 -> AgdaAny
d_slot_3156 v0
  = case coe v0 of
      C_constructor_3170 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.pparams
d_pparams_3158 ::
  T_UTxOEnv_3140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3158 v0
  = case coe v0 of
      C_constructor_3170 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.treasury
d_treasury_3160 :: T_UTxOEnv_3140 -> Integer
d_treasury_3160 v0
  = case coe v0 of
      C_constructor_3170 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.utxo₀
d_utxo'8320'_3162 ::
  T_UTxOEnv_3140 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3162 v0
  = case coe v0 of
      C_constructor_3170 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.pools₀
d_pools'8320'_3164 ::
  T_UTxOEnv_3140 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools'8320'_3164 v0
  = case coe v0 of
      C_constructor_3170 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.allScripts
d_allScripts_3166 ::
  T_UTxOEnv_3140 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3166 v0
  = case coe v0 of
      C_constructor_3170 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.legacyMode
d_legacyMode_3168 :: T_UTxOEnv_3140 -> Bool
d_legacyMode_3168 v0
  = case coe v0 of
      C_constructor_3170 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv
d_SubUTxOEnv_3172 a0 a1 = ()
data T_SubUTxOEnv_3172
  = C_constructor_3198 AgdaAny
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] Bool
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.slot
d_slot_3186 :: T_SubUTxOEnv_3172 -> AgdaAny
d_slot_3186 v0
  = case coe v0 of
      C_constructor_3198 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.pparams
d_pparams_3188 ::
  T_SubUTxOEnv_3172 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3188 v0
  = case coe v0 of
      C_constructor_3198 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.treasury
d_treasury_3190 :: T_SubUTxOEnv_3172 -> Integer
d_treasury_3190 v0
  = case coe v0 of
      C_constructor_3198 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.utxo₀
d_utxo'8320'_3192 ::
  T_SubUTxOEnv_3172 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3192 v0
  = case coe v0 of
      C_constructor_3198 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.allScripts
d_allScripts_3194 ::
  T_SubUTxOEnv_3172 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3194 v0
  = case coe v0 of
      C_constructor_3198 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_3196 :: T_SubUTxOEnv_3172 -> Bool
d_isTopLevelValid_3196 v0
  = case coe v0 of
      C_constructor_3198 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOState
d_UTxOState_3200 a0 a1 = ()
data T_UTxOState_3200
  = C_'10214'_'44'_'44'_'10215''7512'_3214 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           Integer Integer
-- Ledger.Dijkstra.Specification.Utxo.UTxOState.utxo
d_utxo_3208 ::
  T_UTxOState_3200 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3208 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7512'_3214 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOState.fees
d_fees_3210 :: T_UTxOState_3200 -> Integer
d_fees_3210 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7512'_3214 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOState.donations
d_donations_3212 :: T_UTxOState_3200 -> Integer
d_donations_3212 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7512'_3214 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.HasUTxOState
d_HasUTxOState_3220 a0 a1 a2 a3 = ()
newtype T_HasUTxOState_3220
  = C_constructor_3230 (AgdaAny -> T_UTxOState_3200)
-- Ledger.Dijkstra.Specification.Utxo.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3228 ::
  T_HasUTxOState_3220 -> AgdaAny -> T_UTxOState_3200
d_UTxOStateOf_3228 v0
  = case coe v0 of
      C_constructor_3230 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.UTxOStateOf
d_UTxOStateOf_3234 ::
  T_HasUTxOState_3220 -> AgdaAny -> T_UTxOState_3200
d_UTxOStateOf_3234 v0 = coe d_UTxOStateOf_3228 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasIsTopLevelValidFlag
d_HasIsTopLevelValidFlag_3240 a0 a1 a2 a3 = ()
newtype T_HasIsTopLevelValidFlag_3240
  = C_constructor_3250 (AgdaAny -> Bool)
-- Ledger.Dijkstra.Specification.Utxo.HasIsTopLevelValidFlag.IsTopLevelValidFlagOf
d_IsTopLevelValidFlagOf_3248 ::
  T_HasIsTopLevelValidFlag_3240 -> AgdaAny -> Bool
d_IsTopLevelValidFlagOf_3248 v0
  = case coe v0 of
      C_constructor_3250 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.IsTopLevelValidFlagOf
d_IsTopLevelValidFlagOf_3254 ::
  T_HasIsTopLevelValidFlag_3240 -> AgdaAny -> Bool
d_IsTopLevelValidFlagOf_3254 v0
  = coe d_IsTopLevelValidFlagOf_3248 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasLegacyMode
d_HasLegacyMode_3260 a0 a1 a2 a3 = ()
newtype T_HasLegacyMode_3260 = C_constructor_3270 (AgdaAny -> Bool)
-- Ledger.Dijkstra.Specification.Utxo.HasLegacyMode.LegacyModeOf
d_LegacyModeOf_3268 :: T_HasLegacyMode_3260 -> AgdaAny -> Bool
d_LegacyModeOf_3268 v0
  = case coe v0 of
      C_constructor_3270 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.LegacyModeOf
d_LegacyModeOf_3274 :: T_HasLegacyMode_3260 -> AgdaAny -> Bool
d_LegacyModeOf_3274 v0 = coe d_LegacyModeOf_3268 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool
d_HasScriptPool_3280 a0 a1 a2 a3 = ()
newtype T_HasScriptPool_3280
  = C_constructor_3290 (AgdaAny ->
                        [MAlonzo.Code.Data.Sum.Base.T__'8846'__30])
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool.ScriptPoolOf
d_ScriptPoolOf_3288 ::
  T_HasScriptPool_3280 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptPoolOf_3288 v0
  = case coe v0 of
      C_constructor_3290 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.ScriptPoolOf
d_ScriptPoolOf_3294 ::
  T_HasScriptPool_3280 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptPoolOf_3294 v0 = coe d_ScriptPoolOf_3288 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasDataPool
d_HasDataPool_3300 a0 a1 a2 a3 = ()
newtype T_HasDataPool_3300
  = C_constructor_3310 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Utxo.HasDataPool.DataPoolOf
d_DataPoolOf_3308 ::
  T_HasDataPool_3300 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DataPoolOf_3308 v0
  = case coe v0 of
      C_constructor_3310 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.DataPoolOf
d_DataPoolOf_3314 ::
  T_HasDataPool_3300 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DataPoolOf_3314 v0 = coe d_DataPoolOf_3308 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasSlot
d_HasSlot_3320 a0 a1 a2 a3 = ()
newtype T_HasSlot_3320 = C_constructor_3330 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Utxo.HasSlot.SlotOf
d_SlotOf_3328 :: T_HasSlot_3320 -> AgdaAny -> AgdaAny
d_SlotOf_3328 v0
  = case coe v0 of
      C_constructor_3330 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.SlotOf
d_SlotOf_3334 :: T_HasSlot_3320 -> AgdaAny -> AgdaAny
d_SlotOf_3334 v0 = coe d_SlotOf_3328 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasSlot-UTxOEnv
d_HasSlot'45'UTxOEnv_3336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_HasSlot_3320
d_HasSlot'45'UTxOEnv_3336 ~v0 ~v1 = du_HasSlot'45'UTxOEnv_3336
du_HasSlot'45'UTxOEnv_3336 :: T_HasSlot_3320
du_HasSlot'45'UTxOEnv_3336
  = coe C_constructor_3330 (coe (\ v0 -> d_slot_3156 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_3338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'UTxOEnv_3338 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_3338
du_HasPParams'45'UTxOEnv_3338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'UTxOEnv_3338
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_588
      (coe (\ v0 -> d_pparams_3158 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasTreasury-UTxOEnv
d_HasTreasury'45'UTxOEnv_3340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'UTxOEnv_3340 ~v0 ~v1
  = du_HasTreasury'45'UTxOEnv_3340
du_HasTreasury'45'UTxOEnv_3340 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'UTxOEnv_3340
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_3160 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOEnv
d_HasUTxO'45'UTxOEnv_3342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
d_HasUTxO'45'UTxOEnv_3342 ~v0 ~v1 = du_HasUTxO'45'UTxOEnv_3342
du_HasUTxO'45'UTxOEnv_3342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
du_HasUTxO'45'UTxOEnv_3342
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3704
      (coe (\ v0 -> d_utxo'8320'_3162 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool-UTxOEnv
d_HasScriptPool'45'UTxOEnv_3344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_HasScriptPool_3280
d_HasScriptPool'45'UTxOEnv_3344 ~v0 ~v1
  = du_HasScriptPool'45'UTxOEnv_3344
du_HasScriptPool'45'UTxOEnv_3344 :: T_HasScriptPool_3280
du_HasScriptPool'45'UTxOEnv_3344
  = coe C_constructor_3290 (coe (\ v0 -> d_allScripts_3166 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasLegacyMode-UTxOEnv
d_HasLegacyMode'45'UTxOEnv_3346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_HasLegacyMode_3260
d_HasLegacyMode'45'UTxOEnv_3346 ~v0 ~v1
  = du_HasLegacyMode'45'UTxOEnv_3346
du_HasLegacyMode'45'UTxOEnv_3346 :: T_HasLegacyMode_3260
du_HasLegacyMode'45'UTxOEnv_3346
  = coe C_constructor_3270 (coe (\ v0 -> d_legacyMode_3168 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasSlot-SubUTxOEnv
d_HasSlot'45'SubUTxOEnv_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_HasSlot_3320
d_HasSlot'45'SubUTxOEnv_3348 ~v0 ~v1
  = du_HasSlot'45'SubUTxOEnv_3348
du_HasSlot'45'SubUTxOEnv_3348 :: T_HasSlot_3320
du_HasSlot'45'SubUTxOEnv_3348
  = coe C_constructor_3330 (coe (\ v0 -> d_slot_3186 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasPParams-SubUTxOEnv
d_HasPParams'45'SubUTxOEnv_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'SubUTxOEnv_3350 ~v0 ~v1
  = du_HasPParams'45'SubUTxOEnv_3350
du_HasPParams'45'SubUTxOEnv_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'SubUTxOEnv_3350
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_588
      (coe (\ v0 -> d_pparams_3188 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasTreasury-SubUTxOEnv
d_HasTreasury'45'SubUTxOEnv_3352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'SubUTxOEnv_3352 ~v0 ~v1
  = du_HasTreasury'45'SubUTxOEnv_3352
du_HasTreasury'45'SubUTxOEnv_3352 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'SubUTxOEnv_3352
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_3190 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasUTxO-SubUTxOEnv
d_HasUTxO'45'SubUTxOEnv_3354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
d_HasUTxO'45'SubUTxOEnv_3354 ~v0 ~v1
  = du_HasUTxO'45'SubUTxOEnv_3354
du_HasUTxO'45'SubUTxOEnv_3354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
du_HasUTxO'45'SubUTxOEnv_3354
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3704
      (coe (\ v0 -> d_utxo'8320'_3192 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasIsTopLevelValidFlag-SubUTxOEnv
d_HasIsTopLevelValidFlag'45'SubUTxOEnv_3356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_HasIsTopLevelValidFlag_3240
d_HasIsTopLevelValidFlag'45'SubUTxOEnv_3356 ~v0 ~v1
  = du_HasIsTopLevelValidFlag'45'SubUTxOEnv_3356
du_HasIsTopLevelValidFlag'45'SubUTxOEnv_3356 ::
  T_HasIsTopLevelValidFlag_3240
du_HasIsTopLevelValidFlag'45'SubUTxOEnv_3356
  = coe
      C_constructor_3250 (coe (\ v0 -> d_isTopLevelValid_3196 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool-SubUTxOEnv
d_HasScriptPool'45'SubUTxOEnv_3358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_HasScriptPool_3280
d_HasScriptPool'45'SubUTxOEnv_3358 ~v0 ~v1
  = du_HasScriptPool'45'SubUTxOEnv_3358
du_HasScriptPool'45'SubUTxOEnv_3358 :: T_HasScriptPool_3280
du_HasScriptPool'45'SubUTxOEnv_3358
  = coe C_constructor_3290 (coe (\ v0 -> d_allScripts_3194 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_3360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
d_HasUTxO'45'UTxOState_3360 ~v0 ~v1 = du_HasUTxO'45'UTxOState_3360
du_HasUTxO'45'UTxOState_3360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
du_HasUTxO'45'UTxOState_3360
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3704
      (coe (\ v0 -> d_utxo_3208 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasFee-UTxOState
d_HasFee'45'UTxOState_3362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_3362 ~v0 ~v1 = du_HasFee'45'UTxOState_3362
du_HasFee'45'UTxOState_3362 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_3362
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe (\ v0 -> d_fees_3210 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasDonations-UTxOState
d_HasDonations'45'UTxOState_3364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_3364 ~v0 ~v1
  = du_HasDonations'45'UTxOState_3364
du_HasDonations'45'UTxOState_3364 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_3364
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_donations_3212 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasPools-UTxOEnv
d_HasPools'45'UTxOEnv_3366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568
d_HasPools'45'UTxOEnv_3366 ~v0 ~v1 = du_HasPools'45'UTxOEnv_3366
du_HasPools'45'UTxOEnv_3366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568
du_HasPools'45'UTxOEnv_3366
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1578
      (coe (\ v0 -> d_pools'8320'_3164 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_3368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_3368 ~v0 ~v1 = du_HasCast'45'UTxOEnv_3368
du_HasCast'45'UTxOEnv_3368 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_3368
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
                                 (3140 :: Integer) (1252473578754917138 :: Integer)
                                 "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (878 :: Integer) (1252473578754917138 :: Integer) "_.Slot"
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
                                    (3140 :: Integer) (1252473578754917138 :: Integer)
                                    "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
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
                                    (732 :: Integer) (1252473578754917138 :: Integer) "_.PParams"
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
                                       (3140 :: Integer) (1252473578754917138 :: Integer)
                                       "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
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
                                          (3140 :: Integer) (1252473578754917138 :: Integer)
                                          "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
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
                                          (946 :: Integer) (1252473578754917138 :: Integer) "_.UTxO"
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
                                             (3140 :: Integer) (1252473578754917138 :: Integer)
                                             "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
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
                                             (2852 :: Integer) (1252473578754917138 :: Integer)
                                             "Ledger.Dijkstra.Specification.Utxo._.Pools"
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (3140 :: Integer) (1252473578754917138 :: Integer)
                                                "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
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
                                                (128 :: Integer) (9254951203007797098 :: Integer)
                                                "abstract-set-theory.FiniteSetTheory._.Set"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (814 :: Integer)
                                                         (1252473578754917138 :: Integer) "_.Script"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (3140 :: Integer)
                                                   (1252473578754917138 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
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
                                                   (6 :: Integer) (4305008439024043551 :: Integer)
                                                   "Agda.Builtin.Bool.Bool"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe C_constructor_3170))
-- Ledger.Dijkstra.Specification.Utxo.HasCast-SubUTxOEnv
d_HasCast'45'SubUTxOEnv_3370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubUTxOEnv_3370 ~v0 ~v1
  = du_HasCast'45'SubUTxOEnv_3370
du_HasCast'45'SubUTxOEnv_3370 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubUTxOEnv_3370
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
                                 (3172 :: Integer) (1252473578754917138 :: Integer)
                                 "Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (878 :: Integer) (1252473578754917138 :: Integer) "_.Slot"
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
                                    (3172 :: Integer) (1252473578754917138 :: Integer)
                                    "Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv"
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
                                    (732 :: Integer) (1252473578754917138 :: Integer) "_.PParams"
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
                                       (3172 :: Integer) (1252473578754917138 :: Integer)
                                       "Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv"
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
                                          (3172 :: Integer) (1252473578754917138 :: Integer)
                                          "Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv"
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
                                          (946 :: Integer) (1252473578754917138 :: Integer) "_.UTxO"
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
                                             (3172 :: Integer) (1252473578754917138 :: Integer)
                                             "Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv"
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
                                             (128 :: Integer) (9254951203007797098 :: Integer)
                                             "abstract-set-theory.FiniteSetTheory._.Set"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (814 :: Integer)
                                                      (1252473578754917138 :: Integer) "_.Script"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (3172 :: Integer) (1252473578754917138 :: Integer)
                                                "Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv"
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
                                                (6 :: Integer) (4305008439024043551 :: Integer)
                                                "Agda.Builtin.Bool.Bool"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
         (coe C_constructor_3198))
-- Ledger.Dijkstra.Specification.Utxo.HasCast-UTxOState
d_HasCast'45'UTxOState_3372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_3372 ~v0 ~v1 = du_HasCast'45'UTxOState_3372
du_HasCast'45'UTxOState_3372 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_3372
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
                                 (3200 :: Integer) (1252473578754917138 :: Integer)
                                 "Ledger.Dijkstra.Specification.Utxo.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (946 :: Integer) (1252473578754917138 :: Integer) "_.UTxO"
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
                                    (3200 :: Integer) (1252473578754917138 :: Integer)
                                    "Ledger.Dijkstra.Specification.Utxo.UTxOState"
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
                                       (3200 :: Integer) (1252473578754917138 :: Integer)
                                       "Ledger.Dijkstra.Specification.Utxo.UTxOState"
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
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''7512'_3214))
-- Ledger.Dijkstra.Specification.Utxo.outs
d_outs_3386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_3386 ~v0 ~v1 ~v2 v3 = du_outs_3386 v3
du_outs_3386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_3386 v0
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
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4016
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4526)
                 v0)
              (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4316
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4548)
         v0)
-- Ledger.Dijkstra.Specification.Utxo.balance
d_balance_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_3392 v0 ~v1 v2 = du_balance_3392 v0 v2
du_balance_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_3392 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
            (coe v0)))
      (coe (\ v2 -> v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4566)
         (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.cbalance
d_cbalance_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_3398 v0 ~v1 v2 = du_cbalance_3398 v0 v2
du_cbalance_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_3398 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
         (coe v0))
      (coe du_balance_3392 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.refScriptsSize
d_refScriptsSize_3402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_refScriptsSize_3402 v0 v1 ~v2 v3 v4
  = du_refScriptsSize_3402 v0 v1 v3 v4
du_refScriptsSize_3402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_refScriptsSize_3402 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_scriptSize_3186
         (coe v1))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceScripts_4614
         (coe v0) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Utxo.minfee
d_minfee_3410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_minfee_3410 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txScriptFee_3178
               v1
               (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
                  (coe v2))
               (coe du_totExUnits_3126 (coe v0) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404
               (coe v2)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Fees.du_scriptsCost_26
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
               (coe v0))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
               (coe v0))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2162
               (coe v0))
            (coe v2)
            (coe du_refScriptsSize_3402 (coe v0) (coe v1) (coe v3) (coe v4))))
      (coe
         mulInt
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3736
            (coe v3)))
-- Ledger.Dijkstra.Specification.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_3418 v0 ~v1 = du_HasCoin'45'UTxO_3418 v0
du_HasCoin'45'UTxO_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_3418 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe du_cbalance_3398 (coe v0))
-- Ledger.Dijkstra.Specification.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_3420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_3420 v0 ~v1
  = du_HasCoin'45'UTxOState_3420 v0
du_HasCoin'45'UTxOState_3420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_3420 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt (coe du_cbalance_3398 (coe v0) (coe d_utxo_3208 (coe v1)))
                 (coe d_donations_3212 (coe v1)))
              (coe d_fees_3210 (coe v1))))
-- Ledger.Dijkstra.Specification.Utxo.inInterval
d_inInterval_3426 a0 a1 a2 a3 = ()
data T_inInterval_3426
  = C_both_3434 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_3438 AgdaAny | C_upper_3442 AgdaAny | C_none_3444
-- Ledger.Dijkstra.Specification.Utxo.Dec-inInterval
d_Dec'45'inInterval_3446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_3446 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_3446 v0 v2 v3
du_Dec'45'inInterval_3446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_3446 v0 v1 v2
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                                            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
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
                                                                                    C_both_3434
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
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
                                                         (coe C_lower_3438 v9))
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
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
                                                         (coe C_upper_3442 v9))
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
                                 (coe C_none_3444))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Utxo.coinPolicies
d_coinPolicies_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  [AgdaAny]
d_coinPolicies_3548 v0 ~v1 = du_coinPolicies_3548 v0
du_coinPolicies_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny]
du_coinPolicies_3548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
            (coe v0))
         (1 :: Integer))
-- Ledger.Dijkstra.Specification.Utxo.isAdaOnly
d_isAdaOnly_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  AgdaAny -> ()
d_isAdaOnly_3550 = erased
-- Ledger.Dijkstra.Specification.Utxo.collateralCheck
d_collateralCheck_3554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_3554 = erased
-- Ledger.Dijkstra.Specification.Utxo._.govProposalsDeposits
d_govProposalsDeposits_3572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984] ->
  Integer
d_govProposalsDeposits_3572 ~v0 ~v1 v2
  = du_govProposalsDeposits_3572 v2
du_govProposalsDeposits_3572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984] ->
  Integer
du_govProposalsDeposits_3572 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v1 v2 ->
            addInt
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
                 (coe v0))
              (coe v1)))
      (coe (0 :: Integer))
-- Ledger.Dijkstra.Specification.Utxo._.consumedTx
d_consumedTx_3584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumedTx_3584 v0 ~v1 ~v2 ~v3 v4 v5
  = du_consumedTx_3584 v0 v4 v5
du_consumedTx_3584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumedTx_3584 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                  (coe v0))))
         (coe
            du_balance_3392 (coe v0)
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                        (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4096
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4492)
                  v1)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4136
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4500)
            v1))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
            (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                     (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_constructor_32
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
            (coe (\ v3 -> v3))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3806
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                  (coe v1)))))
-- Ledger.Dijkstra.Specification.Utxo._.consumed
d_consumed_3590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumed_3590 v0 ~v1 ~v2 v3 v4 = du_consumed_3590 v0 v3 v4
du_consumed_3590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumed_3590 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
               (coe v0))))
      (coe du_consumedTx_3584 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_refundCertDeposits_2000
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4690
               (coe v1))))
-- Ledger.Dijkstra.Specification.Utxo._.consumedBatch
d_consumedBatch_3596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumedBatch_3596 v0 ~v1 ~v2 v3 v4
  = du_consumedBatch_3596 v0 v3 v4
du_consumedBatch_3596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumedBatch_3596 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
               (coe v0))))
      (coe du_consumed_3590 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
         (MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
               (coe v0)))
         (\ v3 -> coe du_consumedTx_3584 (coe v0) (coe v3) (coe v2))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3826
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
               (coe v1))))
-- Ledger.Dijkstra.Specification.Utxo._.consumedLegacy
d_consumedLegacy_3604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumedLegacy_3604 v0 ~v1 ~v2 v3 v4
  = du_consumedLegacy_3604 v0 v3 v4
du_consumedLegacy_3604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumedLegacy_3604 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
               (coe v0))))
      (coe du_consumedTx_3584 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_refundCertDeposits_2000
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4176
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4468)
               v1)))
-- Ledger.Dijkstra.Specification.Utxo._.producedTx
d_producedTx_3610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  AgdaAny
d_producedTx_3610 v0 ~v1 v2 ~v3 v4 = du_producedTx_3610 v0 v2 v4
du_producedTx_3610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  AgdaAny
du_producedTx_3610 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                     (coe v0))))
            (coe du_balance_3392 (coe v0) (coe du_outs_3386 (coe v2)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                  (coe v0))
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3812
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                     (coe v2)))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
               (coe v0))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                        (coe v0))))
               (coe
                  MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                  (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
               (coe
                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
               (coe (\ v3 -> v3))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3832
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                     (coe v2))))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
            (coe v0))
         (coe
            du_govProposalsDeposits_3572 v1
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3816
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Utxo._.produced
d_produced_3614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  AgdaAny
d_produced_3614 v0 ~v1 v2 v3 v4 = du_produced_3614 v0 v2 v3 v4
du_produced_3614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  AgdaAny
du_produced_3614 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                  (coe v0))))
         (coe du_producedTx_3610 (coe v0) (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
               (coe v0))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3804
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                  (coe v3)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
            (coe v0))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_newCertDeposits_1970
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
               (coe v0))
            (coe v1)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_586
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4690
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo._.producedBatch
d_producedBatch_3620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  AgdaAny
d_producedBatch_3620 v0 ~v1 v2 v3 v4
  = du_producedBatch_3620 v0 v2 v3 v4
du_producedBatch_3620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  AgdaAny
du_producedBatch_3620 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
               (coe v0))))
      (coe du_produced_3614 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
         (MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
               (coe v0)))
         (coe du_producedTx_3610 (coe v0) (coe v1))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3826
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo._.producedLegacy
d_producedLegacy_3628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  AgdaAny
d_producedLegacy_3628 v0 ~v1 v2 v3 v4
  = du_producedLegacy_3628 v0 v2 v3 v4
du_producedLegacy_3628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  AgdaAny
du_producedLegacy_3628 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                  (coe v0))))
         (coe du_producedTx_3610 (coe v0) (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
               (coe v0))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3804
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                  (coe v3)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
            (coe v0))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_newCertDeposits_1970
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
               (coe v0))
            (coe v1) (coe du_pools''_3638 (coe v2) (coe v3))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4176
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4468)
               v3)))
-- Ledger.Dijkstra.Specification.Utxo._._.pools'
d_pools''_3638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  [AgdaAny]
d_pools''_3638 ~v0 ~v1 ~v2 v3 v4 = du_pools''_3638 v3 v4
du_pools''_3638 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  [AgdaAny]
du_pools''_3638 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v2 v3 ->
            case coe v3 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_regpool_1314 v4 v5
                -> coe
                     MAlonzo.Code.Axiom.Set.du__'8746'__708
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                        (MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        erased v4)
              _ -> coe v2))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
      (coe
         MAlonzo.Code.Data.List.Base.du_concatMap_246
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4176
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4468))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3826
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
               (coe v1))))
-- Ledger.Dijkstra.Specification.Utxo.allP2ScriptsWithContext
d_allP2ScriptsWithContext_3648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_UTxOEnv_3140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allP2ScriptsWithContext_3648 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         du_p2ScriptsWithContext_3658 (coe v0) (coe v1) (coe v2)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
         (coe v3))
      (coe
         MAlonzo.Code.Data.List.Base.du_concatMap_246
         (coe
            du_p2ScriptsWithContext_3658 (coe v0) (coe v1) (coe v2)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3826
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo._.p2ScriptsWithContext
d_p2ScriptsWithContext_3658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_UTxOEnv_3140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_p2ScriptsWithContext_3658 v0 v1 v2 ~v3 v4 v5
  = du_p2ScriptsWithContext_3658 v0 v1 v2 v4 v5
du_p2ScriptsWithContext_3658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_UTxOEnv_3140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_p2ScriptsWithContext_3658 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3426
      (coe v0) (coe v1) (coe v3) (coe d_pparams_3158 (coe v2)) (coe v4)
      (coe d_utxo'8320'_3162 (coe v2)) (coe d_allScripts_3166 (coe v2))
-- Ledger.Dijkstra.Specification.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__3662 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__3662 = C_UTXOS_3664
-- Ledger.Dijkstra.Specification.Utxo.UTXOS-premises
d_UTXOS'45'premises_3666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_UTxOEnv_3140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOS'45'premises_3666 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3492
            v0
            (d_allP2ScriptsWithContext_3648
               (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3738
            (coe v3)))
-- Ledger.Dijkstra.Specification.Utxo._⊢_⇀⦇_,SUBUTXO⦈_
d__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3668 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3668
  = C_SUBUTXO_3694 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxo.SUBUTXO-premises
d_SUBUTXO'45'premises_3696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  T_SubUTxOEnv_3172 ->
  T_UTxOState_3200 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SUBUTXO'45'premises_3696 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                        (coe v0))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4096
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4492)
                  v2)
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
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                             (coe v0))
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_586
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                          (coe d_utxo'8320'_3192 (coe v3)))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4096
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4492)
                  v2))
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
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                                (coe v0))
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                                (coe v0)))
                          (coe v5)
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_586
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                             (coe d_utxo'8320'_3192 (coe v3)))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4116
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4496)
                     v2))
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
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                                   (coe v0))
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                                   (coe v0)))
                             (coe v5)
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe d_utxo_3208 (coe v4)))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4096
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4492)
                        v2))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        du_Dec'45'inInterval_3446 (coe v0) (coe d_slot_3186 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3808
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4136
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4500)
                                 v2))
                           (coe (0 :: Integer)))
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
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                                            (coe v0))
                                         (mulInt
                                            (coe
                                               addInt (coe (160 :: Integer))
                                               (coe
                                                  du_utxoEntrySize_3136 (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5))))
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
                                               (coe d_pparams_3188 (coe v3)))))
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4566
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                 (coe
                                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4316
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4548)
                                    v2)))
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
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3180
                                            v1
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4566
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v5))))
                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
                                            (coe d_pparams_3188 (coe v3)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                    (coe
                                       MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4316
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4548)
                                       v2)))
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
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_range_588
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4316
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4548)
                                          v2)))
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
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v5)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                                     (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Class.IsSet.du_range_588
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4316
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4548)
                                             v2)))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Prelude.du_'126''63'_48
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3818
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Prelude.du_'126''63'_48
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3820
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                             (coe d_treasury_3190 (coe v3)))
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))
-- Ledger.Dijkstra.Specification.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__3698 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__3698
  = C_UTXO_3728 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxo.UTXO-premises
d_UTXO'45'premises_3730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  T_UTxOEnv_3140 ->
  T_UTxOState_3200 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3730 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                        (coe v0))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4096
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4492)
                  v2)
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
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                             (coe v0))
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_586
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                          (coe d_utxo'8320'_3162 (coe v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4096
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4492)
                     v2)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3796
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                        (coe v2)))))
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
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                                (coe v0))
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                                (coe v0)))
                          (coe v5)
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_586
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                             (coe d_utxo'8320'_3162 (coe v3)))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4116
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4496)
                     v2))
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
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                                   (coe v0))
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                                   (coe v0)))
                             (coe v5)
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe d_utxo_3208 (coe v4)))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4096
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4492)
                        v2))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        du_Dec'45'inInterval_3446 (coe v0) (coe d_slot_3156 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3808
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                           (d_minfee_3410
                              (coe v0) (coe v1) (coe d_pparams_3158 (coe v3)) (coe v2)
                              (coe d_utxo'8320'_3162 (coe v3)))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3804
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4136
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4500)
                                    v2))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                                       (coe v0)))
                                 (coe
                                    du_consumedBatch_3596 (coe v0) (coe v2)
                                    (coe d_utxo'8320'_3162 (coe v3)))
                                 (coe
                                    du_producedBatch_3620 (coe v0) (coe d_pparams_3158 (coe v3))
                                    (coe d_pools'8320'_3164 (coe v3)) (coe v2)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                       (coe d_legacyMode_3168 (coe v3))
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                                             (coe v0)))
                                       (coe
                                          du_consumedLegacy_3604 (coe v0) (coe v2)
                                          (coe d_utxo'8320'_3162 (coe v3)))
                                       (coe
                                          du_producedLegacy_3628 (coe v0)
                                          (coe d_pparams_3158 (coe v3))
                                          (coe d_pools'8320'_3164 (coe v3)) (coe v2))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3736
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
                                          (coe d_pparams_3158 (coe v3))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                             MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_scriptSize_3186
                                                (coe v1))
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4620
                                                (coe v0) (coe v2) (coe d_utxo'8320'_3162 (coe v3))))
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
                                             (coe d_pparams_3158 (coe v3))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                                         (coe
                                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                            () erased () erased
                                                            (coe
                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                               () erased () erased
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                                                                  (coe v0)))
                                                            (coe
                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                               () erased () erased
                                                               (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2162
                                                                              (coe v0))))))
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2162
                                                                        (coe v0)))))))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3856
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3734
                                                               (coe v2))))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'Any_22
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                                                 (coe
                                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                    () erased () erased
                                                                    (coe
                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                       () erased () erased
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                                                                          (coe v0)))
                                                                    (coe
                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                       () erased () erased
                                                                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2162
                                                                                      (coe v0))))))
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2162
                                                                                (coe v0)))))))
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3856
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3734
                                                                       (coe v5))))
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3826
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                                         (coe v2)))))
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
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v5)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_range_588
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                                                                  (coe v0))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                                                                  (coe v0))))
                                                         (coe d_utxo'8320'_3162 (coe v3))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3796
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                                               (coe v2))))))
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
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                                       (coe v0)))
                                                                 (coe v5)
                                                                 (coe
                                                                    du_coinPolicies_3548 (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                                                               (coe v0))
                                                            (coe
                                                               du_balance_3392 (coe v0)
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
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                                                                           (coe v0))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                                                                           (coe v0))))
                                                                  (coe d_utxo'8320'_3162 (coe v3))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3796
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                                                        (coe v2)))))))
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
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                                                       (coe v0)))
                                                                 (coe v5)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                                                                       (coe v0))
                                                                    (coe
                                                                       du_balance_3392 (coe v0)
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
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                                                                                   (coe v0))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                                                                                   (coe v0))))
                                                                          (coe
                                                                             d_utxo'8320'_3162
                                                                             (coe v3))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3796
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                                                                (coe v2))))))))
                                                         (coe du_coinPolicies_3548 (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                         (mulInt
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3804
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                                                  (coe v2)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
                                                               (coe d_pparams_3158 (coe v3))))
                                                         (mulInt
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                                                                  (coe v0))
                                                               (coe
                                                                  du_balance_3392 (coe v0)
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                                                                              (coe v0))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                                                                              (coe v0))))
                                                                     (coe
                                                                        d_utxo'8320'_3162 (coe v3))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3796
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                                                           (coe v2))))))
                                                            (coe (100 :: Integer))))
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                         (coe
                                                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                                               (coe
                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                  () erased () erased
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1374
                                                                     (coe v0))
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1372
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3796
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                                                  (coe v2)))
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
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2650
                                                              (coe v0))
                                                           (mulInt
                                                              (coe
                                                                 addInt (coe (160 :: Integer))
                                                                 (coe
                                                                    du_utxoEntrySize_3136 (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v5))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
                                                                 (coe d_pparams_3158 (coe v3)))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4566
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                   (coe
                                                      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4316
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4548)
                                                      v2)))
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
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3180
                                                              v1
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4566
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v5))))
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
                                                              (coe d_pparams_3158 (coe v3)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                      (coe
                                                         MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4316
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4548)
                                                         v2)))
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4316
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4548)
                                                            v2)))
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
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v5)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4316
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4548)
                                                               v2)))
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                         (coe
                                                            MAlonzo.Code.Prelude.du_'126''63'_48
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3818
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                                                  (coe v2)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1366
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Prelude.du_'126''63'_48
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3820
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                                                  (coe v2)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe d_treasury_3160 (coe v3)))
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))))
