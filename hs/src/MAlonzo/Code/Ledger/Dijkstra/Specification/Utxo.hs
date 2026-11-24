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
import qualified MAlonzo.Code.Class.HasAdd.Core
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
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _._≤ᵉᵘ_
d__'8804''7497''7512'__20 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7497''7512'__20 = erased
-- _._≤ᵗ_
d__'8804''7511'__22 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__22 = erased
-- _.CostModel
d_CostModel_84 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_CostModel_84 = erased
-- _.DCertsOf
d_DCertsOf_92 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4334 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1498]
d_DCertsOf_92 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4342
      (coe v0)
-- _.T
d_T_100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_T_100 = erased
-- _.THash
d_THash_102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_102 = erased
-- _.Datum
d_Datum_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Datum_108 = erased
-- _.Dec-isVKey
d_Dec'45'isVKey_118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_118 ~v0 = du_Dec'45'isVKey_118
du_Dec'45'isVKey_118 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_118
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_286
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_174 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
            (coe v0)))
-- _.ExUnits
d_ExUnits_226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ExUnits_226 = erased
-- _.GovProposal
d_GovProposal_254 a0 = ()
-- _.HasAdd-ExUnits
d_HasAdd'45'ExUnits_288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_HasAdd'45'ExUnits_288 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_HasAdd'45'ExUnits_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- _.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_300 ~v0
  = du_HasAttrSize'45'BootstrapAddr_300
du_HasAttrSize'45'BootstrapAddr_300 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_300
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- _.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4104
d_HasCollateralInputs'45'TopLevelTx_330 ~v0
  = du_HasCollateralInputs'45'TopLevelTx_330
du_HasCollateralInputs'45'TopLevelTx_330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4104
du_HasCollateralInputs'45'TopLevelTx_330
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4622
-- _.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4514
d_HasCurrentTreasury'45'Tx_342 ~v0
  = du_HasCurrentTreasury'45'Tx_342
du_HasCurrentTreasury'45'Tx_342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4514
du_HasCurrentTreasury'45'Tx_342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4722
-- _.HasDCerts
d_HasDCerts_346 a0 a1 a2 = ()
-- _.HasDonations-Tx
d_HasDonations'45'Tx_380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'Tx_380 ~v0 = du_HasDonations'45'Tx_380
du_HasDonations'45'Tx_380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
du_HasDonations'45'Tx_380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4696
-- _.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4594
d_HasIsValidFlag'45'Tx_438 ~v0 = du_HasIsValidFlag'45'Tx_438
du_HasIsValidFlag'45'Tx_438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4594
du_HasIsValidFlag'45'Tx_438
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4616
-- _.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_460 ~v0 = du_HasMaybeNetworkId'45'Tx_460
du_HasMaybeNetworkId'45'Tx_460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'Tx_460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4678
-- _.HasMintedValue-Tx
d_HasMintedValue'45'Tx_468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4294
d_HasMintedValue'45'Tx_468 ~v0 = du_HasMintedValue'45'Tx_468
du_HasMintedValue'45'Tx_468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4294
du_HasMintedValue'45'Tx_468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4666
-- _.HasPParams
d_HasPParams_482 a0 a1 a2 = ()
-- _.HasRedeemers-Tx
d_HasRedeemers'45'Tx_496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4082
d_HasRedeemers'45'Tx_496 ~v0 = du_HasRedeemers'45'Tx_496
du_HasRedeemers'45'Tx_496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4082
du_HasRedeemers'45'Tx_496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4620
-- _.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4274
d_HasReferenceInputs'45'Tx_504 ~v0
  = du_HasReferenceInputs'45'Tx_504
du_HasReferenceInputs'45'Tx_504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4274
du_HasReferenceInputs'45'Tx_504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4662
-- _.HasSize-Tx
d_HasSize'45'Tx_538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4194
d_HasSize'45'Tx_538 ~v0 = du_HasSize'45'Tx_538
du_HasSize'45'Tx_538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4194
du_HasSize'45'Tx_538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4612
-- _.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4254
d_HasSpendInputs'45'Tx_544 ~v0 = du_HasSpendInputs'45'Tx_544
du_HasSpendInputs'45'Tx_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4254
du_HasSpendInputs'45'Tx_544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4658
-- _.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4152
d_HasSubTransactions'45'TopLevelTx_560 ~v0
  = du_HasSubTransactions'45'TopLevelTx_560
du_HasSubTransactions'45'TopLevelTx_560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4152
du_HasSubTransactions'45'TopLevelTx_560
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4626
-- _.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4128
d_HasTxFees'45'TopLevelTx_582 ~v0 = du_HasTxFees'45'TopLevelTx_582
du_HasTxFees'45'TopLevelTx_582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4128
du_HasTxFees'45'TopLevelTx_582
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4624
-- _.HasTxId-Tx
d_HasTxId'45'Tx_588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4174
d_HasTxId'45'Tx_588 ~v0 = du_HasTxId'45'Tx_588
du_HasTxId'45'Tx_588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4174
du_HasTxId'45'Tx_588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4692
-- _.HasTxOuts-Tx
d_HasTxOuts'45'Tx_596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4474
d_HasTxOuts'45'Tx_596 ~v0 = du_HasTxOuts'45'Tx_596
du_HasTxOuts'45'Tx_596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4474
du_HasTxOuts'45'Tx_596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4714
-- _.HasUTxO
d_HasUTxO_606 a0 a1 a2 = ()
-- _.HasValidInterval-Tx
d_HasValidInterval'45'Tx_614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4234
d_HasValidInterval'45'Tx_614 ~v0 = du_HasValidInterval'45'Tx_614
du_HasValidInterval'45'Tx_614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4234
du_HasValidInterval'45'Tx_614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4654
-- _.MemoryEstimate
d_MemoryEstimate_700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_MemoryEstimate_700 = erased
-- _.NetworkId
d_NetworkId_712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_NetworkId_712 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
         (coe v0))
-- _.PlutusScript
d_PlutusScript_736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_PlutusScript_736 = erased
-- _.PParams
d_PParams_740 a0 = ()
-- _.PParamsOf
d_PParamsOf_748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_PParamsOf_748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
      (coe v0)
-- _.Script
d_Script_822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_822 = erased
-- _.ScriptHash
d_ScriptHash_828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_828 = erased
-- _.Slot
d_Slot_884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_884 = erased
-- _.SubLevelTx
d_SubLevelTx_902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_902 = erased
-- _.TopLevelTx
d_TopLevelTx_922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_922 = erased
-- _.Tx
d_Tx_928 a0 a1 = ()
-- _.TxOut
d_TxOut_946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxOut_946 = erased
-- _.UTxO
d_UTxO_956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_956 = erased
-- _.UTxOOf
d_UTxOOf_958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3860 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3868
      (coe v0)
-- _.Value
d_Value_986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Value_986 = erased
-- _.coin
d_coin_1032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> Integer
d_coin_1032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
         (coe v0))
-- _.inject
d_inject_1086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny
d_inject_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
         (coe v0))
-- _.netId
d_netId_1140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1140 ~v0 = du_netId_1140
du_netId_1140 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1140
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_258
-- _.txOutToValue
d_txOutToValue_1200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txOutToValue_1200 ~v0 = du_txOutToValue_1200
du_txOutToValue_1200 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_txOutToValue_1200
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4732
-- _.GovProposal.action
d_action_1382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_978
d_action_1382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1092
      (coe v0)
-- _.GovProposal.anchor
d_anchor_1384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1012
d_anchor_1384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1102
      (coe v0)
-- _.GovProposal.deposit
d_deposit_1386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  Integer
d_deposit_1386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1098
      (coe v0)
-- _.GovProposal.policy
d_policy_1388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  Maybe AgdaAny
d_policy_1388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1096
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_1390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  AgdaAny
d_prevAction_1390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1094
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_1392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1100
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_1486 a0 = ()
-- _.HasDCerts.DCertsOf
d_DCertsOf_1736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4334 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1498]
d_DCertsOf_1736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4342
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_PParamsOf_1784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3860 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1848 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3868
      (coe v0)
-- _.PParams.Emax
d_Emax_1982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_Emax_1982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_478
      (coe v0)
-- _.PParams.a
d_a_1984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_a_1984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_448 (coe v0)
-- _.PParams.a0
d_a0_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_482
      (coe v0)
-- _.PParams.b
d_b_1988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_b_1988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_450 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_ccMaxTermLength_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_496
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_ccMinSize_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_494
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_coinsPerUTxOByte_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_462
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_collateralPercentage_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_486
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdlsAssoc_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_488
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_drepActivity_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_504
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_drepDeposit_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_502
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_252
d_drepThresholds_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_492
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_govActionDeposit_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_500
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_govActionLifetime_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_498
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_keyDeposit_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_452
      (coe v0)
-- _.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosCommitteeSize_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_440
      (coe v0)
-- _.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosDiffusionPeriod_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_434
      (coe v0)
-- _.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosHeaderPeriod_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_430
      (coe v0)
-- _.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_leiosMaxEBExUnits_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_444
      (coe v0)
-- _.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosMaxEBSize_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_436
      (coe v0)
-- _.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosMaxEBTxsSize_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_438
      (coe v0)
-- _.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_446
      (coe v0)
-- _.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_442
      (coe v0)
-- _.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosVotingPeriod_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_432
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_maxBlockExUnits_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_422
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxBlockSize_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_414
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxCollateralInputs_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_426
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxHeaderSize_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_418
      (coe v0)
-- _.PParams.maxPledgeLeverage
d_maxPledgeLeverage_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxPledgeLeverage_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxPledgeLeverage_484
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxRefScriptSizePerBlock_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_470
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxRefScriptSizePerTx_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_468
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_maxTxExUnits_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_420
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxTxSize_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_416
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxValSize_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_424
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_466
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_minPoolCost_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_456
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_minUTxOValue_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_476
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_458
      (coe v0)
-- _.PParams.nopt
d_nopt_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_nopt_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_480
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_poolDeposit_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_454
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_296
d_poolThresholds_2064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_490
      (coe v0)
-- _.PParams.prices
d_prices_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_prices_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_464
      (coe v0)
-- _.PParams.pv
d_pv_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_428
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_474
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_472
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_460
      (coe v0)
-- _.Tx.isValid
d_isValid_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  AgdaAny
d_isValid_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3904
      (coe v0)
-- _.Tx.txAuxData
d_txAuxData_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  Maybe AgdaAny
d_txAuxData_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3906
      (coe v0)
-- _.Tx.txBody
d_txBody_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3882
d_txBody_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
      (coe v0)
-- _.Tx.txSize
d_txSize_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  Integer
d_txSize_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3902
      (coe v0)
-- _.Tx.txWitnesses
d_txWitnesses_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3884
d_txWitnesses_2574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3900
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.DCert
d_DCert_2700 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo._.HasPState
d_HasPState_2830 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Utxo._.HasPools-PState
d_HasPools'45'PState_2842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1762
d_HasPools'45'PState_2842 ~v0 ~v1 = du_HasPools'45'PState_2842
du_HasPools'45'PState_2842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1762
du_HasPools'45'PState_2842
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'PState_2014
-- Ledger.Dijkstra.Specification.Utxo._.PState
d_PState_2900 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo._.PStateOf
d_PStateOf_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1902 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1578
d_PStateOf_2904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1910
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.Pools
d_Pools_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_Pools_2912 = erased
-- Ledger.Dijkstra.Specification.Utxo._.HasPState.PStateOf
d_PStateOf_3112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1902 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1578
d_PStateOf_3112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1910
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.PState.deposits
d_deposits_3140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1578 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1594
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.PState.fPools
d_fPools_3142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1578 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_3142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1590
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.PState.pools
d_pools_3144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1578 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1588
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.PState.retiring
d_retiring_3146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1578 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1592
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.evalP2Scripts
d_evalP2Scripts_3198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_3198 v0 ~v1 = du_evalP2Scripts_3198 v0
du_evalP2Scripts_3198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_3198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3586
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.totalExUnits
d_totalExUnits_3214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  AgdaAny
d_totalExUnits_3214 v0 ~v1 v2 = du_totalExUnits_3214 v0 v2
du_totalExUnits_3214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  AgdaAny
du_totalExUnits_3214 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Class.HasAdd.Core.d__'43'__16
              (let v4
                     = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
                         (coe v0) in
               coe
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_HasAdd'45'ExUnits_488
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                       (coe v4))))
              v2
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1468
                 (coe
                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                    (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
                                   (coe v0))))))
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
                             (coe v0)))))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
                          (coe v0))))
                 (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4090
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4620)
                    v3))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1468
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
               (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
                           (coe v0))))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
                     (coe v0)))))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
                  (coe v0))))
         (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_4022
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3900
               (coe v1))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3992
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
            (coe v1)))
-- Ledger.Dijkstra.Specification.Utxo.totalRefScriptsSize
d_totalRefScriptsSize_3230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  Integer
d_totalRefScriptsSize_3230 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_938
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_scriptSize_3290
         (coe v1))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4776
         (coe v0) (coe v3) (coe v2))
-- Ledger.Dijkstra.Specification.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_3238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  Integer
d_utxoEntrySizeWithoutVal_3238 ~v0
  = du_utxoEntrySizeWithoutVal_3238
du_utxoEntrySizeWithoutVal_3238 :: Integer
du_utxoEntrySizeWithoutVal_3238 = coe (8 :: Integer)
-- Ledger.Dijkstra.Specification.Utxo.utxoEntrySize
d_utxoEntrySize_3240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_3240 v0 ~v1 v2 = du_utxoEntrySize_3240 v0 v2
du_utxoEntrySize_3240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_3240 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    addInt (coe (8 :: Integer))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                          (coe v0))
                       v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv
d_UTxOEnv_3244 a0 a1 = ()
data T_UTxOEnv_3244
  = C_constructor_3274 AgdaAny
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1578
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] Bool
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.slot
d_slot_3260 :: T_UTxOEnv_3244 -> AgdaAny
d_slot_3260 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.pparams
d_pparams_3262 ::
  T_UTxOEnv_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_pparams_3262 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.treasury
d_treasury_3264 :: T_UTxOEnv_3244 -> Integer
d_treasury_3264 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.utxo₀
d_utxo'8320'_3266 ::
  T_UTxOEnv_3244 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3266 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.pState₀
d_pState'8320'_3268 ::
  T_UTxOEnv_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1578
d_pState'8320'_3268 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.allScripts
d_allScripts_3270 ::
  T_UTxOEnv_3244 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3270 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.legacyMode
d_legacyMode_3272 :: T_UTxOEnv_3244 -> Bool
d_legacyMode_3272 v0
  = case coe v0 of
      C_constructor_3274 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv
d_SubUTxOEnv_3276 a0 a1 = ()
data T_SubUTxOEnv_3276
  = C_constructor_3310 AgdaAny
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1578
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1498]
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] Bool
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.slot
d_slot_3294 :: T_SubUTxOEnv_3276 -> AgdaAny
d_slot_3294 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.pparams
d_pparams_3296 ::
  T_SubUTxOEnv_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_pparams_3296 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.treasury
d_treasury_3298 :: T_SubUTxOEnv_3276 -> Integer
d_treasury_3298 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.utxo₀
d_utxo'8320'_3300 ::
  T_SubUTxOEnv_3276 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3300 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.pState₀
d_pState'8320'_3302 ::
  T_SubUTxOEnv_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1578
d_pState'8320'_3302 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.prevDCerts
d_prevDCerts_3304 ::
  T_SubUTxOEnv_3276 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1498]
d_prevDCerts_3304 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.allScripts
d_allScripts_3306 ::
  T_SubUTxOEnv_3276 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3306 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_3308 :: T_SubUTxOEnv_3276 -> Bool
d_isTopLevelValid_3308 v0
  = case coe v0 of
      C_constructor_3310 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOState
d_UTxOState_3312 a0 a1 = ()
data T_UTxOState_3312
  = C_'10214'_'44'_'44'_'10215''7512'_3326 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           Integer Integer
-- Ledger.Dijkstra.Specification.Utxo.UTxOState.utxo
d_utxo_3320 ::
  T_UTxOState_3312 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3320 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7512'_3326 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOState.fees
d_fees_3322 :: T_UTxOState_3312 -> Integer
d_fees_3322 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7512'_3326 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOState.donations
d_donations_3324 :: T_UTxOState_3312 -> Integer
d_donations_3324 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7512'_3326 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.HasUTxOState
d_HasUTxOState_3332 a0 a1 a2 a3 = ()
newtype T_HasUTxOState_3332
  = C_constructor_3342 (AgdaAny -> T_UTxOState_3312)
-- Ledger.Dijkstra.Specification.Utxo.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3340 ::
  T_HasUTxOState_3332 -> AgdaAny -> T_UTxOState_3312
d_UTxOStateOf_3340 v0
  = case coe v0 of
      C_constructor_3342 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.UTxOStateOf
d_UTxOStateOf_3346 ::
  T_HasUTxOState_3332 -> AgdaAny -> T_UTxOState_3312
d_UTxOStateOf_3346 v0 = coe d_UTxOStateOf_3340 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasIsTopLevelValidFlag
d_HasIsTopLevelValidFlag_3352 a0 a1 a2 a3 = ()
newtype T_HasIsTopLevelValidFlag_3352
  = C_constructor_3362 (AgdaAny -> Bool)
-- Ledger.Dijkstra.Specification.Utxo.HasIsTopLevelValidFlag.IsTopLevelValidFlagOf
d_IsTopLevelValidFlagOf_3360 ::
  T_HasIsTopLevelValidFlag_3352 -> AgdaAny -> Bool
d_IsTopLevelValidFlagOf_3360 v0
  = case coe v0 of
      C_constructor_3362 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.IsTopLevelValidFlagOf
d_IsTopLevelValidFlagOf_3366 ::
  T_HasIsTopLevelValidFlag_3352 -> AgdaAny -> Bool
d_IsTopLevelValidFlagOf_3366 v0
  = coe d_IsTopLevelValidFlagOf_3360 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasLegacyMode
d_HasLegacyMode_3372 a0 a1 a2 a3 = ()
newtype T_HasLegacyMode_3372 = C_constructor_3382 (AgdaAny -> Bool)
-- Ledger.Dijkstra.Specification.Utxo.HasLegacyMode.LegacyModeOf
d_LegacyModeOf_3380 :: T_HasLegacyMode_3372 -> AgdaAny -> Bool
d_LegacyModeOf_3380 v0
  = case coe v0 of
      C_constructor_3382 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.LegacyModeOf
d_LegacyModeOf_3386 :: T_HasLegacyMode_3372 -> AgdaAny -> Bool
d_LegacyModeOf_3386 v0 = coe d_LegacyModeOf_3380 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool
d_HasScriptPool_3392 a0 a1 a2 a3 = ()
newtype T_HasScriptPool_3392
  = C_constructor_3402 (AgdaAny ->
                        [MAlonzo.Code.Data.Sum.Base.T__'8846'__30])
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool.ScriptPoolOf
d_ScriptPoolOf_3400 ::
  T_HasScriptPool_3392 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptPoolOf_3400 v0
  = case coe v0 of
      C_constructor_3402 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.ScriptPoolOf
d_ScriptPoolOf_3406 ::
  T_HasScriptPool_3392 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptPoolOf_3406 v0 = coe d_ScriptPoolOf_3400 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasDataPool
d_HasDataPool_3412 a0 a1 a2 a3 = ()
newtype T_HasDataPool_3412
  = C_constructor_3422 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Utxo.HasDataPool.DataPoolOf
d_DataPoolOf_3420 ::
  T_HasDataPool_3412 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DataPoolOf_3420 v0
  = case coe v0 of
      C_constructor_3422 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.DataPoolOf
d_DataPoolOf_3426 ::
  T_HasDataPool_3412 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DataPoolOf_3426 v0 = coe d_DataPoolOf_3420 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasSlot
d_HasSlot_3432 a0 a1 a2 a3 = ()
newtype T_HasSlot_3432 = C_constructor_3442 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Utxo.HasSlot.SlotOf
d_SlotOf_3440 :: T_HasSlot_3432 -> AgdaAny -> AgdaAny
d_SlotOf_3440 v0
  = case coe v0 of
      C_constructor_3442 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.SlotOf
d_SlotOf_3446 :: T_HasSlot_3432 -> AgdaAny -> AgdaAny
d_SlotOf_3446 v0 = coe d_SlotOf_3440 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasSlot-UTxOEnv
d_HasSlot'45'UTxOEnv_3448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_HasSlot_3432
d_HasSlot'45'UTxOEnv_3448 ~v0 ~v1 = du_HasSlot'45'UTxOEnv_3448
du_HasSlot'45'UTxOEnv_3448 :: T_HasSlot_3432
du_HasSlot'45'UTxOEnv_3448
  = coe C_constructor_3442 (coe (\ v0 -> d_slot_3260 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_3450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748
d_HasPParams'45'UTxOEnv_3450 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_3450
du_HasPParams'45'UTxOEnv_3450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748
du_HasPParams'45'UTxOEnv_3450
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_758
      (coe (\ v0 -> d_pparams_3262 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasTreasury-UTxOEnv
d_HasTreasury'45'UTxOEnv_3452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'UTxOEnv_3452 ~v0 ~v1
  = du_HasTreasury'45'UTxOEnv_3452
du_HasTreasury'45'UTxOEnv_3452 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
du_HasTreasury'45'UTxOEnv_3452
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_100
      (coe (\ v0 -> d_treasury_3264 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOEnv
d_HasUTxO'45'UTxOEnv_3454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3860
d_HasUTxO'45'UTxOEnv_3454 ~v0 ~v1 = du_HasUTxO'45'UTxOEnv_3454
du_HasUTxO'45'UTxOEnv_3454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3860
du_HasUTxO'45'UTxOEnv_3454
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3870
      (coe (\ v0 -> d_utxo'8320'_3266 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool-UTxOEnv
d_HasScriptPool'45'UTxOEnv_3456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_HasScriptPool_3392
d_HasScriptPool'45'UTxOEnv_3456 ~v0 ~v1
  = du_HasScriptPool'45'UTxOEnv_3456
du_HasScriptPool'45'UTxOEnv_3456 :: T_HasScriptPool_3392
du_HasScriptPool'45'UTxOEnv_3456
  = coe C_constructor_3402 (coe (\ v0 -> d_allScripts_3270 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasLegacyMode-UTxOEnv
d_HasLegacyMode'45'UTxOEnv_3458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_HasLegacyMode_3372
d_HasLegacyMode'45'UTxOEnv_3458 ~v0 ~v1
  = du_HasLegacyMode'45'UTxOEnv_3458
du_HasLegacyMode'45'UTxOEnv_3458 :: T_HasLegacyMode_3372
du_HasLegacyMode'45'UTxOEnv_3458
  = coe C_constructor_3382 (coe (\ v0 -> d_legacyMode_3272 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasPState-UTxOEnv
d_HasPState'45'UTxOEnv_3460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1902
d_HasPState'45'UTxOEnv_3460 ~v0 ~v1 = du_HasPState'45'UTxOEnv_3460
du_HasPState'45'UTxOEnv_3460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1902
du_HasPState'45'UTxOEnv_3460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1912
      (coe (\ v0 -> d_pState'8320'_3268 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasSlot-SubUTxOEnv
d_HasSlot'45'SubUTxOEnv_3462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_HasSlot_3432
d_HasSlot'45'SubUTxOEnv_3462 ~v0 ~v1
  = du_HasSlot'45'SubUTxOEnv_3462
du_HasSlot'45'SubUTxOEnv_3462 :: T_HasSlot_3432
du_HasSlot'45'SubUTxOEnv_3462
  = coe C_constructor_3442 (coe (\ v0 -> d_slot_3294 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasPParams-SubUTxOEnv
d_HasPParams'45'SubUTxOEnv_3464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748
d_HasPParams'45'SubUTxOEnv_3464 ~v0 ~v1
  = du_HasPParams'45'SubUTxOEnv_3464
du_HasPParams'45'SubUTxOEnv_3464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748
du_HasPParams'45'SubUTxOEnv_3464
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_758
      (coe (\ v0 -> d_pparams_3296 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasTreasury-SubUTxOEnv
d_HasTreasury'45'SubUTxOEnv_3466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'SubUTxOEnv_3466 ~v0 ~v1
  = du_HasTreasury'45'SubUTxOEnv_3466
du_HasTreasury'45'SubUTxOEnv_3466 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
du_HasTreasury'45'SubUTxOEnv_3466
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_100
      (coe (\ v0 -> d_treasury_3298 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasUTxO-SubUTxOEnv
d_HasUTxO'45'SubUTxOEnv_3468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3860
d_HasUTxO'45'SubUTxOEnv_3468 ~v0 ~v1
  = du_HasUTxO'45'SubUTxOEnv_3468
du_HasUTxO'45'SubUTxOEnv_3468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3860
du_HasUTxO'45'SubUTxOEnv_3468
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3870
      (coe (\ v0 -> d_utxo'8320'_3300 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasIsTopLevelValidFlag-SubUTxOEnv
d_HasIsTopLevelValidFlag'45'SubUTxOEnv_3470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_HasIsTopLevelValidFlag_3352
d_HasIsTopLevelValidFlag'45'SubUTxOEnv_3470 ~v0 ~v1
  = du_HasIsTopLevelValidFlag'45'SubUTxOEnv_3470
du_HasIsTopLevelValidFlag'45'SubUTxOEnv_3470 ::
  T_HasIsTopLevelValidFlag_3352
du_HasIsTopLevelValidFlag'45'SubUTxOEnv_3470
  = coe
      C_constructor_3362 (coe (\ v0 -> d_isTopLevelValid_3308 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool-SubUTxOEnv
d_HasScriptPool'45'SubUTxOEnv_3472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_HasScriptPool_3392
d_HasScriptPool'45'SubUTxOEnv_3472 ~v0 ~v1
  = du_HasScriptPool'45'SubUTxOEnv_3472
du_HasScriptPool'45'SubUTxOEnv_3472 :: T_HasScriptPool_3392
du_HasScriptPool'45'SubUTxOEnv_3472
  = coe C_constructor_3402 (coe (\ v0 -> d_allScripts_3306 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasPState-SubUTxOEnv
d_HasPState'45'SubUTxOEnv_3474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1902
d_HasPState'45'SubUTxOEnv_3474 ~v0 ~v1
  = du_HasPState'45'SubUTxOEnv_3474
du_HasPState'45'SubUTxOEnv_3474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1902
du_HasPState'45'SubUTxOEnv_3474
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1912
      (coe (\ v0 -> d_pState'8320'_3302 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasDCerts-SubUTxOEnv
d_HasDCerts'45'SubUTxOEnv_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4334
d_HasDCerts'45'SubUTxOEnv_3476 ~v0 ~v1
  = du_HasDCerts'45'SubUTxOEnv_3476
du_HasDCerts'45'SubUTxOEnv_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4334
du_HasDCerts'45'SubUTxOEnv_3476
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_4344
      (coe (\ v0 -> d_prevDCerts_3304 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_3478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3860
d_HasUTxO'45'UTxOState_3478 ~v0 ~v1 = du_HasUTxO'45'UTxOState_3478
du_HasUTxO'45'UTxOState_3478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3860
du_HasUTxO'45'UTxOState_3478
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3870
      (coe (\ v0 -> d_utxo_3320 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasFee-UTxOState
d_HasFee'45'UTxOState_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_50
d_HasFee'45'UTxOState_3480 ~v0 ~v1 = du_HasFee'45'UTxOState_3480
du_HasFee'45'UTxOState_3480 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_50
du_HasFee'45'UTxOState_3480
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_60
      (coe (\ v0 -> d_fees_3322 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasDonations-UTxOState
d_HasDonations'45'UTxOState_3482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'UTxOState_3482 ~v0 ~v1
  = du_HasDonations'45'UTxOState_3482
du_HasDonations'45'UTxOState_3482 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
du_HasDonations'45'UTxOState_3482
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_40
      (coe (\ v0 -> d_donations_3324 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_3484 ~v0 ~v1 = du_HasCast'45'UTxOEnv_3484
du_HasCast'45'UTxOEnv_3484 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_3484
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
                                 (3244 :: Integer) (1252473578754917138 :: Integer)
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
                                 (884 :: Integer) (1252473578754917138 :: Integer) "_.Slot"
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
                                    (3244 :: Integer) (1252473578754917138 :: Integer)
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
                                    (740 :: Integer) (1252473578754917138 :: Integer) "_.PParams"
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
                                       (3244 :: Integer) (1252473578754917138 :: Integer)
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
                                       (24 :: Integer) (14798748958053396954 :: Integer)
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
                                          (3244 :: Integer) (1252473578754917138 :: Integer)
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
                                          (956 :: Integer) (1252473578754917138 :: Integer) "_.UTxO"
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
                                             (3244 :: Integer) (1252473578754917138 :: Integer)
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
                                             (2900 :: Integer) (1252473578754917138 :: Integer)
                                             "Ledger.Dijkstra.Specification.Utxo._.PState"
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
                                                (3244 :: Integer) (1252473578754917138 :: Integer)
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
                                                         (822 :: Integer)
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
                                                   (3244 :: Integer)
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
         (coe C_constructor_3274))
-- Ledger.Dijkstra.Specification.Utxo.HasCast-SubUTxOEnv
d_HasCast'45'SubUTxOEnv_3486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubUTxOEnv_3486 ~v0 ~v1
  = du_HasCast'45'SubUTxOEnv_3486
du_HasCast'45'SubUTxOEnv_3486 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubUTxOEnv_3486
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
                                 (3276 :: Integer) (1252473578754917138 :: Integer)
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
                                 (884 :: Integer) (1252473578754917138 :: Integer) "_.Slot"
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
                                    (3276 :: Integer) (1252473578754917138 :: Integer)
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
                                    (740 :: Integer) (1252473578754917138 :: Integer) "_.PParams"
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
                                       (3276 :: Integer) (1252473578754917138 :: Integer)
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
                                       (24 :: Integer) (14798748958053396954 :: Integer)
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
                                          (3276 :: Integer) (1252473578754917138 :: Integer)
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
                                          (956 :: Integer) (1252473578754917138 :: Integer) "_.UTxO"
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
                                             (3276 :: Integer) (1252473578754917138 :: Integer)
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
                                             (2900 :: Integer) (1252473578754917138 :: Integer)
                                             "Ledger.Dijkstra.Specification.Utxo._.PState"
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
                                                (3276 :: Integer) (1252473578754917138 :: Integer)
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
                                                (10 :: Integer) (15090436609435731260 :: Integer)
                                                "Agda.Builtin.List.List"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
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
                                                         (20 :: Integer)
                                                         (10880583612240331187 :: Integer)
                                                         "Agda.Primitive.lzero"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                            (2700 :: Integer)
                                                            (1252473578754917138 :: Integer)
                                                            "Ledger.Dijkstra.Specification.Utxo._.DCert"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                                                   (3276 :: Integer)
                                                   (1252473578754917138 :: Integer)
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
                                                            (822 :: Integer)
                                                            (1252473578754917138 :: Integer)
                                                            "_.Script"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                                      (3276 :: Integer)
                                                      (1252473578754917138 :: Integer)
                                                      "Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                             (coe ("r" :: Data.Text.Text))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (6 :: Integer)
                                                      (4305008439024043551 :: Integer)
                                                      "Agda.Builtin.Bool.Bool"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
         (coe C_constructor_3310))
-- Ledger.Dijkstra.Specification.Utxo.HasCast-UTxOState
d_HasCast'45'UTxOState_3488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_3488 ~v0 ~v1 = du_HasCast'45'UTxOState_3488
du_HasCast'45'UTxOState_3488 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_3488
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
                                 (3312 :: Integer) (1252473578754917138 :: Integer)
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
                                 (956 :: Integer) (1252473578754917138 :: Integer) "_.UTxO"
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
                                    (3312 :: Integer) (1252473578754917138 :: Integer)
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
                                    (20 :: Integer) (14798748958053396954 :: Integer)
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
                                       (3312 :: Integer) (1252473578754917138 :: Integer)
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
                                       (18 :: Integer) (14798748958053396954 :: Integer)
                                       "Ledger.Prelude.Base.Donations"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''7512'_3326))
-- Ledger.Dijkstra.Specification.Utxo.outs
d_outs_3502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_3502 ~v0 ~v1 ~v2 v3 = du_outs_3502 v3
du_outs_3502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_3502 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_976
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4182
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4692)
                 v0)
              (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4482
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4714)
         v0)
-- Ledger.Dijkstra.Specification.Utxo.balance
d_balance_3508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_3508 v0 ~v1 v2 = du_balance_3508 v0 v2
du_balance_3508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_3508 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1468
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
            (coe v0)))
      (coe (\ v2 -> v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_986
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4732)
         (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.cbalance
d_cbalance_3514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_3514 v0 ~v1 v2 = du_cbalance_3514 v0 v2
du_cbalance_3514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_3514 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
         (coe v0))
      (coe du_balance_3508 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.minfee
d_minfee_3518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_minfee_3518 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txScriptFee_3282
               v1
               (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_464
                  (coe v2))
               (coe du_totalExUnits_3214 (coe v0) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_450
               (coe v2)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Fees.du_scriptsCost_26
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
               (coe v0))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v0))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
               (coe v0))
            (coe v2)
            (coe
               d_totalRefScriptsSize_3230 (coe v0) (coe v1) (coe v4) (coe v3))))
      (coe
         mulInt
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_448
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3902
            (coe v3)))
-- Ledger.Dijkstra.Specification.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_3526 v0 ~v1 = du_HasCoin'45'UTxO_3526 v0
du_HasCoin'45'UTxO_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_3526 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe du_cbalance_3514 (coe v0))
-- Ledger.Dijkstra.Specification.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_3528 v0 ~v1
  = du_HasCoin'45'UTxOState_3528 v0
du_HasCoin'45'UTxOState_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_3528 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt (coe du_cbalance_3514 (coe v0) (coe d_utxo_3320 (coe v1)))
                 (coe d_donations_3324 (coe v1)))
              (coe d_fees_3322 (coe v1))))
-- Ledger.Dijkstra.Specification.Utxo.inInterval
d_inInterval_3534 a0 a1 a2 a3 = ()
data T_inInterval_3534
  = C_both_3542 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_3546 AgdaAny | C_upper_3550 AgdaAny | C_none_3552
-- Ledger.Dijkstra.Specification.Utxo.Dec-inInterval
d_Dec'45'inInterval_3554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_3554 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_3554 v0 v2 v3
du_Dec'45'inInterval_3554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_3554 v0 v1 v2
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
                                         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                                            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
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
                                                                                    C_both_3542
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
                                         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
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
                                                         (coe C_lower_3546 v9))
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
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                                         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
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
                                                         (coe C_upper_3550 v9))
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
                                 (coe C_none_3552))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Utxo.coinPolicies
d_coinPolicies_3656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  [AgdaAny]
d_coinPolicies_3656 v0 ~v1 = du_coinPolicies_3656 v0
du_coinPolicies_3656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny]
du_coinPolicies_3656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
            (coe v0))
         (1 :: Integer))
-- Ledger.Dijkstra.Specification.Utxo.isAdaOnly
d_isAdaOnly_3658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  AgdaAny -> ()
d_isAdaOnly_3658 = erased
-- Ledger.Dijkstra.Specification.Utxo.collateralCheck
d_collateralCheck_3662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_3662 = erased
-- Ledger.Dijkstra.Specification.Utxo._.govProposalsDeposits
d_govProposalsDeposits_3680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078] ->
  Integer
d_govProposalsDeposits_3680 ~v0 ~v1 v2
  = du_govProposalsDeposits_3680 v2
du_govProposalsDeposits_3680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078] ->
  Integer
du_govProposalsDeposits_3680 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v1 v2 ->
            addInt
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_500
                 (coe v0))
              (coe v1)))
      (coe (0 :: Integer))
-- Ledger.Dijkstra.Specification.Utxo._.consumedTx
d_consumedTx_3692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumedTx_3692 v0 ~v1 ~v2 ~v3 v4 v5
  = du_consumedTx_3692 v0 v4 v5
du_consumedTx_3692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumedTx_3692 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                  (coe v0))))
         (coe
            du_balance_3508 (coe v0)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                        (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4262
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4658)
                  v1)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4302
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4666)
            v1))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
            (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1468
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3972
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                  (coe v1)))))
-- Ledger.Dijkstra.Specification.Utxo._.consumed
d_consumed_3698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumed_3698 v0 ~v1 ~v2 v3 v4 = du_consumed_3698 v0 v3 v4
du_consumed_3698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumed_3698 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
               (coe v0))))
      (coe du_consumedTx_3692 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_refundCertDeposits_2196
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4826
               (coe v1))))
-- Ledger.Dijkstra.Specification.Utxo._.consumedBatch
d_consumedBatch_3704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumedBatch_3704 v0 ~v1 ~v2 v3 v4
  = du_consumedBatch_3704 v0 v3 v4
du_consumedBatch_3704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumedBatch_3704 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
               (coe v0))))
      (coe du_consumed_3698 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_938
         (MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
               (coe v0)))
         (\ v3 -> coe du_consumedTx_3692 (coe v0) (coe v3) (coe v2))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3992
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
               (coe v1))))
-- Ledger.Dijkstra.Specification.Utxo._.consumedLegacy
d_consumedLegacy_3712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumedLegacy_3712 v0 ~v1 ~v2 v3 v4
  = du_consumedLegacy_3712 v0 v3 v4
du_consumedLegacy_3712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumedLegacy_3712 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
               (coe v0))))
      (coe du_consumedTx_3692 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_refundCertDeposits_2196
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4342
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4634)
               v1)))
-- Ledger.Dijkstra.Specification.Utxo._.producedTx
d_producedTx_3718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  AgdaAny
d_producedTx_3718 v0 ~v1 v2 ~v3 v4 = du_producedTx_3718 v0 v2 v4
du_producedTx_3718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  AgdaAny
du_producedTx_3718 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                     (coe v0))))
            (coe du_balance_3508 (coe v0) (coe du_outs_3502 (coe v2)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                  (coe v0))
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3978
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                     (coe v2)))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
               (coe v0))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1468
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
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
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3998
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                     (coe v2))))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
            (coe v0))
         (coe
            du_govProposalsDeposits_3680 v1
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3982
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Utxo._.produced
d_produced_3722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  AgdaAny
d_produced_3722 v0 ~v1 v2 v3 v4 = du_produced_3722 v0 v2 v3 v4
du_produced_3722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  AgdaAny
du_produced_3722 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                  (coe v0))))
         (coe du_producedTx_3718 (coe v0) (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
               (coe v0))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3970
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                  (coe v3)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
            (coe v0))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_newCertDeposits_2166
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2904
               (coe v0))
            (coe v1)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_588
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v2))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4826
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo._.producedBatch
d_producedBatch_3728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  AgdaAny
d_producedBatch_3728 v0 ~v1 v2 v3 v4
  = du_producedBatch_3728 v0 v2 v3 v4
du_producedBatch_3728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  AgdaAny
du_producedBatch_3728 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
               (coe v0))))
      (coe du_produced_3722 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_938
         (MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
               (coe v0)))
         (coe du_producedTx_3718 (coe v0) (coe v1))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3992
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo._.producedLegacy
d_producedLegacy_3736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  AgdaAny
d_producedLegacy_3736 v0 ~v1 v2 v3 v4
  = du_producedLegacy_3736 v0 v2 v3 v4
du_producedLegacy_3736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  AgdaAny
du_producedLegacy_3736 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                  (coe v0))))
         (coe du_producedTx_3718 (coe v0) (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
               (coe v0))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3970
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                  (coe v3)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
            (coe v0))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_newCertDeposits_2166
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2904
               (coe v0))
            (coe v1) (coe du_pools''_3746 (coe v2) (coe v3))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4342
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4634)
               v3)))
-- Ledger.Dijkstra.Specification.Utxo._._.pools'
d_pools''_3746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  [AgdaAny]
d_pools''_3746 ~v0 ~v1 ~v2 v3 v4 = du_pools''_3746 v3 v4
du_pools''_3746 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  [AgdaAny]
du_pools''_3746 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v2 v3 ->
            case coe v3 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_regpool_1504 v4 v5
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
         MAlonzo.Code.Class.IsSet.du_dom_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v0))
      (coe
         MAlonzo.Code.Data.List.Base.du_concatMap_246
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4342
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4634))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3992
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
               (coe v1))))
-- Ledger.Dijkstra.Specification.Utxo.allP2ScriptsWithContext
d_allP2ScriptsWithContext_3756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_UTxOEnv_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allP2ScriptsWithContext_3756 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         du_p2ScriptsWithContext_3766 (coe v0) (coe v1) (coe v2)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
         (coe v3))
      (coe
         MAlonzo.Code.Data.List.Base.du_concatMap_246
         (coe
            du_p2ScriptsWithContext_3766 (coe v0) (coe v1) (coe v2)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3992
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo._.p2ScriptsWithContext
d_p2ScriptsWithContext_3766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_UTxOEnv_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_p2ScriptsWithContext_3766 v0 v1 v2 ~v3 v4 v5
  = du_p2ScriptsWithContext_3766 v0 v1 v2 v4 v5
du_p2ScriptsWithContext_3766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_UTxOEnv_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_p2ScriptsWithContext_3766 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3520
      (coe v0) (coe v1) (coe v3) (coe d_pparams_3262 (coe v2)) (coe v4)
      (coe d_utxo'8320'_3266 (coe v2)) (coe d_allScripts_3270 (coe v2))
-- Ledger.Dijkstra.Specification.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__3770 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__3770 = C_UTXOS_3772
-- Ledger.Dijkstra.Specification.Utxo.UTXOS-premises
d_UTXOS'45'premises_3774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_UTxOEnv_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOS'45'premises_3774 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3586
            v0
            (d_allP2ScriptsWithContext_3756
               (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3904
            (coe v3)))
-- Ledger.Dijkstra.Specification.Utxo._⊢_⇀⦇_,SUBUTXO⦈_
d__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3776 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3776
  = C_SUBUTXO_3802 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxo.SUBUTXO-premises
d_SUBUTXO'45'premises_3804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  T_SubUTxOEnv_3276 ->
  T_UTxOState_3312 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SUBUTXO'45'premises_3804 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1266
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                        (coe v0))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4262
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4658)
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
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                             (coe v0))
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_588
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                          (coe d_utxo'8320'_3300 (coe v3)))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4262
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4658)
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
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                                (coe v0))
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                                (coe v0)))
                          (coe v5)
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_588
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                             (coe d_utxo'8320'_3300 (coe v3)))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4282
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4662)
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
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                                   (coe v0))
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                                   (coe v0)))
                             (coe v5)
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_588
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                (coe d_utxo_3320 (coe v4)))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4262
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4658)
                        v2))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        du_Dec'45'inInterval_3554 (coe v0) (coe d_slot_3294 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3974
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4302
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4666)
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
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                                            (coe v0))
                                         (mulInt
                                            (coe
                                               addInt (coe (160 :: Integer))
                                               (coe
                                                  du_utxoEntrySize_3240 (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5))))
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_462
                                               (coe d_pparams_3296 (coe v3)))))
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4732
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                 (coe
                                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4482
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4714)
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
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3284
                                            v1
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4732
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v5))))
                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_424
                                            (coe d_pparams_3296 (coe v3)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                    (coe
                                       MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4482
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4714)
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
                                       MAlonzo.Code.Class.IsSet.du_range_590
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4482
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4714)
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
                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_258
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v5)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                                                     (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Class.IsSet.du_range_590
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4482
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4714)
                                             v2)))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Prelude.du_'126''63'_48
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3984
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Prelude.du_'126''63'_48
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3986
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                             (coe d_treasury_3298 (coe v3)))
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))
-- Ledger.Dijkstra.Specification.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__3806 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__3806
  = C_UTXO_3834 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxo.UTXO-premises
d_UTXO'45'premises_3836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878 ->
  T_UTxOEnv_3244 ->
  T_UTxOState_3312 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3836 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1266
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                        (coe v0))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4262
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4658)
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
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                             (coe v0))
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_588
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                          (coe d_utxo'8320'_3266 (coe v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4262
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4658)
                     v2)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3962
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
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
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                                (coe v0))
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                                (coe v0)))
                          (coe v5)
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_588
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                             (coe d_utxo'8320'_3266 (coe v3)))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4282
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4662)
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
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                                   (coe v0))
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                                   (coe v0)))
                             (coe v5)
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_588
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                (coe d_utxo_3320 (coe v4)))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4262
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4658)
                        v2))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        du_Dec'45'inInterval_3554 (coe v0) (coe d_slot_3260 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3974
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                           (d_minfee_3518
                              (coe v0) (coe v1) (coe d_pparams_3262 (coe v3)) (coe v2)
                              (coe d_utxo'8320'_3266 (coe v3)))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3970
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4302
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4666)
                                    v2))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                                       (coe v0)))
                                 (coe
                                    du_consumedBatch_3704 (coe v0) (coe v2)
                                    (coe d_utxo'8320'_3266 (coe v3)))
                                 (coe
                                    du_producedBatch_3728 (coe v0) (coe d_pparams_3262 (coe v3))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1588
                                       (coe d_pState'8320'_3268 (coe v3)))
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                       (coe d_legacyMode_3272 (coe v3))
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                                             (coe v0)))
                                       (coe
                                          du_consumedLegacy_3712 (coe v0) (coe v2)
                                          (coe d_utxo'8320'_3266 (coe v3)))
                                       (coe
                                          du_producedLegacy_3736 (coe v0)
                                          (coe d_pparams_3262 (coe v3))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1588
                                             (coe d_pState'8320'_3268 (coe v3)))
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3902
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_416
                                          (coe d_pparams_3262 (coe v3))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                          (d_totalRefScriptsSize_3230
                                             (coe v0) (coe v1) (coe d_utxo'8320'_3266 (coe v3))
                                             (coe v2))
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_468
                                             (coe d_pparams_3262 (coe v3))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
                                                   (coe v0)))
                                             (coe du_totalExUnits_3214 (coe v0) (coe v2))
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_420
                                                (coe d_pparams_3262 (coe v3))))
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
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1266
                                                            (coe
                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                               () erased () erased
                                                               (coe
                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                  () erased () erased
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                                                                     (coe v0)))
                                                               (coe
                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                  () erased () erased
                                                                  (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
                                                                                 (coe v0))))))
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
                                                                           (coe v0)))))))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_4022
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3900
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
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1266
                                                                    (coe
                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                       () erased () erased
                                                                       (coe
                                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                          () erased () erased
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                                                                             (coe v0)))
                                                                       (coe
                                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                          () erased () erased
                                                                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
                                                                                         (coe
                                                                                            v0))))))
                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2238
                                                                                   (coe v0)))))))
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_4022
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3900
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
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3992
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_286
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_254
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v5)))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_range_590
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
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
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                                                                     (coe v0))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                                                                     (coe v0))))
                                                            (coe d_utxo'8320'_3266 (coe v3))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3962
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
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
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                                                                          (coe v0)))
                                                                    (coe v5)
                                                                    (coe
                                                                       du_coinPolicies_3656
                                                                       (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                                                                  (coe v0))
                                                               (coe
                                                                  du_balance_3508 (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                                                                              (coe v0))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                                                                              (coe v0))))
                                                                     (coe
                                                                        d_utxo'8320'_3266 (coe v3))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3962
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
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
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1428
                                                                          (coe v0)))
                                                                    (coe v5)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                                                                          (coe v0))
                                                                       (coe
                                                                          du_balance_3508 (coe v0)
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
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
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                                                                                      (coe v0))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                                                                                      (coe v0))))
                                                                             (coe
                                                                                d_utxo'8320'_3266
                                                                                (coe v3))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3962
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                                                                                   (coe v2))))))))
                                                            (coe du_coinPolicies_3656 (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                         (coe
                                                            MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                            (mulInt
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3970
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                                                                     (coe v2)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_486
                                                                  (coe d_pparams_3262 (coe v3))))
                                                            (mulInt
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                                                                     (coe v0))
                                                                  (coe
                                                                     du_balance_3508 (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                                                                                 (coe v0))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                                                                                 (coe v0))))
                                                                        (coe
                                                                           d_utxo'8320'_3266
                                                                           (coe v3))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3962
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                                                                              (coe v2))))))
                                                               (coe (100 :: Integer))))
                                                         (coe
                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                            (coe
                                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1266
                                                                  (coe
                                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                     () erased () erased
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                                                                        (coe v0))
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3962
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
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
                                                   MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1240
                                                      (coe
                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                         MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                         erased
                                                         MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                         erased
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1436
                                                            (coe v0))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1434
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_592)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3962
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                                                            (coe v2))))
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_426
                                                      (coe d_pparams_3262 (coe v3))))
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
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                                                                 (coe v0))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2770
                                                                    (coe v0))
                                                                 (mulInt
                                                                    (coe
                                                                       addInt (coe (160 :: Integer))
                                                                       (coe
                                                                          du_utxoEntrySize_3240
                                                                          (coe v0)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe v5))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_462
                                                                       (coe
                                                                          d_pparams_3262
                                                                          (coe v3)))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4732
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v5)))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                         (coe
                                                            MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4482
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4714)
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
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3284
                                                                    v1
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4732
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                          (coe v5))))
                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_424
                                                                    (coe d_pparams_3262 (coe v3)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                            (coe
                                                               MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4482
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4714)
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
                                                               MAlonzo.Code.Class.IsSet.du_range_590
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4482
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4714)
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
                                                                          MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                                                                             (coe v0)))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_258
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe v5)))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                                                                             (coe v0)))))
                                                               (coe
                                                                  MAlonzo.Code.Class.IsSet.du_range_590
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (coe
                                                                     MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4482
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4714)
                                                                     v2)))
                                                            (coe
                                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                               (coe
                                                                  MAlonzo.Code.Prelude.du_'126''63'_48
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3984
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                                                                        (coe v2)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                                                                           (coe v0))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1426
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Prelude.du_'126''63'_48
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3986
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3898
                                                                        (coe v2)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe d_treasury_3264 (coe v3)))
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))))))
